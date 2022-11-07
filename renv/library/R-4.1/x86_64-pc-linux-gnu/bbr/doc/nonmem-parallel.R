## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(
  echo = TRUE,
  eval = FALSE
)

## -----------------------------------------------------------------------------
#  library(bbr)
#  
#  MODEL_DIR <- system.file("model", "nonmem" , "pk-parallel", package = "bbr")
#  DATA_DIR <- system.file("extdata" , package = "bbr")

## ---- include=F---------------------------------------------------------------
#  # setup
#  library(fs)
#  library(dplyr)
#  library(readr)
#  ORIG_MODELS <- c(200)
#  COPIED_MODELS <- c(300, 400)
#  
#  # clear old bbi.yaml
#  if (file_exists(file.path(MODEL_DIR, "bbi.yaml"))) file_delete(file.path(MODEL_DIR, "bbi.yaml"))
#  
#  bbi_init(
#    .dir = MODEL_DIR,
#    .nonmem_dir = "/opt/NONMEM",
#    .nonmem_version = "nm75"
#  )
#  
#  # clear output dirs
#  walk(c(ORIG_MODELS, COPIED_MODELS), ~{
#    if (dir_exists(file.path(MODEL_DIR, .x))) dir_delete(file.path(MODEL_DIR, .x))
#  
#      for (.n in c(2, 4, 8, 16, 24)) {
#      if (file_exists(file.path(MODEL_DIR, paste0(.x, "_", .n, "threads.ctl")))) file_delete(file.path(MODEL_DIR, paste0(.x, "_", .n, "threads.ctl")))
#      if (file_exists(file.path(MODEL_DIR, paste0(.x, "_", .n, "threads.yaml")))) file_delete(file.path(MODEL_DIR, paste0(.x, "_", .n, "threads.yaml")))
#      if (dir_exists(file.path(MODEL_DIR, paste0(.x, "_", .n, "threads")))) dir_delete(file.path(MODEL_DIR, paste0(.x, "_", .n, "threads")))
#    }
#  })
#  
#  # copy 200 a few times
#  walk(COPIED_MODELS, ~{
#    if (file_exists(file.path(MODEL_DIR, paste0(.x, ".ctl")))) file_delete(file.path(MODEL_DIR, paste0(.x, ".ctl")))
#    if (file_exists(file.path(MODEL_DIR, paste0(.x, ".yaml")))) file_delete(file.path(MODEL_DIR, paste0(.x, ".yaml")))
#    file_copy(file.path(MODEL_DIR, paste0(200, ".ctl")), file.path(MODEL_DIR, paste0(.x, ".ctl")))
#    file_copy(file.path(MODEL_DIR, paste0(200, ".yaml")), file.path(MODEL_DIR, paste0(.x, ".yaml")))
#  })
#  
#  
#  # Generate new dataset with necessary columns (ranges, means, and sds taken from example project)
#  acop_baseline <- read_csv(file.path(DATA_DIR, "acop.csv"))
#  
#  # Create distributions from original data
#  # egfr_range <- c(15.42, 126.07)
#  egfr_dist <- rnorm(n_distinct(acop_baseline$id), mean = 88.67535, sd = 27.42009)
#  egfr_dist <- egfr_dist[egfr_dist > 0]
#  # alb_range <- c(1.28, 5.39)
#  alb_dist <- rnorm(n_distinct(acop_baseline$id), mean = 4.295211, sd = 0.7071837)
#  alb_dist <- alb_dist[alb_dist > 0]
#  # age_range <- c(18.92, 49.53)
#  age_dist <- rnorm(n_distinct(acop_baseline$id), mean = 33.81955, sd = 8.603712)
#  age_dist <- age_dist[age_dist > 0]
#  
#  # Randomly assign sampled values to unique patients
#  acop_adjusted <- acop_baseline %>%
#    group_by(id) %>%
#    mutate(
#      EGFR = sample(egfr_dist, 1),
#      ALB = sample(alb_dist, 1),
#      AGE = sample(age_dist, 1)) %>%
#    ungroup()
#  
#  # First id is missing evid/amt
#  # Also need to change compartment and dosing information
#  missing_row <- acop_adjusted[1,] %>% mutate(dv = 0, evid = 1, amt = 10000, mdv = 1)
#  acop_adjusted <- bind_rows(missing_row, acop_adjusted) %>%
#    mutate(CMT = if_else(evid == 1, 1, 2),
#           amt = if_else(amt == 10000, "5", "."),
#           SEQ = if_else(evid == 1, 0, 1),
#           C = ".") %>%
#    filter(!(time == 0 & evid == 0)) %>%
#    mutate(num = 1:n())
#  
#  names(acop_adjusted) <- toupper(names(acop_adjusted))
#  acop_adjusted <- acop_adjusted %>%
#    relocate("C", "NUM", "ID", "TIME", "SEQ", "CMT", "EVID", "AMT", "DV", "AGE", "WT", "EGFR", "ALB")
#  
#  
#  
#  analysis3_path <- file.path(DATA_DIR, "acop_adjusted.csv")
#  write_csv(acop_adjusted, analysis3_path)

