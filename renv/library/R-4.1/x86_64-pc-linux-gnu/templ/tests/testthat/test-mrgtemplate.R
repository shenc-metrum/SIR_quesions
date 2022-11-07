library(testthat)
library(rmarkdown)

context("test-mrgtemplate")

test_that("create mrgtemplate dir", {
  x <- mrgtemplate()
  expect_true(dir.exists(x))
  files <- c("mrglogo2.pdf", "header.tex", "mrgtemplate.tex", 
             "_output.yml")
  files <- sapply(files, function(y) file.path(x,y))
  test <- file.exists(files)
  expect_true(all(test))
})

