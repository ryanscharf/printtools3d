#' @title printtools3d
#' @description Calculate Z steps for leadscrew systems.
#' @name zsteps
#' @param s The number of steps per revolution of your motor.
#' @param m Your driver's microstep setting.
#' @param t The pitch of your lead screw.
#' @examples esteps(200, 16, .8)

zsteps <- function(s, m, t)
{
  (s * m) / t
}