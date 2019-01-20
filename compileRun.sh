#!/bin/bash
# wget --no-check-certificate https://www.open-mpi.org/software/ompi/v2.1/downloads/openmpi-2.1.3.tar.gz
# tar -xzf openmpi-2.1.3.tar.gz
#cd openmpi-2.1.3
#./configure
#make
#make install
#cd ..
#wget --no-check-certificate https://github.com/hpcg-benchmark/hpcg/archive/HPCG-release-3-0-branch.zip
#unzip HPCG-release-3-0-branch.zip
#cd hpcg-HPCG-release-3-0-branch
#mkdir build
#cd build
#../configure Linux_MPI
#make
mpirun -np 16 ./bin/xhpcg #128 128 128 --rt=180
