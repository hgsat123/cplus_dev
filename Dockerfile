FROM ubuntu:17.04
MAINTAINER Satish Hegde <satish.hegde@wipro.com>

# Set the volume & working directory
VOLUME "/project"
WORKDIR "/project"

# install compler & its associated packages, conan- opensource c/c++ pkg mgr, 
RUN apt-get update && \
    apt-get install -y software-properties-common wget && \
    add-apt-repository -y ppa:ubuntu-toolchain-r/test && \
    apt-get update && \
    apt-get dist-upgrade -y && \
    apt-get install gcc-multilib g++-multilib cmake wget -y  && \
    apt-get clean autoclean && \
    apt-get autoremove -y && \
    apt-get install -y make git curl vim

RUN wget -O /tmp/conan.deb -L https://github.com/conan-io/conan/releases/download/0.25.1/conan-ubuntu-64_0_25_1.deb && \
    dpkg -i /tmp/conan.deb

ADD build.sh /build.sh
RUN chmod +x /build.sh
