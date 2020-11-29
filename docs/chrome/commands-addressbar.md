## Google Chrome allows executing commands via the address bar

Google is slowly rolling out a new feature to Google Chrome 87 that allows you to type commands in the address bar that perform specific browser actions.

This new feature is called '**Chrome Actions**' and allows you to type in a command, causing an action to be displayed in the address bar search results. When you select that action, it will be executed in the browser.

For example, if you wanted to delete cookies in Chrome, you could type `clear cookies` in the address bar and a search result will appear containing a 'Clear browsing data' action that looks like the  ​button. 

The images below demonstrate other actions that can be executed in Google Chrome.

<p><img src="https://github.com/ayumi-cloud/oc2-security-module/blob/master/src/assets/images/clear-browsing-data.jpg"></p>

There are hundreds of commands that can perform one of six actions, with examples listed below:

- Delete history => Clear browsing data action
- Incognito  => Open Incognito mode action
- Manage passwords => Manage passwords action
- Translate page => Translate page action
- Update chrome => Update Chrome action
- Update credit card => Manage payment methods action

A full list of the available commands can be found in the [Chromium source code](https://source.chromium.org/chromium/chromium/src/+/master:components/omnibox/browser/omnibox_pedal_implementations_unittest.cc?q=%22open%20incognito%20mode%22&ss=chromium%2Fchromium%2Fsrc)

### How to enable Chrome actions

To enable actions in Chrome 87, please follow these steps:

1. Head to the `Chrome://flags` menu.
2. Search for `Omnibox suggestion button row` and `Omnibox Pedal suggestions` and enable both flags.
3. When both are enabled, relaunch the browser.

<p><img src="https://github.com/ayumi-cloud/oc2-security-module/blob/master/src/assets/images/chrome-flags.jpg"></p>
