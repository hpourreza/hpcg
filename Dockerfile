FROM nvidia/cuda:7.5-runtime-ubuntu14.04

ADD /compileRun.sh /usr/bin/
RUN apt-get update && apt-get -y --force-yes install build-essential wget && apt-get clean
RUN chmod +x /usr/bin/compileRun.sh
RUN wget --no-check-certificate https://www.open-mpi.org/software/ompi/v2.1/downloads/openmpi-2.1.3.tar.gz
RUN tar -xzf openmpi-2.1.3.tar.gz
RUN cd openmpi-2.1.3
RUN ./configure
RUN make
RUN make install
RUN cd ..
RUN wget --no-check-certificate https://github.com/hpcg-benchmark/hpcg/archive/HPCG-release-3-0-branch.zip
RUN unzip HPCG-release-3-0-branch.zip
RUN cd hpcg-HPCG-release-3-0-branch
RUN mkdir build
RUN cd build
RUN ../configure Linux_MPI
RUN make
