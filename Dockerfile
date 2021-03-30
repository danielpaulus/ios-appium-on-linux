FROM ubuntu:latest
RUN apt-get update && apt-get -y install curl libimobiledevice-utils libimobiledevice6 usbmuxd
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
RUN export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \
     . "$NVM_DIR/nvm.sh" && nvm install 14 && \
    npm config set user 0 && npm config set unsafe-perm true && npm install -g appium
 


