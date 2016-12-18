library(testthat)
source("../R/stddevr.R")

context("Testing the standard deviation function")

test_that('the standard deviation function produces the right values', {
  expect_equal(standard_deviation(c(1,2)), 0.5)
  expect_equal(standard_deviation(23), 0)
  expect_equal(standard_deviation(c(1,2,3,4,5)), 1.414214, tolerance = 1e-0001)
  expect_equal(standard_deviation(c(21,65,46,90)), 25.30316, tolerance = 1e-0001)
  expect_equal(standard_deviation(c(198,0,67,883,6)), 333.7888, tolerance = 1e-0001)
})

test_that('other erroneous cases', {
  expect_error(standard_deviation(c("hi", "there", 23)))
  expect_error(standard_deviation("this should not work"))
  expect_error(standard_deviation())
})
