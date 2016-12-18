#' Gets the standard deviation of values in x.
#'
#' @param x a numeric vector
#' @return the standard deviation of x
#' @export
#' @examples
#' library(gapminder)
#' standard_deviation(c(1,2,3,4,5))

standard_deviation <- function(x) {
  n <- length(x)
  mean = sum(x) / n
  ssq <- sum((x-mean)^2)
  stddev = sqrt(ssq/n)
  return(stddev)
}
