# Bruker2h5
Convert zipped Bruker NMR raw data into hdf (.h5 ) file

# Use of Docker container image
pull container from Docker hub:

docker pull jianlianggao/bruker2h5

and run in the terminal window with the command line as:
(prepare your own zipped Bruker NMR data in advance!!!)
docker run -v ~/Downloads:/data -ti jianlianggao/bruker2h5 /data/mesa500.zip /data/nmrh5.h5
