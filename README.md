# Bruker2h5
Convert zipped Bruker NMR raw data into hdf (.h5 ) file

# Use of bruker2h5 function in command line 
Step 1. Download or git clone this branch (standalone) to your local drive.

Step 2. Check if you have zipped Bruker files. Or you can download from https://github.com/jianlianggao/Bruker2h5/raw/standalone/test_data/BrukerJGao_5spec.zip

Step 3. run the following line in command window in Windows system

        Rscript --vanilla --default-packages=methods,stats,utils runBruker2h5.R -i path/to/xxxx.zip -o yyyy.h5
        
        for example:
        Rscript --vanilla --default-packages=methods,stats,utils runBruker2h5.R -i test_data/BrukerJGao_5spec.zip -o nmr_h5test1.h5