#' @title printtools3d
#' @description Calculate proper steps for X and Y axes in steps/mm.
#' @name xysteps
#' @param s The number of steps per revolution of your motor.
#' @param m Your driver's microstep setting.
#' @param p The angle of your belt pitch in steps/revolution (can be found with 360 / step angle in degrees).
#' @param t The number of teeth on your pulley.
#' @examples 
#' xysteps(200, 16, 2, 20)

xysteps <- function(s, m, p, t)
{
  (s * m)/(p * t)
}