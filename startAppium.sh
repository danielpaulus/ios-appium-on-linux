#!/bin/bash
/ios forward 7777 8100&
export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

/root/.nvm/versions/node/v14.16.0/bin/appium
