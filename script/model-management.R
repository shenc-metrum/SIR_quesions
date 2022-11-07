# The model-management.R file is intended to be a scratchpad for doing things
# like defining, submitting, tagging, etc. your models. There is no need to keep
# a "record in code" of these activities because they can all be reconstructed
# later via functions like `run_log()`, as demonstrated in `model-summary.Rmd`
#
# The `Model Management Demo` (rendered from the `model-management-demo.Rmd`
# file) shows code for a range of these activities at different stages in the
# modeling process. It exists purely for reference; the intent is _not_ for you
# to replicate the full narrative.
# https://ghe.metrumrg.com/pages/example-projects/bbr-nonmem-poppk-foce/model-management-demo
#
# This script assumes you have already installed and set up bbi. For details
# on getting set up with bbr, see:
# https://metrumresearchgroup.github.io/bbr/articles/getting-started.html#setup


library(bbr)
library(tidyverse)
library(here)

# define model dir and load tags
MODEL_DIR <- here::here("./model/pk")

############################################
# CHECK FOR BBI INSTALLATION AND CONFIG 
############################################

# The code below checks that you have everything configured to begin modeling
# with bbr. This code can be deleted once everything is working correctly.

# To check if you have bbi installed and configured, run `bbi_version()`
bbi_version()
# If this doesn't return a version number, see 
if (getOption("bbr.bbi_exe_path") == "bbi") {
  stop("options('bbr.bbi_exe_path') should be getting set in your .Rprofile. Make sure this is happening before continuing.")
} else {
  use_bbi()
}


# The first time you are modeling in a new directory, you will need to "intialize" bbi.
# The bbi_init() function will create a bbi.yaml, with the default settings, in the 
# specified directory. 
# 
# To check you have initialized bbi, try to read in the `bbi.yaml` file.
file.path(MODEL_DIR, "bbi.yaml") %>% yaml::read_yaml() %>% names()
# If this errors, run `bbi_init()`:

# bbi_init(.dir = MODEL_DIR,            # the directory to create the bbi.yaml in
#          .nonmem_dir = "/opt/NONMEM", # location of NONMEM installation
#          .nonmem_version = "nm74gf")  # default NONMEM version to use

# Note this only needs to be done _once for each folder_ you are modeling in. Once the bbi.yaml exists, 
# you will not need to run `bbi_init()` again unless you want to create another one; for example if you 
# move to modeling in a different directory.
#
# For more details on the `bbi.yaml` file and its usage, see:
# https://metrumresearchgroup.github.io/bbr/articles/getting-started.html#bbi-yaml-configuration-file

# mod107 <- new_model(file.path(MODEL_DIR, "107"))
mod107 <- read_model(file.path(MODEL_DIR, "107"))
.p <- submit_model(mod107, .mode = "local", .wait = FALSE)
.s <- mod107 %>% model_summary()
.s

mod204 <- new_model(file.path(MODEL_DIR, "204"))
mod204 <- read_model(file.path(MODEL_DIR, "204"))
.p <- submit_model(mod204, .mode = "local", .wait = FALSE)

mod210 <- new_model(file.path(MODEL_DIR, "210"))
mod210 <- read_model(file.path(MODEL_DIR, "210"))
.p <- submit_model(mod210, .mode = "local", .wait = FALSE)


