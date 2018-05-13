FROM nvidia/cuda:7.5-runtime-ubuntu14.04

ADD /compileRun.sh /usr/bin/
RUN apt-get update && apt-get -y --force-yes install build-essential wget && apt-get clean
RUN chmod +x /usr/bin/compileRun.sh
