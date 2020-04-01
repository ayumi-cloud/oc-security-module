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
deviceType | A string containing the type of property, see (*) Device Type List - for full details.
deviceIdentified | An integer displaying the number of items found.
deviceGeneric | A boolean value saying if the firewall used generic or specific data.
deviceHidden | A boolean value saying if the device is trying to hide some of it's information.

#### Device Type List

- desktop
- mobileFeature
- mobileSmart
- pda
- dect
- tablet
- gamingConsole
- gamingPortable
- ereader
- media
- headset
- watch
- emulator
- television
- monitor
- camera
- printer
- signage
- whiteboard
- devboard
- inflight
- appliance
- gps
- car
- pos
- bot
- projector

### x

x
