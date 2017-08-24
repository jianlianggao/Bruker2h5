#!/bin/bash
cd /usr/local/bin
Rscript --vanilla --default-packages=methods,stats,utils runBruker2h5.R -i $1 -o $2 