// javascript

const wdio = require("webdriverio");

const opts = {
  path: '/wd/hub',
  port: 4723,
  capabilities: {
	deviceName: "blabla",
	automationName: "XCUITest",
	platformName: "iOS",
	browserName: "Safari",
	udid: "auto",
        usePrebuiltWDA: true,
	startIWDP: true,
        webDriverAgentUrl: "http://localhost:7777"
  }
};

async function main () {
  const client = await wdio.remote(opts);
  await client.url('https://www.youtube.com/watch?v=8v5f_ybSjHk');
  client.pause(5000);
  await client.activateApp( "com.apple.weather")
  await client.deleteSession();
}

main();
