#' @title esteps
#' @description Calculate proper steps for your E motor in steps/mm.
#' @name esteps
#' @param s The number of steps per revolution of your motor.
#' @param m Your driver's microstep setting.
#' @param bt The number of teeth on your big gear.
#' @param st The number of teeth onyour small gear.
#' @param d The diameter of your hobbed bolt.
#' @examples 
#' esteps(200, 16, 39, 11, 7)
 

esteps <- function(s, m, bt, st, d)
{
  (s * m) * (bt / st) / (d * pi)
}