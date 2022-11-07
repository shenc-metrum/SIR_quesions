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
library(tidyselect)

## ----configure bbi, include = FALSE-------------------------------------------
# set bbi execution path
if (Sys.which("bbi") == "") {
  options('bbr.bbi_exe_path' = read_bbi_path())
}

## ----model summary single-----------------------------------------------------
MODEL_DIR <- system.file("model", "nonmem", "complex", package = "bbr")

sum1 <- 
  read_model(file.path(MODEL_DIR, "iovmm")) %>%
  model_summary()

names(sum1)

## ----run details single-------------------------------------------------------
str(sum1$run_details)

## ----fake summary_log for names-----------------------------------------------
sum_df <- summary_log(MODEL_DIR)
names(sum_df)

## ----real summary_log, include = FALSE----------------------------------------
# we're using test data that requires a fail flag, but this is not the focus of this vignette so we hide it.
sum_df <- summary_log(MODEL_DIR, .fail_flags = list(ext_file = "1001.1.TXT"))

## ----details columns----------------------------------------------------------
sum_df %>% 
  collapse_to_string(estimation_method) %>%
  select(
    run,
    ofv, 
    param_count, 
    estimation_method, 
    problem_text, 
    number_of_subjects, 
    number_of_obs, 
    condition_number
  )

## ----heuristics columns fake where, eval=FALSE--------------------------------
#  sum_df %>% select(run, where(is.logical), -needed_fail_flags)

## ----heuristics columns real where, echo=FALSE--------------------------------
# tidyselect::where() was only added in May 2020 so, in order to avoid having to bump our "oldest supported"
# for the sake of vignette, we just do it the ugly way under-the-hood.
lgl_vars <- purrr::map_lgl(sum_df, is.logical)
sum_df %>% select(c("run", names(lgl_vars)[which(lgl_vars)]))

## ----add summary--------------------------------------------------------------
# contrived example: in real life this would be filtering on tags, based_on, etc.
log_df <- run_log(MODEL_DIR)
log_df <- log_df[2:3, ]

# add summary columns
log_df <- log_df %>% add_summary()

log_df %>% select(run, tags, ofv, param_count, any_heuristics)

