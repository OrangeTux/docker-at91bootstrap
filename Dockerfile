FROM ubuntu:14.10

MAINTAINER Auke Willem Oosterhoff <awoosterhoff@gmail.com>

RUN apt-get update && \
    apt-get install -y \
    bc \
    binutils-arm-linux-gnueabi \
    build-essential \
    gcc-arm-linux-gnueabi \
    git \
    libc6-dev-armel-cross \
    libncurses5-dev

WORKDIR /root

RUN git clone https://github.com/linux4sam/at91bootstrap.git

WORKDIR /root/at91bootstrap

CMD ["/bin/bash"]
