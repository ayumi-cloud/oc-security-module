## Summer CMS Firewall Requests API

### Device API

To load all the device data use the following:

```php
$firewall->device;
```

Individual device api properties:

Value | Description
---|---
deviceManufacturer | A string containing the manufacturer of the device, e.g. 'Apple' or 'Samsung'.
deviceModel | A string containing the model of the device, e.g. 'iPhone' or 'Galaxy S4'.
deviceSeries | A string containing the device series information, e.g. 'Smart TV'.
deviceCarrier | A string containing the mobile carrier name, e.g. 'DoCoMo'.
deviceIdentifier | A string containing a device identification, e.g. 'iPhone'.
deviceFlag | A string attach a special flag to a range of devices, e.g. 'S60' for some Nokia Series 60.
deviceType | A string containing the type of property, see **Device Type List** - for full details.
deviceSubtype | A string containing the sub type of the property, e.g. 'smart' or 'feature' for a phone.
deviceIdentified | An integer displaying the number of api properties found.
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

To load all the browser data use the following:

```php
$firewall->browser;
```

Individual browser api properties:

Value | Description
---|---
browserName | A string containing the name of the browser.
browserAlias | A string containing an alternative name of the browser.
browserVersion | A version object containing information about the version of the browser.
browserStock | A boolean, true if the browser is the default browser of the operating system, false otherwise.
browserChannel | A string containing the distribution channel, e.g. 'Nightly' or 'Next'.
browserMode | A string that can contain the operating mode of the browser, e.g. 'proxy'.
browserHidden | A boolean that is true if the browser does not have a name and is the default of the operating system.
browserFamily | An object that contains information about to which family this browser belongs
browserUsing | An object that contains information about to which kind of webview this browser uses.
browserInfo | A string that contains the full browser description.

#### Browser Semantic Versioning

Value | Description
---|---
browserMajor | Major release number.
browserMinor | Minor release number.
browserPatch | Patch release number.
browserBuild | Build release value.

#### Browser and App Types

See here: [firewall_browser_types.md](https://github.com/ayumi-cloud/oc-security-module/blob/master/docs/api/firewall_browser_types.md)

See here: [firewall_app_types.md](https://github.com/ayumi-cloud/oc2-security-module/blob/master/docs/api/firewall_app_types.md)

### Operating System API

To load all the operating system data use the following:

```php
$firewall->os;
```

Individual operating system api properties:

Value | Description
---|---
osName | A string containing the name of the operating system, for example `Windows` - outputting the name.
osFullName | A string containing the name of the operating system, for example `Windows Mobile` - outputting the name and the alias/edition.
osVersion | A string containing the original version number of the operating system, for example `Windows 5.1` would be `5.1` - outputting the version number.
osFullVersion | A string containing the original version number of the operating system, for example `Windows 5.1` would be `XP` - outputting the alias/edition.

For a full list of supported operating systems see here: [firewall operating systems](https://github.com/ayumi-cloud/oc2-security-module/blob/master/docs/api/Firewall_operating_systems.md)

