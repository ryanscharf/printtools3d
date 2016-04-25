#' @title printtools3d
#' @name xyztogrid
#' @param data The data
#' @param x The X values
#' @param y The Y values
#' @param z The Z values

devtools::use_package("reshape2", "Imports")

xyztogrid <-
  function(data, x, y, z)
  {
    m <- reshape2::dcast(data, x~y, value.var = "z")
}