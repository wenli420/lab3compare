#' Euclidean algorithm for greatest‑common‑divisor
#'
#' Compute greatest common divisor of two integers using Euclidean algorithm.
#'
#' @param a numeric scalar, first input integer
#' @param b numeric scalar, second input integer
#' @return numeric scalar, greatest common divisor of a and b
#' @references https://en.wikipedia.org/wiki/Euclidean_algorithm
#' @examples
#' euclidean(123612, 13892347912)
#' euclidean(100,1000)
#' @export
euclidean <- function(a,b){
  stopifnot(
    is.numeric(a), length(a) == 1,
    is.numeric(b), length(b) == 1,
    abs(a - round(a)) < 1e-10,
    abs(b - round(b)) < 1e-10
  )
  while(b != 0){
    temp <- b
    b <- a %% b
    a <- temp
  }
  return(a)
}