## -----------------------------------------------------------------------------
#  mod <- read_model(file.path(MODEL_DIR, 200))
#  submit_model(
#    mod,
#    .bbi_args = list(parallel = TRUE, threads = 4)
#  )

## -----------------------------------------------------------------------------
#  mod <- add_bbi_args(mod, list(parallel = TRUE, threads = 4))

## -----------------------------------------------------------------------------
#  bbi_init(
#    .dir = MODEL_DIR,
#    .nonmem_dir = "/opt/NONMEM",
#    .nonmem_version = "nm75",
#    .bbi_args = list(
#      parallel = TRUE,
#      threads = 4
#    )
#  )

## -----------------------------------------------------------------------------
#  submit_model(
#    mod,
#    .mode = "local",
#    .bbi_args = list(parallel = TRUE, threads = 4, overwrite = TRUE) # not needed if set in bbi.yaml
#  )

## -----------------------------------------------------------------------------
#  mod <- read_model(file.path(MODEL_DIR, 200))
#  proc <- submit_model(
#    mod,
#    .mode = "local",
#    .wait = FALSE,        # this is what gets you your console back
#    .bbi_args = list(parallel = TRUE, threads = 8) # not needed if set in bbi.yaml
#  )

## -----------------------------------------------------------------------------
#  mod

## -----------------------------------------------------------------------------
#  tail_lst(mod)

## -----------------------------------------------------------------------------
#  tail_output(mod, .head = 0, .tail = 10)

## -----------------------------------------------------------------------------
#  lst_path <- build_path_from_model(mod, ".lst")
#  cat(paste("tail -f", lst_path))

## -----------------------------------------------------------------------------
#  proc$process$is_alive()

## -----------------------------------------------------------------------------
#  system("echo 'sleep 10' | qsub")

## -----------------------------------------------------------------------------
#  mod <- read_model(file.path(MODEL_DIR, 300))
#  proc <- submit_model(
#    mod,
#    .mode = "local",
#    .wait = FALSE        # this is what gets you your console back
#  )

## -----------------------------------------------------------------------------
#  tail_output(mod, .tail = 15)

## -----------------------------------------------------------------------------
#  system("killall nonmem")

## -----------------------------------------------------------------------------
#  proc$process$kill()

## -----------------------------------------------------------------------------
#  submit_model(
#    mod,
#    .bbi_args = list(
#      overwrite = TRUE,
#      parallel = TRUE,
#      threads = 8
#    )
#  )

## -----------------------------------------------------------------------------
#  system("qstat -f")

## -----------------------------------------------------------------------------
#  mods <- map(c(200, 300, 400), ~ read_model(file.path(MODEL_DIR, .x)))
#  
#  submit_models(
#    mods,
#    .bbi_args = list(
#      overwrite = TRUE,
#      parallel = TRUE,
#      threads = 8
#    )
#  )

## -----------------------------------------------------------------------------
#  system("qstat -f")

## -----------------------------------------------------------------------------
#  this_user <- Sys.getenv("USER")
#  system(paste("qdel -u", this_user))

## -----------------------------------------------------------------------------
#  # running it
#  mod <- read_model(file.path(MODEL_DIR, 200))
#  mods_test <- test_threads(mod, .threads = c(2, 4, 8))

## -----------------------------------------------------------------------------
#  system("qstat -f")

## -----------------------------------------------------------------------------
#  check_run_times(mods_test)

## -----------------------------------------------------------------------------
#  delete_models(mods_test)

## ---- include=F---------------------------------------------------------------
#  # cleanup
#  walk(c(ORIG_MODELS, COPIED_MODELS), ~{
#    if (dir_exists(file.path(MODEL_DIR, .x))) dir_delete(file.path(MODEL_DIR, .x))
#  })
#  
#  walk(COPIED_MODELS, ~{
#    if (file_exists(file.path(MODEL_DIR, paste0(.x, ".ctl")))) file_delete(file.path(MODEL_DIR, paste0(.x, ".ctl")))
#    if (file_exists(file.path(MODEL_DIR, paste0(.x, ".yaml")))) file_delete(file.path(MODEL_DIR, paste0(.x, ".yaml")))
#  
#    for (.n in c(2, 4, 8, 16, 24)) {
#      if (file_exists(file.path(MODEL_DIR, paste0(.x, "_", .n, "threads.ctl")))) file_delete(file.path(MODEL_DIR, paste0(.x, "_", .n, "threads.ctl")))
#      if (file_exists(file.path(MODEL_DIR, paste0(.x, "_", .n, "threads.yaml")))) file_delete(file.path(MODEL_DIR, paste0(.x, "_", .n, "threads.yaml")))
#      if (dir_exists(file.path(MODEL_DIR, paste0(.x, "_", .n, "threads")))) dir_delete(file.path(MODEL_DIR, paste0(.x, "_", .n, "threads")))
#    }
#  })
#  
#  if (fs::file_exists(analysis3_path)) fs::file_delete(analysis3_path)
#  
#  # clear old bbi.yaml
#  if (file_exists(file.path(MODEL_DIR, "bbi.yaml"))) file_delete(file.path(MODEL_DIR, "bbi.yaml"))
#  

