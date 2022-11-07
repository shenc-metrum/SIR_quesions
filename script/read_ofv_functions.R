

library(here)
library(data.table)
library(parallel)
library(stringfish)

system.time({
  dir <- list.files(
    here("model/rpi_model/sir"), 
    pattern = "ext", 
    full.names = TRUE, recursive = TRUE
  )
  read <- function(x) {
    fread(x, skip = 1, nThread = 2)[ITERATION==-1e9]  
  }
  df <- rbindlist(mclapply(dir, read, mc.cores = 2))
})

#head(df)


# param_estimates_batch() like syntax
system.time({
  dir <- list.files(
    here("model/rpi_model/sir"), 
    pattern = "lst", 
    full.names = TRUE, recursive = TRUE
  )
  read <- function(x) {
    txt <- sf_readLines(x, )
    txt <- txt[sf_grepl(txt, "#OBJV", fixed = TRUE)]
    txt <- strsplit(txt, " +", perl = TRUE)
    data.frame(OFV = as.numeric(txt[[1]][3]), run = basename(x)) 
  }
  df <- rbindlist(mclapply(dir, read, mc.cores = 2))
})
