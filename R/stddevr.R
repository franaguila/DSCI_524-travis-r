#' Gets the standard deviation of values in x.
#'
#' @param x: a numeric vector
#' @return a number: the standard deviation of x
#' @export
#' @examples
#' library(gapminder)
#' standard_deviation(gapminder$lifeExp)

standard_deviation <- function(x) {
  n <- length(x)
  mean = sum(x) / n
  ssq <- sum((x-mean)^2)
  stddev = sqrt(ssq/n)
  return(stddev)
}
