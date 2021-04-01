FROM ubuntu:latest
RUN apt-get update && apt-get -y install unzip  wget curl libimobiledevice-utils libimobiledevice6 usbmuxd
RUN wget https://github.com/danielpaulus/go-ios/releases/latest/download/go-ios-linux.zip
RUN unzip go-ios-linux.zip
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
RUN export NVM_DIR="$HOME/.nvm" && [ -s "$NVM_DIR/nvm.sh" ] && \
     . "$NVM_DIR/nvm.sh" && nvm install 14 && \
    npm config set user 0 && npm config set unsafe-perm true && npm install -g appium
# 4723 appium port
COPY startAppium.sh / 
ENTRYPOINT ["/bin/bash","-c","/startAppium.sh"]

