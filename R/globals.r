# Define the global deadline (Medium Test)
gsoc_deadline <- as.Date(paste0(format(Sys.Date(), "%Y"), "-03-31"))

# Helper to fetch the raw date string at install time (Hard Test)
get_deadline_date <- function() {
  as.character(gsoc_deadline)
}

# Helper to calculate the time remaining at render time (Hard Test)
get_deadline_message <- function() {
  days_left <- as.integer(gsoc_deadline - Sys.Date())
  
  if (days_left > 0) {
    return(paste0("The deadline is in ", days_left, " days."))
  } else if (days_left == 0) {
    return("The deadline is today!")
  } else {
    return("The deadline has passed, try next year!")
  }
}