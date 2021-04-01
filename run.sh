#!/bin/bash

docker run -p 4723:4723 -v /var/run/usbmuxd:/var/run/usbmuxd -v /var/lib/lockdown:/var/lib/lockdown $1
