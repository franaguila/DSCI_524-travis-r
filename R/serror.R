#' Calculate the Standard Error
#
#' @param x a numeric vector
#' @return the standard error of all the elements of the vector
#' @export
#'
#' @examples
#' standard_error(c(1,2,3,4,5))

standard_error <- function(x) {
  return(standard_deviation(x)/sqrt(length(x)))
}
