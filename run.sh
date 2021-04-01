#!/bin/bash
# pass the container image name as a parameter
# exposes the default appium port 4723 so our automation script can use it.
# mounts /var/run/usbmuxd into the container, this is the unix domain socket that allows all tools
# to communicate with iOS devices. 
# /var/lib/lockdown is where the pairing information is stored, so you don't have to pair your phone
# everytime, but just once on the host
docker run -p 4723:4723 -v /var/run/usbmuxd:/var/run/usbmuxd -v /var/lib/lockdown:/var/lib/lockdown $1
