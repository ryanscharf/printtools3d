#' @title xyztogrid
#' @name xyztogrid
#' @description Converts XYZ columns to a grid matrix
#' @param x The X values
#' @param y The Y values
#' @param z The Z values
#' @import reshape2
#' @examples 
#' xyztogrid()
#' @export
#devtools::use_package("reshape2", "imports")

xyztogrid <- function()
  {
    m <<- reshape2::acast(bed, X~Y, value.var = "Z")
}