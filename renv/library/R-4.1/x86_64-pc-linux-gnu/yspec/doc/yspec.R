## ----"library"----------------------------------------------------------------
library(yspec)

## ----"specfile", comment = " "------------------------------------------------
specfile <- ys_help$file()

cat(readLines(specfile)[1:29], sep = "\n")

## ----"load_specfile", comment = " "-------------------------------------------
spec <- ys_load(specfile)

spec

## ----"column", comment = " "--------------------------------------------------
spec$WT

## ----"column_summary", comment = ' ', out.width = 120-------------------------
summary(spec, WT, DV, EGFR)

## -----------------------------------------------------------------------------
data <- ys_help$data()

ys_check(data, spec)

## ----"render_spec", results = "hide", message = FALSE, warning = FALSE--------
ys_document(spec, stem = "working_document")

## -----------------------------------------------------------------------------
pdspec <- load_spec_ex("DEM104101F_PKPD.yml")

## -----------------------------------------------------------------------------
head(spec)

head(pdspec)

## -----------------------------------------------------------------------------
proj <- ys_project(spec,pdspec)

proj

## ----"render_define", results = "hide", message = FALSE, warning = FALSE------
ys_document(
  proj, 
  stem = "project_document", 
  build_dir = definetemplate(),
  author = "Michelle Johnson", 
  title = "Analysis data specification"
)

## ----"render_fda", results = "hide", message = FALSE, warning = FALSE---------
ys_document(
  proj, 
  type = "regulatory",
  stem = "fda_document", 
  build_dir = definetemplate(),
  author = "Michelle Johnson", 
  title = "Analysis data specification"
)

