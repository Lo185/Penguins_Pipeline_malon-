library(testthat)

test_that("clean_penguin_data removes NA values", {
  data <- data.frame(
    bill_length_mm = c(40, NA, 35),
    bill_depth_mm = c(18, 20, NA),
    species = c("Adelie", "Chinstrap", NA)
  )
  clean_data <- clean_penguin_data(data)
  expect_equal(nrow(clean_data), 1)
})
