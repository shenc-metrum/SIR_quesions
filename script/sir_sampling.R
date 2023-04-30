
# library -----------------------------------------------------------------

library(tidyverse)
library(bbr)
library(here)
library(MASS)
library(whisker)
library(mrgmisc)
library(glue)
library(mvtnorm)
library(data.table)
library(parallel)
library(stringfish)

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

# sample from mvn dist ----------------------------------------------------

m <- 500

withr::with_seed(seed = 0720, 
                 sample_param <- mvrnorm(n = m, 
                                         mu = ext_matrix, 
                                         Sigma = cov_matrix) %>% 
                   as.data.frame() %>% 
                   rename_with(.fn = ~str_replace_all(string = colnames(ext_matrix), 
                
                                                                                            pattern = "\\.", replacement = "\\"), 
                               .cols = everything())) # rename colnames of sample with the parameter names in ext files (remove "." in strings)

# compute important ratio -------------------------------------------------

# Add `sir_dir` and create appropriate directories. 
pk_model_dir <- here::here("./model/pk")
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
  
  if (i %% 100 == 0) message(glue("Created {i} sir run scripts"))
  
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
  
  # uncomment this block if rerun sir
  # write_file(new_ctl, file = paste0(mod_path, ".ctl"))
  
  # uncomment this block if rerun sir
  # mod <- new_model(
  #   mod_path,
  #   .description = glue("sir {mod_name}"),
  #   .overwrite = overwrite
  # )

  # comment out this line if run new sir
  mod <- read_model(mod_path)
  
  mod
}

# generate SIR NONMEM model files
models <- map(
  .x = 1:nrow(sample_param), 
  .f = make_sir_run, 
  template = template_ctl, 
  sample = sample_param, 
  sir_dir = sir_dir, 
  overwrite = TRUE
)

# uncomment this block if rerun sir #####################
# submit run (non-positive definite issues noticed)
# test submission 

# testrun <- submit_model(
#   models[[1]],
#   .config_path = paste0(pk_model_dir, "/bbi.yaml"),
#   .mode = "local",
#   .wait = FALSE
# )

# # submit all
# out <- submit_models(
#   models,
#   .config_path = paste0(pk_model_dir, "/bbi.yaml"),
#   .bbi_args = list(overwrite = TRUE, threads = 8),
# )

############################################################

# extract SIR sample params and associated ofvs
system.time({
  dir <- list.files(
    here("model/pk/sir"), 
    pattern = "ext", 
    full.names = TRUE, 
    recursive = TRUE
  )
  
  read <- function(x) {fread(x, skip = 1, nThread = 2)[ITERATION==-1e9]}
  
  sample_ofvs <- rbindlist(mclapply(dir, read, mc.cores = 2)) 
})

# formatting 
sample_ofvs <- sample_ofvs %>%
  rename_with(.fn = ~str_replace_all(string = colnames(sample_ofvs),
                                     pattern = "\\.", replacement = "\\"),
              .cols = everything()) %>% 
  dplyr::select(-ITERATION)

# compute importance ratios -----------------------------------------------

# compute pdf of each sampled parameter vector
sample <- sample_ofvs %>% mutate(pdf = dmvnorm(as.matrix(sample_ofvs %>% 
                                                      dplyr::select(-OBJ)), 
                                          mean = ext_matrix, 
                                          sigma = cov_matrix)) 

# extract final model ofv and and calculate its pdf
final_mod <- read_model(.path = file.path("./model/pk", "106"))
final_mod_sum <- model_summary(final_mod)

sample <-
  sample %>%
  mutate(final_ofv = final_mod_sum$ofv[[1]]$ofv_no_constant,
         final_pdf = dmvnorm(ext_matrix, 
                             mean = ext_matrix, 
                             sigma = cov_matrix))

# compute important ratio (WEIGHT)
# reference: Dosne et al., JPKPD 2016 (doi: 10.1007/s10928-016-9487-8)
sir_sample <-
  sample %>%
  mutate(dofv = OBJ - final_ofv,         # compute delta OFV 
         relpdf = pdf/final_pdf) %>%     # relative pdf 
  mutate(dofv_var = exp(-0.5*dofv)) %>%  # transform delta OFV from -2LL to L
  mutate(WEIGHT = dofv_var/relpdf) %>%   # compute importance ratio
  dplyr::select(-pdf, -final_ofv, -final_pdf, -dofv, -relpdf, -dofv_var)

# output `sample_param` and `ofvs`   --------------------------------------

# create sir output folder
sir_output_dir <- here::here("data","sir_output")
if(!dir.exists(sir_output_dir)) dir.create(sir_output_dir)

write.csv(sir_sample, 
          file.path(sir_output_dir, "sir-sample-106.csv"), 
          row.names = FALSE)

sessionInfo()

