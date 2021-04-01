// javascript

const wdio = require("webdriverio");
const assert = require("assert");

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


  await client.deleteSession();
}

main();
