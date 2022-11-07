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

## ----set up and define cleanup, include = FALSE-------------------------------
MODEL_DIR <- system.file("model", "nonmem", "basic", package = "bbr")

# set bbi execution path
if (Sys.which("bbi") == "") {
  options('bbr.bbi_exe_path' = read_bbi_path())
}

# delete old files
cleanup <- function() {
  if (fs::file_exists(file.path(MODEL_DIR, "1.yaml"))) fs::file_delete(file.path(MODEL_DIR, "1.yaml"))
  if (fs::file_exists(file.path(MODEL_DIR, "bbi.yaml"))) fs::file_delete(file.path(MODEL_DIR, "bbi.yaml"))
  
  mods_to_kill <- purrr::map_chr(seq(2,6), ~ file.path(MODEL_DIR, .x))
  for (.m in mods_to_kill) {
    if (fs::file_exists(paste0(.m, ".yaml"))) fs::file_delete(paste0(.m, ".yaml"))
    if (fs::file_exists(paste0(.m, ".ctl"))) fs::file_delete(paste0(.m, ".ctl"))
    if (fs::dir_exists(.m)) fs::dir_delete(.m)
  }
}
cleanup()

## ----fake model dir, eval = FALSE---------------------------------------------
#  MODEL_DIR <- "../nonmem"

## ----first model--------------------------------------------------------------
mod1 <- new_model(file.path(MODEL_DIR, 1))

## ----copy_model 2-------------------------------------------------------------
mod2 <- copy_model_from(.parent_mod = mod1, .new_model = 2)

get_based_on(mod2)

## -----------------------------------------------------------------------------
mod1 <- add_tags(mod1, c("the same tag", "an old tag"))
mod2 <- add_tags(mod2, c("the same tag", "a new tag"))
tags_diff(mod2)

## ---- results = "asis"--------------------------------------------------------
model_diff(mod2)

## ----big copy-----------------------------------------------------------------
# ...submit mod2...look at diagnostics...decide on changes for next iteration...

mod3 <- copy_model_from(mod2, 3)

# ...submit mod3...look at diagnostics...decide on changes for next iteration...

mod4 <- copy_model_from(mod3, 4)

# ...submit mod4...look at diagnostics...decide to go back to mod2 as basis for next iteration...

mod5 <- copy_model_from(mod2, 5)

# ...submit mod5...look at diagnostics...decide on changes for next iteration...

mod6 <- copy_model_from(mod5, 6)

# ...submit mod6...look at diagnostics...decide you're done!

## ----final tag----------------------------------------------------------------
mod6 <- mod6 %>% add_description("Final model")

## ----mod object demo 1--------------------------------------------------------
mod6 %>% get_based_on()

## ----mod object demo 2--------------------------------------------------------
parent_mod <- mod6 %>% get_based_on() %>% read_model()
str(parent_mod)

## ----mod object demo 3--------------------------------------------------------
mod6 %>% get_model_ancestry()

## ----run_log------------------------------------------------------------------
log_df <- run_log(MODEL_DIR)
log_df

## ----filtering----------------------------------------------------------------
final_model_path <- 
  log_df %>% 
  filter(description == "Final model") %>%
  pull(absolute_model_path)

final_model_path

## ----filter to ancestry 1-----------------------------------------------------
log_df %>% 
  filter(absolute_model_path %in% get_model_ancestry(final_model_path)) %>%
  collapse_to_string(based_on) %>% # collapses list column for easier printing
  select(run, based_on)

## -----------------------------------------------------------------------------
res <- check_up_to_date(mod1)
print(res)

## ----add_config fake prep, include=FALSE--------------------------------------
# read in original json (which was actually fake a.k.a. copied from somewhere else)
orig_json <- jsonlite::fromJSON(file.path(MODEL_DIR, "1", "bbi_config.json"))

# fix data path (just in case)
orig_json$data_path <- stringr::str_replace(orig_json$data_path, "/data/", "/extdata/")

# copying the outputs from the original run 
# and setting model md5 to match control stream (remember this "original" is fake)
for (i in seq_len(6)) {
  out_dir <- file.path(MODEL_DIR, i)
  if (!fs::dir_exists(out_dir)) fs::dir_create(out_dir)
  new_json <- orig_json
  if (!(i %in% c(3,4))) {
    new_json$model_md5 <- tools::md5sum(ctl_ext(out_dir))  
  }
  readr::write_file(jsonlite::toJSON(new_json), file.path(out_dir, "bbi_config.json"))
}

## ----add_config---------------------------------------------------------------
log_df <- log_df %>% add_config()
log_df %>% select(run, model_has_changed, data_has_changed)

## ----filter to ancestry 2-----------------------------------------------------
final_model_family <- bind_rows(
  log_df %>% 
    filter(absolute_model_path %in% get_model_ancestry(final_model_path)), # the ancestors of the final model
  log_df %>% 
    filter(description == "Final model") # the final model itself
)

final_model_family %>% 
  collapse_to_string(based_on) %>%
  select(run, based_on, description, model_has_changed, data_has_changed)

## ----cleanup bottom, include=FALSE--------------------------------------------
# delete old files
cleanup()

