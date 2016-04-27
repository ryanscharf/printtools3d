#' @title graphBed
#' @description Generate GCODE that will test the overall flatness of your print bed.
#' @name blgcode
#' @examples 
#' graphBed()
#' @import rgl grDevices
#' @export

#devtools::use_package("rgl", "imports")
#devtools::use_package("grDevices", "imports")

graphBed <- function()
  {
    x <- rownames(m)#seq(0,150, length.out=nrow(m))#(1:nrow(m))
    y <- colnames(m)#seq(0,150, length.out=ncol(m))#(1:ncol(m))
    z <- m
    #zlim <- range(y)
    #zlen <- zlim[2] - zlim[1] + 1

    jet.colors <-
      grDevices::colorRampPalette(c("#00007F", "blue", "#007FFF", "cyan",
                     "#7FFF7F", "yellow", "#FF7F00", "red", "#7F0000"))
    colorzjet <- jet.colors(100)
    rgl::axes3d()
    rgl::surface3d(x, y, z, axes=TRUE, color = colorzjet[ findInterval(z, seq(min(z), max(z), length =100))], back = "lines")
    rgl::title3d(main = NULL,sub= NULL,xlab="width", ylab='depth', zlab = 'height')
    rgl::aspect3d(150,150,100)
    rgl::grid3d(c("z"))
  }