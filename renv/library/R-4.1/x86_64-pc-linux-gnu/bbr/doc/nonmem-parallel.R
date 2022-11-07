## ----setup, include=FALSE-----------------------------------------------------
knitr::opts_chunk$set(
  echo = TRUE,
  eval = FALSE
)

## -----------------------------------------------------------------------------
#  library(bbr)
#  
#  MODEL_DIR <- system.file("model", "nonmem" , "pk-parallel", package = "bbr")

## ---- include=F---------------------------------------------------------------
#  # setup
#  library(fs)
#  ORIG_MODELS <- c(100, 200)
#  COPIED_MODELS <- c(300, 400)
#  
#  # clear old bbi.yaml
#  if (file_exists(file.path(MODEL_DIR, "bbi.yaml"))) file_delete(file.path(MODEL_DIR, "bbi.yaml"))
#  
#  # clear output dirs
#  walk(c(ORIG_MODELS, COPIED_MODELS), ~{
#    if (dir_exists(file.path(MODEL_DIR, .x))) dir_delete(file.path(MODEL_DIR, .x))
#  
#      for (.n in c(8, 16, 24)) {
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
#  mod <- read_model(file.path(MODEL_DIR, 100))
#  submit_model(
#    mod,
#    .mode = "local",
#    .bbi_args = list(parallel = TRUE, threads = 4) # not needed if set in bbi.yaml
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
#  #' Takes a model object and runs it with various threads values
#  #'
#  #' @param .mod bbi_model object to copy/test
#  #' @param thread_opts Integer vector of threads values to test
#  #' @param .mode Passed through to bbr::submit_models(.mode)
#  #'
#  #' @return A list of the model objects for the submitted models.
#  test_threads <- function(.mod, threads_opts, .mode = "sge") {
#    mods <- map(threads_opts, ~ {
#      .m <- copy_model_from(
#        .mod,
#        paste0(get_model_id(.mod), "_", .x, "threads")
#      ) %>%
#        add_bbi_args(list(parallel = TRUE, threads = .x))
#    })
#  
#    submit_models(mods, .mode = .mode, .wait = FALSE)
#  
#    mods
#  }
#  
#  # running it
#  mod <- read_model(file.path(MODEL_DIR, 200)) # this should be the copy with capped iterations
#  mods <- test_threads(mod, c(8, 16, 24))

## -----------------------------------------------------------------------------
#  #' Check estimation time for models run with various threads values
#  #'
#  #' @param mods list of bbi model objects created by `test_threads()`
#  #'
#  #' @return A tibble with columns `threads` (number of threads) and `time`
#  #'   (elapsed estimation time in seconds for test models).
#  check_threads <- function(mods) {
#    purrr::map_dfr(mods, ~ {
#      s <- model_summary(.x)
#      threads <- as.numeric(stringr::str_extract(s$absolute_model_path, "\\d+(?=threads$)"))
#      tibble::tibble(threads = threads, time = s$run_details$estimation_time)
#    })
#  }
#  
#  check_threads(mods)

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
#    for (.n in c(8, 16, 24)) {
#      if (file_exists(file.path(MODEL_DIR, paste0(.x, "_", .n, "threads.ctl")))) file_delete(file.path(MODEL_DIR, paste0(.x, "_", .n, "threads.ctl")))
#      if (file_exists(file.path(MODEL_DIR, paste0(.x, "_", .n, "threads.yaml")))) file_delete(file.path(MODEL_DIR, paste0(.x, "_", .n, "threads.yaml")))
#      if (dir_exists(file.path(MODEL_DIR, paste0(.x, "_", .n, "threads")))) dir_delete(file.path(MODEL_DIR, paste0(.x, "_", .n, "threads")))
#    }
#  
#  })
#  

