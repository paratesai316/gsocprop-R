#' Submit a GSOC Proposal
#'
#' @description
#' A mock function to ostensibly submit proposals to Google Summer of Code.
#' 
#' The deadline for submissions is: \Sexpr[stage=install, results=text]{GSOC:::get_deadline_date()}.
#' 
#' \Sexpr[stage=render, results=rd]{GSOC:::get_deadline_message()}
#'
#' @return A logical value: \code{TRUE} if run before or on the deadline, 
#' and \code{FALSE} if run after.
#' 
#' @export
#'
#' @examples
#' submit_proposal()
submit_proposal <- function() {
  Sys.Date() <= gsoc_deadline
}