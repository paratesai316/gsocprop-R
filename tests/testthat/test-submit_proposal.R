test_that("submit_proposal returns correct logical value based on date", {
  # We know the deadline is March 31st of the current year
  current_year <- format(Sys.Date(), "%Y")
  deadline <- as.Date(paste0(current_year, "-03-31"))

  # The function should return TRUE if today is before or on the deadline
  expected_result <- Sys.Date() <= deadline

  expect_equal(submit_proposal(), expected_result)
})

test_that("deadline message calculates correctly", {
  # Test the hidden helper function
  message <- GSOC:::get_deadline_message()
  expect_type(message, "character")
  expect_true(nchar(message) > 0)
})
