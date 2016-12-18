#' Calculate the Standard Error
#
#' @param x: a numeric vector
#' @return a number (the standard error of all the elements of the vector)
#' @export
#'
#' @examples
#' standard_error(seq(1,100,2))

standard_error <- function(x) {
  return(standard_deviation(x)/sqrt(length(x)))
}
