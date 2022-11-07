
test_that("skip", {
  skip_on_cran()
  stop("failure")
})
