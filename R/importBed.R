#' @title printtools3d
#' @description imports dirtydata.txt bed information from your default directory
#' @name importBed
#' @examples
#' importBed()
#' @import stats
devtools::use_package("stats", "imports")

importBed <- function(){
bed <<- read.csv(file = "dirtydata.txt", header = FALSE, sep=":", colClasses=c("NULL", "NULL", NA, NA, NA));
bed <<- bed[!(is.na(bed$V3) | bed$V3==""), ];
bed <<- bed[!(is.na(bed$V4) | bed$V4==""), ];
bed <<- bed[!(is.na(bed$V5) | bed$V5==""), ];
colnames(bed) <<- c("X", "Y", "Z");
X <<- extract_numeric(bed$X);
Y <<- extract_numeric(bed$Y);
Z <<- extract_numeric(bed$Z);
bedtable = data.frame(X, Y, Z);
bed <<- bedtable[complete.cases(bedtable), ]
}