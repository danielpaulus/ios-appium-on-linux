# ios-appium-on-linux

Run appium for iOS devices on Linux

1. Install WebDriverAgent on your iOS device using Xcode, then plug the device into your Linux box
2. Install usbmuxd on your linux box `apt install usbmuxd` and run it `sudo usbmuxd&`
3. Clone this repo on the Linux box
4. Run: `docker build -t ios-appium-on-linux .`
5. Run: `./run.sh ios-appium-on-linux` to start the container
6. Run: `docker exec CONTAINER_ID /ios runwda` to start WebDriverAgent
7. Now you can run any appium script on the linux box, f.ex. try `node client/test.js` to try the script included in this repo.
