library(testthat)
library(rmarkdown)

rmds <- templ:::rmd_files()

context("test-templ")

test_that("render pdf document - Rmd", {
  dir <- tempdir()
  file <- file.path(dir, "pdf-rmd.Rmd")
  file.copy(rmds["mrg_rmarkdown"], file, overwrite = TRUE)
  ans <- suppressWarnings(
    rmarkdown::render(
      file, 
      output_dir = tempdir(), 
      quiet = TRUE
    )
  )
  expect_true(file.exists(ans))
})

test_that("render pdf document - R", {
  dir <- tempdir()
  file <- file.path(dir, "pdf-r.R")
  file.copy(rmds["mrg_antimarkdown"], file, overwrite = TRUE)
  ans <- suppressWarnings(
    rmarkdown::render(
      file, 
      output_dir = tempdir(), 
      quiet = TRUE
    )
  )
  expect_true(file.exists(ans))
})

test_that("render notebook", {
  dir <- tempdir()
  file <- file.path(dir, "notebook.Rmd")
  file.copy(rmds["mrg_notebook"], file, overwrite = TRUE)
  ans <- suppressWarnings(
    rmarkdown::render(
      file, 
      output_dir = tempdir(), 
      quiet = TRUE
    )
  )
  expect_true(file.exists(ans))
})

test_that("render beamer slide deck", {
  dir <- tempdir()
  file <- file.path(dir, "beamer.Rmd")
  file.copy(rmds["mrg_beamer"], file, overwrite = TRUE)
  ans <- suppressWarnings(
    rmarkdown::render(
      file, 
      output_dir = tempdir(), 
      quiet = TRUE
    )
  )
  expect_true(file.exists(ans))
})

test_that("knit to", {
  expect_is(knit_to(tempdir()), "function")
  form <- formals(knit_to(tempdir()))
  expect_identical(names(form), c("input", "encoding"))
})
