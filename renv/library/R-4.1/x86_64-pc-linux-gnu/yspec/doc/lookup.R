## ----echo = FALSE-------------------------------------------------------------
code <- '
SETUP__:
  description: PKPD analysis data set
  use_internal_db: true
C: 
AMT:
MDV:
EVID: 
WT:
EGFR:
ALB: !look
ZIP_CODE: 
  values: 55378
'

writeLines(code, file <- file.path(tempdir(), 'spec.yml'))

## ----message=FALSE------------------------------------------------------------
library(yspec)
library(dplyr)

spec <- ys_load(file)

spec

## -----------------------------------------------------------------------------
ys_lookup_source(spec)

## -----------------------------------------------------------------------------
ys_get_lookup(spec) %>% glimpse()

