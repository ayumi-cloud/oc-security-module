<h3 align="center">October CMS Version II Proposal - Security Module</h3>

<p><strong>...........................................Warning currently in heavy development</strong></p>

<p align="center"><strong>There are other modules being developed for October CMS Version II in different repo's!</strong><p>
  
>                               ⚠️ THIS IS A LONG-TERM PROJECT AND WILL TAKE MANY MONTHS! ⚠️
  
<p align="center"><img src="https://badgen.net/badge/stars/%E2%98%85%E2%98%85%E2%98%85%E2%98%85%E2%98%85" alt="stars"> <a href="https://travis-ci.org/#"><img src="https://badgen.now.sh/travis/probot/probot" alt="Build Status"></a> <img src="https://badgen.net/packagist/lang/monolog/monolog"> <a href="https://codecov.io/gh/#"><img src="https://badgen.now.sh/codecov/c/github/probot/probot" alt="Codecov"></a> <a href="https://twitter.com/#"><img src="https://img.shields.io/twitter/follow/ProbotTheRobot.svg?style=social&logo=twitter&label=Follow" alt="@ProbotTheRobot on Twitter"></a> <a href="https://pullreminders.com?ref=badge"><img src="https://pullreminders.com/badge.svg" alt="Pull Reminders"></a></p>

<p align="center"><a href="https://paypal.me/#"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/buttons/paypal-button.svg"></a></p>

<p align="center"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/readme.gif"></p>

This repo to gather security enhancement ideas and to monitor progress.

Feel free to add issues containing security ideas, requests and infomation.

**The security code is not held in this repo - but in a private repo (being heavily developed)**

## Requirements ##

> This library requires PHP 7.3 or greater, Laravel 6 or greater and if using Apache 2.4.10 or greater.

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

## Enable Apache httpd modules

We have a dedicated Apache section for users using `.htaccess` some configurations won't have any effect if the appropriate modules aren't enabled. So, in order for everything to work as intended, you need to ensure the you have the following Apache modules enabled:

