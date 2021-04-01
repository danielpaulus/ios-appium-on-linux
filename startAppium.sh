#!/bin/bash
# this is the entrypoint script for our container
# set up go-iOS to forward the localhost:7777 over USB to WebDriverAgent on 8100
# Appium will use that port because we tell it to in the desiredCapabilities of our automation
# script. 
/ios forward 7777 8100&
# set up nodeJS with nvm
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# run appium
/root/.nvm/versions/node/v14.16.0/bin/appium
