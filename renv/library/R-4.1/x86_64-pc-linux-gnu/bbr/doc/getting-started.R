## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, include=FALSE-----------------------------------------------------
# NOTE: if running chunks interactively we need to load the package first
#   because renv isolation prevents us from finding an bbr installation
if (interactive()) {
  devtools::load_all()
}

## ----load packages, results = 'hide', message=FALSE, warning=FALSE------------
library(bbr)
library(dplyr)
library(purrr)

## ----set paths and define cleanup, include = FALSE----------------------------
options(
  'bbr.bbi_exe_path' = read_bbi_path(),
  'bbr.verbose' = FALSE
)
MODEL_DIR <- system.file("model", "nonmem", "basic", package = "bbr")

# delete old files
cleanup <- function() {
  if (fs::file_exists(file.path(MODEL_DIR, "1.yaml"))) fs::file_delete(file.path(MODEL_DIR, "1.yaml"))
  if (fs::file_exists(file.path(MODEL_DIR, "2.yaml"))) fs::file_delete(file.path(MODEL_DIR, "2.yaml"))
  if (fs::file_exists(file.path(MODEL_DIR, "3.yaml"))) fs::file_delete(file.path(MODEL_DIR, "3.yaml"))
  if (fs::file_exists(file.path(MODEL_DIR, "2.ctl"))) fs::file_delete(file.path(MODEL_DIR, "2.ctl"))
  if (fs::file_exists(file.path(MODEL_DIR, "3.ctl"))) fs::file_delete(file.path(MODEL_DIR, "3.ctl"))
  if (fs::dir_exists(file.path(MODEL_DIR, "2"))) fs::dir_delete(file.path(MODEL_DIR, "2"))
  if (fs::dir_exists(file.path(MODEL_DIR, "3"))) fs::dir_delete(file.path(MODEL_DIR, "3"))
  if (fs::file_exists(file.path(MODEL_DIR, "bbi.yaml"))) fs::file_delete(file.path(MODEL_DIR, "bbi.yaml"))
}
cleanup()

## ----bbi_exe_path, eval = FALSE-----------------------------------------------
#  options("bbr.bbi_exe_path" = "/data/apps/bbi")

## ---- eval = FALSE------------------------------------------------------------
#  bbr::use_bbi()

## ----configure bbi fake, eval = FALSE-----------------------------------------
#  MODEL_DIR <- "../model/nonmem/basic"  # this should be relative to your working directory
#  
#  bbi_init(.dir = MODEL_DIR,            # the directory to create the bbi.yaml in
#           .nonmem_dir = "/opt/NONMEM", # location of NONMEM installation
#           .nonmem_version = "nm74gf")  # default NONMEM version to use

## ----first model--------------------------------------------------------------
mod1 <- new_model(file.path(MODEL_DIR, 1))

## ----submit_model_fake, eval = FALSE------------------------------------------
#  mod1 %>% submit_model()

## ----print_bbi_args-----------------------------------------------------------
print_bbi_args()

## ----overwrite true, eval = FALSE---------------------------------------------
#  mod1 %>% submit_model(.bbi_args = list(overwrite = TRUE))

## ----model_summary------------------------------------------------------------
sum1 <- mod1 %>% model_summary()
print(names(sum1))

## ----param_estimates----------------------------------------------------------
param_df1 <- sum1 %>% param_estimates()
param_df1

## ----nm_join()----------------------------------------------------------------
join_df <- nm_join(mod1) 
join_df %>% 
  select(ID, TIME, DV, CL, V, NPDE, CWRES)

## ----read_model fake, eval=FALSE----------------------------------------------
#  mod1 <- read_model(file.path(MODEL_DIR, 1))

## ----copy_model 2-------------------------------------------------------------
mod2 <- copy_model_from(mod1) %>%
  update_model_id()

## ----submit 2, eval = FALSE---------------------------------------------------
#  # manually edit control stream, then...
#  model_diff(mod2)
#  mod2 %>% submit_model()
#  mod2 %>% model_summary()

## ----add_tags 2---------------------------------------------------------------
mod1 <- mod1 %>% add_tags("orig acop model")
mod2 <- mod2 %>% add_tags("2 compartment")

## -----------------------------------------------------------------------------
mod2 <- mod2 %>% 
  add_notes("2 compartment model more appropriate than 1 compartment")

## ----copy_model 3-------------------------------------------------------------
mod3 <- copy_model_from(mod2, .inherit_tags = TRUE)

## ----submit 3, eval = FALSE---------------------------------------------------
#  # manually edit control stream, then...
#  mod3 %>% submit_model()
#  mod3 %>% model_summary()

## ----add_tags 3---------------------------------------------------------------
mod3 <- mod3 %>% 
        add_tags(c("combined RUV", "iiv CL")) %>%
        add_notes("Added combined error structure because it seemed like a good idea")

## ----run_log------------------------------------------------------------------
log_df <- run_log(MODEL_DIR)
log_df

## ----viewing tags new---------------------------------------------------------
log_df %>% 
  collapse_to_string(tags, notes) %>%
  select(run, tags, notes)

## ----filtering----------------------------------------------------------------
log_df %>% 
  filter(map_lgl(tags, ~ "2 compartment" %in% .x)) %>%
  collapse_to_string(tags, notes) %>%
  select(run, tags, notes)

## ----cleanup bottom, include=FALSE--------------------------------------------
# delete old files
cleanup()

