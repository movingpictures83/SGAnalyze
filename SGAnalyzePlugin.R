## ---- echo = FALSE, results = 'hide'---------------------------------------
library(knitr)
opts_chunk$set(error = FALSE)

## ----style, echo = FALSE, results = 'asis'---------------------------------
##BiocStyle::markdown()

## ---- message = FALSE------------------------------------------------------
library(SGSeq)

dyn.load(paste("RPluMA", .Platform$dynlib.ext, sep=""))
source("RPluMA.R")

input <- function(inputfile) {
  parameters <<- read.table(inputfile, as.is=T);
  rownames(parameters) <<- parameters[,1];
    pfix = prefix()
  if (length(pfix) != 0) {
     pfix <<- paste(pfix, "/", sep="")
  }
}

run <- function() {}

output <- function(outputfile) {


## --------------------------------------------------------------------------
si

## --------------------------------------------------------------------------
#path <- system.file("extdata", package = "SGSeq")
si$file_bam <- file.path(paste(pfix, parameters["directory", 2], sep="/"), si$file_bam)

txf_ucsc <- readRDS(paste(pfix, parameters["transcripts", 2], sep="/"))

## ---- message = FALSE------------------------------------------------------
sgfc_ucsc <- analyzeFeatures(si, features = txf_ucsc)
#write.csv(sgfc_ucsc, paste(outputfile, "csv", sep="."))
saveRDS(sgfc_ucsc, paste(outputfile, "rds", sep="."))
}

