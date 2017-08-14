#!/usr/bin/Rscript

## import optparse library
suppressPackageStartupMessages(library("optparse"))

## specify our desired options in a list
## by default OptionParser will add an help option equivalent to
## make_option(c("-h", "--help"), action="store_true", default=FALSE,
## help="Show this help message and exit")
option_list <- list(
   make_option(c("-i", "--inputData"), 
               help="zipped Bruker NMR raw data."),
   make_option(c("-o", "--output"), 
               help="output .h5 file", 
               default = getwd())
)

# get command line options, if help option encountered print help and exit,
# otherwise if options not found on command line then set defaults,
parser <- OptionParser(option_list=option_list)
opt <- parse_args(parser)

#if(!("inputData" %in% names(opt))) {
#  print("no input argument given!")
#  print_help(parser)
#  q(status = 1,save = "no")
#}

cat(opt$inputData)
cat("\n")
cat(class(opt$inputData))
cat("\n")
cat(opt$output)
cat("\n")
cat(class(opt$output))
cat("\n")

## Run Bruker2h5
library(h5)
library(bruker2h5)
cat("start converting....\n")
bruker2h5(BrukerZippedFile=opt$inputData, outputFilename=opt$output)
