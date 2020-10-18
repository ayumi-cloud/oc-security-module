## Google Chrome and Edge are creating random debug.log log files

A bug in the latest release of Chrome, and other Chromium-based browsers, is causing random `debug.log` files to be created on user's desktops and other folders.

On October 6th, 2020, Google released Chrome 86 to the 'Stable' branch, and all users were auto-updated to this version. Other browsers based on Chromium, such as Brave and Microsoft Edge, also upgraded to this version around the same time.

Since the release of Chrome **86.0.4240.75**, the browser has started to create debug.log error log files on user's desktop and within other folders.

The `debug.log` file is the default log file that Chromium-based browsers use when logging an error that is encountered.

With the latest release of the browser, a bug is causing `debug.log` files to be created with the following message:

```
[1016/1644047.132:ERROR:directory_reader_win.cc(43)] FindFirstFile: The system cannot find the path specified. (0x3)
```

While Google has not officially explained the bug, based on the error, Chrome is running into an issue iterating over the files and subdirectories in a folder and logging it as an error.

It is unknown if this is a new bug that introduced the problem, or Google enabled logging and forgot to turn it off.

For users encountering this issue, you can resolve it by deleting the Chromium Crashpad folder's contents.

The Crashpad folder is found in the following locations for Chrome, Edge, and Brave:

```
Chrome: C:\Users\[username]\AppData\Local\Google\Chrome\User Data\Crashpad
Edge:   C:\Users\[username]\AppData\Local\Microsoft\Edge\User Data\Crashpad
Brave:  C:\Users\User\AppData\Local\BraveSoftware\Brave-Browser\User Data\Crashpad
```

To delete the contents of the **Crashpad** folder, perform the following steps:

1. Close all instances of Chrome, Edge, or other browsers with the issue.
2. Navigate to your browser's Crashpad folder.
3. Delete the contents of the Crashpad folder.
4. Start Chrome again to recreate the contents of the Crashpad folder.

Now that Crashpad has been reset, the debug.log files should no longer be created.

For more info: https://bugs.chromium.org/p/chromium/issues/detail?id=1138853
