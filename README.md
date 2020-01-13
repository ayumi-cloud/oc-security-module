<h3 align="center">October CMS Version II Proposal - Security Module</h3>

<p><strong>...........................................Warning currently in heavy development</strong></p>

<p align="center"><strong>There are other modules being developed for October CMS Version II in different repo's!</strong><p>
  
<p align="center"><img src="https://badgen.net/badge/stars/%E2%98%85%E2%98%85%E2%98%85%E2%98%85%E2%98%85" alt="stars"> <a href="https://travis-ci.org/#"><img src="https://badgen.now.sh/travis/probot/probot" alt="Build Status"></a> <img src="https://badgen.net/packagist/lang/monolog/monolog"> <a href="https://codecov.io/gh/#"><img src="https://badgen.now.sh/codecov/c/github/probot/probot" alt="Codecov"></a> <a href="https://twitter.com/#"><img src="https://img.shields.io/twitter/follow/ProbotTheRobot.svg?style=social&logo=twitter&label=Follow" alt="@ProbotTheRobot on Twitter"></a> <a href="https://pullreminders.com?ref=badge"><img src="https://pullreminders.com/badge.svg" alt="Pull Reminders"></a></p>

<p align="center"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/readme.gif"></p>

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

| Version     | Supported          |
| ----------- | ------------------ |
| 3.3.x-dev   | :white_check_mark: |
| 3.3.x-rc    | :white_check_mark: |
| 3.3.x-beta  | :white_check_mark: |
| 3.3.x-aplha | :white_check_mark: |
| 2.2.x       | :white_check_mark: |
| 2.1.x       | :white_check_mark: |
| 1.0.x       | :white_check_mark: |
| 1.0.x.x     | :x:                |

When the version tag is not stable; e.g. `1.0.0-alpha`, `1.0.0-beta`, `1.0.0-dev` or `1.0.0-rc` (see https://semver.org/#spec-item-11)

Example:

![Image of securityeg](https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/semantic.png)


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
