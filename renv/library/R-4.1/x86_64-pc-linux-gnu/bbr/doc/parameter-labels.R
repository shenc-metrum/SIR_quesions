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
library(readr)

## ----load data and configure bbi, include = FALSE-----------------------------
source("../tests/testthat/setup-param-labels-ref.R")
REF_OMEGA <- PARAM_BLOCK_REF$PEX_BLOCK32S$ctl

# set bbi execution path
if (Sys.which("bbi") == "") {
  options('bbr.bbi_exe_path' = read_bbi_path())
}

## ----first model--------------------------------------------------------------
MODEL_DIR <- system.file("test-refs", "param-labels", "example-model", package = "bbr")

mod1 <- read_model(file.path(MODEL_DIR, "510"))
class(mod1)

## ----read ctl 1---------------------------------------------------------------
mod1 %>% 
  get_model_path() %>%                          # get control stream file path
  read_lines(skip = 15, n_max = 18) %>%  # read in only parameter section
  paste(collapse = "\n") %>%
  cat()

## ----summary 1----------------------------------------------------------------
label_df <- mod1 %>% 
  param_labels() %>% 
  apply_indices(.omega = block(2))
label_df

## ----model_summary------------------------------------------------------------
param_df <- mod1 %>% 
  model_summary() %>% 
  param_estimates()
param_df

## ----param_estimates----------------------------------------------------------
report_df <- inner_join(
  label_df %>% select(-param_type),
  param_df %>% select(parameter_names, estimate, stderr),
  by = "parameter_names"
)
report_df

## ----block demo---------------------------------------------------------------
cat(paste("block(1): ", paste(block(1), collapse = ", "), "\n"))
cat(paste("block(2): ", paste(block(2), collapse = ", "), "\n"))
cat(paste("block(3): ", paste(block(3), collapse = ", "), "\n"))
cat(paste("block(4): ", paste(block(4), collapse = ", "), "\n"))

## ----ref omega----------------------------------------------------------------
cat(REF_OMEGA)

## ----parse ref----------------------------------------------------------------
REF_OMEGA %>%
  param_labels() %>%
  apply_indices(
      .omega = c(block(3), block(2), block(1), block(1))
    )

