FROM ubuntu:latest
# setup libimobile device, usbmuxd and some tools 
RUN apt-get update && apt-get -y install unzip  wget curl libimobiledevice-utils libimobiledevice6 usbmuxd
# grab go-iOS from github
RUN wget https://github.com/danielpaulus/go-ios/releases/latest/download/go-ios-linux.zip
RUN unzip go-ios-linux.zip
# set up nvm and add a little hack so installing appium will work as the root user
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
RUN export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \
     . "$NVM_DIR/nvm.sh" && nvm install 14 && \
    npm config set user 0 && npm config set unsafe-perm true && npm install -g appium
COPY startAppium.sh / 
ENTRYPOINT ["/bin/bash","-c","/startAppium.sh"]