* [`mod_autoindex.c` (autoindex_module)](https://httpd.apache.org/docs/current/mod/mod_autoindex.html)
* [`mod_deflate.c` (deflate_module)](https://httpd.apache.org/docs/current/mod/mod_deflate.html)
* [`mod_expires.c` (expires_module)](https://httpd.apache.org/docs/current/mod/mod_expires.html)
* [`mod_filter.c` (filter_module)](https://httpd.apache.org/docs/current/mod/mod_filter.html)
* [`mod_headers.c` (headers_module)](https://httpd.apache.org/docs/current/mod/mod_headers.html)
* [`mod_include.c` (include_module)](https://httpd.apache.org/docs/current/mod/mod_include.html)
* [`mod_mime.c` (mime_module)](https://httpd.apache.org/docs/current/mod/mod_mime.html)
* [`mod_rewrite.c` (rewrite_module)](https://httpd.apache.org/docs/current/mod/mod_rewrite.html)
* [`mod_setenvif.c` (setenvif_module)](https://httpd.apache.org/docs/current/mod/mod_setenvif.html)

For more detailed information on configuration files and how to use them, please check the appropriate Apache documentation:

* <https://httpd.apache.org/docs/current/configuring.html>
* <https://httpd.apache.org/docs/current/howto/htaccess.html>

## Breaking Changes from October Version 1 to Version 2

### October Installer

We plan in the coming future to change the installer with several new features. One such feature we intend on implementing is having an option for the user to select the security level of their October II installation. For example, a user has two choices:

1. Normal security level - current October version one settings (useful for localhost installations).

2. Enhanced security level - October version two settings (useful for live / production websites).

It's important to let users set the security levels at an early stage and the security module needs some basic configuration settings to set up before activation. More complex settings can be added at a later time (after the initial installation).

#### Project type

Users can now select different project types such as `vue.js`, `react`, `angular`, `bootstrap`, `flat html` etc. Also users will select their server type, such as `Microsoft IIS`, `Nginx`,  `Apache` etc. and October II will create a more custom cms for the user based off their project type. The security module will also be more configured to their server type giving a better more secure user experience.

### Loading and saving methods for form fields

In October version two, to increase performance, form fields are now not loaded until a user selects that area. For example, a plugin has some form fields that are hidden in some tabs, the hidden form fields are not loaded until the user selects that tab and then the widgets in that tab are loaded. Likewise, October version 2 only saves the form widgets that have been edited and changed, instead of in version one where it saves all the form fields even if they haven't been changed. In testing this has increased the performance of October version II.

### User interface

In October version two, the dashboard has been redesigned with hundreds of new widgets and modules, October II UI and new widgets use a combination of [Tailwind CSS](https://tailwindcss.com/), [Vue.js Widgets](https://vuejs.org/) and [D3 data visualization library](https://d3js.org/)! 

All new Widgets (are [Web Components](https://developer.mozilla.org/en-US/docs/Web/Web_Components)) and use the [Shadow DOM API](https://developer.mozilla.org/en-US/docs/Web/Web_Components/Using_shadow_DOM), which increases performance! In October version one all widgets are loaded from a single complied CSS file which makes loading and performance slow. With October II the main difference is that each Web Component is loaded by their own files making maintenance much easier and a huge reduction in conflicts! This method takes advantage of technologies such as [HTTP/2](https://developers.google.com/web/fundamentals/performance/http2), [HTTP/3 and QUIC](https://blog.cloudflare.com/http3-the-past-present-and-future/). of All widgets have unique identifier for their containers helping web developers style and custom widgets easily.

The security settings section now uses multi-level dimension tabs and not hard-coded to only have a choice of two things: primary and secondary tabs, see here: [Hard-coded choice of two tabs only](https://github.com/octobercms/october/blob/develop/modules/backend/widgets/form/partials/_form.htm). October II has over 30 different tab designs, allowing developers and webmasters a wider choice and be able to create better responsive dashboard plugin designs!

Accessibility enhancements for all form widgets including `focus`, `active`, `hover`, `keyboard`, `touch` and `mouse controls`. All widgets have been upgraded with a more modern design as well. Hard to see design issues have been removed to pass [Web Content Accessibility Guidelines (WCAG 2.0)](https://www.w3.org/TR/WCAG20/) to learn more see here: [Color and contrast](https://developers.google.com/web/fundamentals/accessibility/accessible-styles#color_and_contrast). All widgets are preloaded and don't get loaded in the main thread now, blocking critical resources! [R.A.I.L. guidelines](https://developers.google.com/web/fundamentals/performance/rail) have been applied to all widgets and styling has been tested to remove jank which was a huge problem in version one!

Warning - The whole user interface has been re-designed with many new features - to allow apps and single-page applications (SPA) to now work inside October II in both the frontend and backend. Some new features include tabbed plugins, favourites, quick picks, jump to important locations for accessibility users, drag n drop features, expandable panels, dedicated settings section for each plugin and app, health monitor of apps and plugins, resource stats for each plugin and app, allow multiple instances of the same plugin and app to run at the same time, subdomain and subfolder controls (for multi-language websites), multi-site improvements, new email section and new user settings, dashboard for integrated controls for external apis and websites, internal [oembed](https://oembed.com/) system, xfn, atom and rss feeds, production mode system checks, server stats, pwa section that contains things such as [Service Workers](https://developers.google.com/web/fundamentals/primers/service-workers) and [Manifest files](https://web.dev/add-manifest/) and many more things. This repo contains information about the security module and thus the scope of these new features are described more in the other modules.

### Themes

There are several themes that come as standard in October II, these include `dark` mode, `light` mode, `standard`, `bootstrap` and `material`. The themes also use some new CSS4 standards and updates with some new Media Queries properties, you can learn more here: [Media Queries Level 4](https://www.w3.org/TR/mediaqueries-4/) and to find out all the latest CSS features being worked on by the w3c group can be found here: [CSS current work and what's new](https://www.w3.org/Style/CSS/current-work). Plus you can create and add your own themes easily now with a dedicated section.

### Dashboard

The reporting widget called `System Status` will display **security issues** and **production modes check issues** where a link will also redirect the user to a dedicated security dashboard showing all the security related issues.

In October one the dashboard used the Isotope library, since then many advances in technology have been created such as Flexbox and modern drag n drop libraries and api's. October II uses a more modern library to handle the drag n drop. All widgets are now fully responsive and down scaling the screen has been fixed to give a much more smoother experience! New features include importing and exporting dashboard layouts and a whole bunch of common reporting widgets you find in other competitor cms dashboards as standard.

> This repo doesn't contain a full list of updates and changes from version 1 to 2 - For a full list, see the main update proposal module repo! The changes above only relate for the security module!

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
