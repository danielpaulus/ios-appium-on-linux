#!/bin/bash

docker run -p 4723:4723 --privileged -v /dev/bus/usb:/dev/bus/usb $1
