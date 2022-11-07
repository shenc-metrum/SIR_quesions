
# library -----------------------------------------------------------------

library(tidyverse)
library(bbr)
library(here)
library(MASS)
library(bbr)
library(whisker)
library(PKPDmisc)
library(glue)
library(mvtnorm)

# read in .ext and .cov ---------------------------------------------------

# read in .ext file (param estimations)
ext <- read.table(file = here::here("model", "pk", "106", "106.ext"), 
                  skip = 1, 
                  header = TRUE) %>% 
  filter(ITERATION == max(ITERATION)) %>% # retain final estimates only
  dplyr::select(-ITERATION, -OBJ)         # remove iteration and obj columns

# read in .cov file (var-cov matrix)
cov <- read.table(file = here::here("model", "pk", "106", "106.cov"), 
                  skip = 1, 
                  header = TRUE) %>% 
  dplyr::select(-NAME)                    # remove param name column

param_names <- names(ext)

ext_matrix <- ext %>% data.matrix()        # convert ext to matrix
cov_matrix <- cov %>% data.matrix()        # convert cov to matrix

inf <- 1.25  # inflation factor

cov_matrix_inf <- cov_matrix*inf   # cov matrix inflated

# sample from mvn dist ----------------------------------------------------

m <- 5000

withr::with_seed(seed = 0720, 
                 sample_param <- mvrnorm(n = m, 
                                        mu = ext_matrix, 
                                        Sigma = cov_matrix_inf) %>% 
                   as.data.frame() %>% 
                   rename_with(.fn = ~str_replace_all(string = colnames(ext_matrix), pattern = "\\.", replacement = "\\"), 
                               .cols = everything())) # rename colnames of sample with the parameter names in ext files (remove "." in strings)

# compute important ratio -------------------------------------------------

# Add `sir_dir` and create appropriate directories. 
pk_model_dir <- "./model/pk"
sir_dir <- file.path(pk_model_dir,"sir")
if(!dir.exists(sir_dir)) dir.create(sir_dir)

#' Create template from original `.ctl` file, 
#' set `MAXEVAL=0` in `$EST`
#' fill in sampled parameters
#' create sir runs in bbr (reference bootstrap generate R script in example proj)

template_ctl <- readLines(file.path(pk_model_dir, "sir-106-template.ctl"))

make_sir_run <- function(i, template, sample, sir_dir, overwrite = FALSE) {
  
  mod_name <- pad_left(i, 3)
  mod_path <- glue("{sir_dir}/{mod_name}")
  
  if (i %% 1000 == 0) message(glue("Created {i} sir run scripts"))
  
  if(file.exists(paste0(mod_path, ".yaml")) && !overwrite) {
    return(read_model(mod_path))
  }
  
  param <- sample %>% as.data.frame() %>% slice(n = i)
  
  param_list <- empty_list <- vector(mode = "list", length = ncol(sample))
  for (i in 1:ncol(sample)){
    param_list[[i]] <- param[,i]
    names(param_list)[[i]] <- names(sample)[i]
  }
  
  new_ctl <- whisker.render(template, param_list)
  
  # uncomment this block if run new sir
  # write_file(new_ctl, file = paste0(mod_path, ".ctl"))
  
  # uncomment this block if run new sir
  # mod <- new_model(
  #   mod_path,
  #   .description = glue("sir {mod_name}"),
  #   .overwrite = overwrite
  # )

  # comment out this line if run new sir
  mod <- read_model(mod_path)
  
  mod
}

models <- map(
  .x = 1:nrow(sample_param), 
  .f = make_sir_run, 
  template = template_ctl, 
  sample = sample_param, 
  sir_dir = sir_dir, 
  overwrite = TRUE
)

# uncomment this block if run new sir #####################
# submit run (non-positive definite issues noticed)
# test submission 

# testrun <- submit_model(
#   models[[1]],
#   .config_path = paste0(pk_model_dir, "/bbi.yaml"),
#   #.bbi_args = list(overwrite = TRUE, threads = 1),
#   .mode = "local",
#   .wait = FALSE
# )

# # submit all
# out <- submit_models(
#   models,
#   .config_path = paste0(pk_model_dir, "/bbi.yaml"),
#   .bbi_args = list(overwrite = TRUE, threads = 1),
#   #.mode = "local",
#   .wait = FALSE
# )
############################################################

# extract ofvs
sums <- model_summaries(models, .bbi_args = list(no_grd_file = TRUE, no_shk_file = TRUE))

# sums <- summary_log(sir_dir)

sample_ofvs <- map(.x = 1:length(sums), 
                   .f = function(i){
                   data.frame(nsim = i) %>% 
                   mutate(ofv = ifelse(is.null(sums[[i]]$bbi_summary$ofv[[1]]$ofv_no_constant), 
                                       NA_real_, 
                                       sums[[i]]$bbi_summary$ofv[[1]]$ofv_no_constant))
                     }) %>% bind_rows()

# # compute pdf of parameter vector
# ofvs <- ofvs %>% mutate(pdf = dmvnorm(as.matrix(sample_param), mean = ext_matrix, sigma = cov_matrix_inf))
# 
# # extract final model ofv and parameter estimate pdf
# final_mod <- read_model(.path = file.path(pk_model_dir, "106"))
# final_mod_sum <- model_summary(final_mod)
# 
# ofvs <- 
#   ofvs %>% 
#   mutate(final_ofv = final_mod_sum$ofv[[1]]$ofv_no_constant, 
#          final_pdf = dmvnorm(ext_matrix, mean = ext_matrix, sigma = cov_matrix_inf))
# 
# # compute dofv, dofv_var, relpdf and important ratio (ir)
# ofvs <- 
#   ofvs %>% 
#   mutate(dofv = ofv - final_ofv, 
#          relpdf = pdf/final_pdf) %>% 
#   mutate(dofv_var = exp(-0.5*dofv)) %>% 
#   mutate(ir = dofv_var/relpdf)

# output `sample_param` and `ofvs`   --------------------------------------

sir_output_dir <- here::here("data","sir")
if(!dir.exists(sir_output_dir)) dir.create(sir_output_dir)

write.csv(sample_ofvs, file.path(sir_output_dir, "sir-106-sample-ofvs.csv"), row.names = FALSE)
write.csv(sample_param, file.path(sir_output_dir, "sir-106-sample-param.csv"), row.names = FALSE)

sessionInfo()

