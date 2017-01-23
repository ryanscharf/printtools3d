#' @title importBed
#' @description imports dirtydata.txt bed information from your default directory
#' @name importBed
#' @examples
#' importBed()
#' @import stats tidyr
#' @export
#devtools::use_package("stats", "imports")
#devtools::use_package("tidyr", "imports")

importBed <- function(){
bed <<- read.csv(file = "dirtydata.txt", header = FALSE, sep=":",
  colClasses=c("NULL", "NULL", NA, NA, NA))
bed <<- bed[!(is.na(bed$V3) | bed$V3==""), ]
bed <<- bed[!(is.na(bed$V4) | bed$V4==""), ]
bed <<- bed[!(is.na(bed$V5) | bed$V5==""), ]
colnames(bed) <<- c("X", "Y", "Z");
X <<- readr::parse_number(bed$X, na = c("", "NA"))
Y <<- readr::parse_number(bed$Y, na = c("", "NA"))
Z <<- readr::parse_number(bed$Z)
  #you can ignore the warnings
bedtable = data.frame(X, Y, Z)
bed <<- bedtable[complete.cases(bedtable), ]
}
