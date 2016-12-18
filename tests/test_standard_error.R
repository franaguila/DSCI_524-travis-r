library(testthat)

context("Testing the standard error function")

test_that('the standard error function produces the right values', {
  expect_equal(standard_error(c(1,2)), 0.3535534)
  expect_equal(standard_error(50), 0)
  expect_equal(standard_error(c(1,2,3,4,5)), 0.6324555, tolerance = 1e-0001)
  expect_equal(standard_error(c(21,65,46,90)), 12.65158, tolerance = 1e-0001)
  expect_equal(standard_error(c(198,0,67,883,6)), 149.2749, tolerance = 1e-0001)
})

test_that('other erroneous cases', {
  expect_error(standard_error(c("hi", "there", 23)))
  expect_error(standard_error("this should not work"))
  expect_error(standard_error())
})
