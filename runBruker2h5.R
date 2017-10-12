    #List of required packages
    packages=c("optparse","h5")
    #check if the required packages are installed
    packagecheck <- match( packages, utils::installed.packages()[,1] )
    packagestoinstall <- packages[ is.na( packagecheck ) ]
    #if not installed, then install them.
    if( length( packagestoinstall ) > 0L ) {
      utils::install.packages( packagestoinstall,
                               repos = "http://cran.us.r-project.org"
      )
    } else {
      print( "All requested packages already installed." )
    }
    #load required packages
    for( package in packages ) {
      suppressPackageStartupMessages(
        library( package, character.only = TRUE, quietly = TRUE )
      )
    }
    
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
    
    if(!("inputData" %in% names(opt))) {
      print("no input argument given!")
      print_help(parser)
      q(status = 1,save = "no")
    }
    
    ## Run Bruker2h5
    source("bruker2h5.R")
    cat("start converting....\n")
    bruker2h5(BrukerZippedFile=opt$inputData, outputFilename=opt$output)
