## October II Firewall Requests API

### Device API

Value | Description
---|---
deviceManufacturer | A string containing the manufacturer of the device, ie. 'Apple' or 'Samsung'.
deviceModel | A string containing the model of the device, ie. 'iPhone' or 'Galaxy S4'.
deviceSeries | A string containing the device series information.
deviceCarrier | A string containing the mobile carrier name.
deviceIdentifier | A string containing a firewall code when the device has been identified.
deviceFlag | A string flagging any issues detecting the device.
deviceType | A string containing the type of property, see **Device Type List** - for full details.
deviceIdentified | An integer displaying the number of items found.
deviceGeneric | A boolean value saying if the request was a generic or specific device.
deviceHidden | A boolean value saying if the device is trying to hide some of it's information.

#### Device Type List

- appliance
- bot
- camera
- car
- dect
- desktop
- devboard
- emulator
- ereader
- gamingConsole
- gamingPortable
- gps
- headset
- inflight
- media
- mobileFeature
- mobileSmart
- monitor
- pda
- pos
- printer
- projector
- signage
- smartSpeaker
- tablet
- television
- watch
- whiteboard

### Browser API

Value | Description
---|---
browserName | A string containing the name of the browser.
browserAlias | A string containing an alternative name of the browser.
browserVersion | A version object containing information about the version of the browser.
browserStock | A boolean, true if the browser is the default browser of the operating system, false otherwise.
browserChannel | A string containing the distribution channel, ie. 'Nightly' or 'Next'.
browserMode | A string that can contain the operating mode of the browser, ie. 'proxy'.
browserHidden | A boolean that is true if the browser does not have a name and is the default of the operating system.
browserFamily | An object that contains information about to which family this browser belongs
browserUsing | An object that contains information about to which kind of webview this browser uses.
browserInfo | A string that contains the full browser description.

#### Browser Semantic Versioning

Value | Description
---|---
browserMajor | Major release number
browserMinor | Minor release number
browserPatch | Patch release number
browserBuild | Build release value

#### Browser Type

(*) See here: [firewall_browser_types.md](https://github.com/ayumi-cloud/oc-security-module/blob/master/docs/api/firewall_browser_types.md)

### x

x
