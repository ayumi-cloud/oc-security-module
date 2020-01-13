# October CMS Version II Proposal - Security Module

**...........................................Warning currently in heavy development**

**======= There are other modules being developed for October CMS Version II in different repo's! =======**

![Image of securitycat](https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/readme.gif)

This repo to gather security enhancement ideas and to monitor progress.

Feel free to add issues containing security ideas, requests and infomation.

**The security code is not held in this repo - but in a private repo (being heavily developed)**

## Requirements ##

This library requires PHP 7.2 or greater, due to using Laravel 6.5 or greater.

## Contributing ##

Patches and pull requests are encouraged. All code should follow the PSR-1 and
PSR-2 style guidelines. Please include unit tests whenever possible.

## Versioning ##

The Security Module code uses [Semantic Versioning](https://semver.org/).

## Copyright and License ##

This is free software, licensed under the MIT, Open Source Initiative.

# Security Policy

## Supported Versions

We have two types of releases, Major releases (3.0.0, 3.1.0, 3.2.0 etc.) and point releases (3.0.1, 3.0.2 etc.).

We officially support the two point releases with security patching preceding the current major release.

We are happy to receive and merge PR's that address security issues in older versions of the project, but the team itself may choose not to fix these.

Along those lines, the team may not issue security notifications for unsupported software.

| Version   | Supported          |
| --------- | ------------------ |
| 3.3.x-dev | :white_check_mark: |
| 2.2.x     | :white_check_mark: |
| 2.1.x     | :white_check_mark: |
| 1.0.x     | :white_check_mark: |
| 1.0.x.x   | :x:                |

## Reporting a Vulnerability

We strive to make the code accessible to a wide audience of beginner and experienced users.

We welcome bug reports, false positive alert reports, evasions, usability issues, and suggestions for new detections.
Submit these types of non-vulnerability related issues via Github.

Please include your installed version and the relevant portions of your audit log.

False negative or common bypasses should [create an issue](https://github.com/ayumi-cloud/oc-security-module/issues/new) so they can be addressed.

Do this before submitting a vulnerability:

1) Verify that you have the latest version of October CMS II.
2) Validate which Paranoia Level this bypass applies to. If it works in PL4, please send us an email.
3) If you detected anything that causes unexpected behavior of the engine via manipulation of existing provided rules, please send it by email.

We are happy to work with the community to provide CVE identifiers for any discovered security issues if requested.

If in doubt, feel free to reach out to us!
