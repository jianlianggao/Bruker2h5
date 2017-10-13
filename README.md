# Bruker2h5
Convert zipped Bruker NMR raw data into hdf (.h5 ) file

This is standalone run version. 

For Docker version, please go to master branch.

# Requirements
R version is >=3.2 (h5 package does not support R < 3.2)

packages: h5

# Use of bruker2h5 function in command line 
Step 1. Download or git clone this branch (standalone) to your local drive.

Step 2. Check if you have zipped Bruker files. Or you can download from https://github.com/jianlianggao/Bruker2h5/raw/standalone/test_data/BrukerJGao_5spec.zip

Step 3. run the following line in command window (tested in Windows10 64bit/R 3.3.0; Ubuntu 16.04LTS 64-bit/R 3.2.3)
         
        *Ubuntu needs to have libhdf5-dev installed by running   " apt-get install libhdf5-dev  "  in root user environment.

        Rscript --vanilla --default-packages=methods,stats,utils runBruker2h5.R -i path/to/xxxx.zip -o yyyy.h5
        
        for example:
        Rscript --vanilla --default-packages=methods,stats,utils runBruker2h5.R -i test_data/BrukerJGao_5spec.zip -o nmr_h5test1.h5