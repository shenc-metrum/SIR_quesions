Sys.setenv("R_TESTS" = "")
library(testthat)
library(templ)
test_check("templ", reporter="summary")

