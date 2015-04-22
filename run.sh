#!/bin/bash

CMD=$@

# When called with `make`, replace it with 
# `make CROSS_COMPILE=arm-linux-gnuabi-'.
if [[ $# -eq 1 && $1 == "make" ]]; then
    CMD="make CROSS_COMPILE=arm-linux-gnueabi-"
fi

# Check if .config exists. If not, copy .config.default to this place.
if [ ! -f $(pwd)/.config ]; then
    cp $(pwd)/.config.default $(pwd)/.config
fi

docker run  \
    -ti \
    -v $(pwd)/binaries:/root/at91bootstrap/binaries \
    -v $(pwd)/.config:/root/at91bootstrap/.config \
    orangetux/at91bootstrap $CMD
