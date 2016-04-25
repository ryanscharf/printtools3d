#' @title printtools3d
#' @description Refine your steps for your E motor in steps/mm.  Mark your filament 150mm above your extruder, heat up your extruder, then extrude 100mm of filament with the GCODE G1 E100.  Measure the distance between your extruder and your mark and use that as your d value.
#' @name resteps
#' @param o The original setting for your E steps.
#' @param d The diameter of your hobbed bolt.
#' @examples resteps(82, 30)
 
resteps <- function(o, d)
{
  o * (100 / (150 - d))
}