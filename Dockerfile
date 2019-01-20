FROM nvidia/cuda:7.5-runtime-ubuntu14.04

ADD /compileRun.sh /usr/bin/
ENV USER mpiuser

RUN apt-get update && apt-get -y --force-yes install build-essential wget \
    libopenmpi-dev openmpi-bin openmpi-common openmpi-doc && apt-get clean
RUN adduser --disabled-password --gecos "" ${USER}
RUN chmod +x /usr/bin/compileRun.sh
