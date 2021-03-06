#' Bind two factors
#'
#' Create a new factor from two exisiting factors, where the new factor's levels
#' are the union of the levels of the input factors.  See example of fac and fac2
#' that are automatically loaded with the package.
#'
#' @param fac factor
#' @param fac2 factor
#'
#' @return factor
#' @export
#'
#' @examples
#' fac <- factor(c("is", "the", "function"))
#' fac2 <- factor("working")
#' fbind(fac, fac2)
fbind <- function(fac, fac2) {
  require(magrittr, "%>%")
  c(as.character(fac), as.character(fac2)) %>% factor()
}
