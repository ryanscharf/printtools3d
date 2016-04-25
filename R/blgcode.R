#' @title printtools3d
#' @description Generate GCODE that will test the overall flatness of your print bed.
#' @name blgcode
#' @param x The size of your X axis.
#' @param y The size of your Y axis.
#' @examples blgcode(150,150)

blgcode <- function(x,y)
{
  a = x
  b = y
  x = x/ 25
  y = y / 25
  f = a - 25 
  d = b - 25 

  sink("GCODE.txt")
  cat("Your bed is ", a, "mm x", b, "mm. Run this GCODE to get measurements on how flat your printbed is.\nYou will have to copy the results from your printer's output and then organize the data into a matrix in order to make a surface graph. \n\nG28\n")
  
  for(i in 0:(x))
  {
      for(u in 0:(y))
      {
        cat("G0 X",i * 25," Y",u*25, "\nG30\n", sep="")
      }#for u
  }#for i
}#function

