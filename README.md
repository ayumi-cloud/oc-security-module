<h3 align="center">Codename: Summer CMS (our October CMS update proposal) - Security Module</h3>
  
<p align="center"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/buttons/stars.svg" alt="stars"> <a href="https://travis-ci.org/#"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/buttons/travis.svg" alt="Build Status"></a> <img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/buttons/php.svg"> <a href="https://codecov.io/gh/#"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/buttons/coverage.svg" alt="Codecov"></a> <a href="https://pullreminders.com?ref=badge"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/buttons/pull.svg" alt="Pull Reminders"></a> <img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/buttons/conduct.svg" alt="conduct"> <img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/buttons/docs.svg" alt="docs"></p>

<p align="center"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/sec-cover.png"></p>

<p align="center"><a href="https://paypal.me/#"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/buttons/paypal-button.svg"></a></p>

<p align="center">This repo is to gather security enhancement ideas and to monitor progress. Feel free to add issues containing security ideas, requests and infomation.</p>

<p align="center"><strong>The security code is not held in this repo - but held in a private repo (being heavily developed!)</strong></p>

---

## Summer CMS Modules :eyes:

**Note: (*) This is a very brief overview of the modules and doesn't list the full features included in each module (this is intended to give users an overview picture).**

- **[Security Module](https://github.com/ayumi-cloud/oc2-security-module)** - Enhanced security features including firewall, virus scanner, code checker, 2fa, u2f, security api's etc.
- **[Legal Module](https://github.com/ayumi-cloud/oc2-legal-module)** - Legal features including tools for GDPR, ePrivacy, CCPA, Cookie Policy, Privacy Policy, Terms and Conditions, 2257 etc.
- **Protocol Module** - Intergrated features including HTTP/2, HTTP/3 with QUIC, IPFS, preloading, predictive prefetching etc.
- **Progressive Web Apps Module** - PWA and DPWA, Service workers, caching, manifest, banners, icons, badges, native api's etc.
- **AMP-HTML Module** - AMP-HTML features making it easier to create AMP-Content, AMP-Email and AMP-Stories etc.
- **Semantic Module** - Schema.org, JSON-LD, microformats, ontologies etc.
- **Frameworks Module** - Vanilla js ajax framework (no more jquery), intergrated features for Angular, React, Vue.js, Bootstrap, Web Components etc.

- **Developer Module** - 

- **CDN Module** - 

- **Layout and Dashboard Module** - 

- **Performance Module** - 

- **Internalization Module** - 

- **Crypto and Web 3.0 Module** - 

- **Form Module** - 


...more modules will be uploaded

## Table of contents

- [Transparency](#transparency-)

## Transparency 📢

This project is completely transparent and honest, before we started we contacted and discussed this project with the authors and admins of the October project. We have given the links to this repo to the authors and we continue to want to be transparent throughout the whole process! We feel it's important to state this and be open. This repo is made up of one module, which is part of several other modules all dedicated to different sections of an Summer CMS proposal. Instead of writing ideas and suggestions, we have taken a pro-active approach and are actively coding a fully working solution. The code is held on private repo's because the code is being heavily developed and changed on a daily basis. We will release a stable release to the admins and authors in private for feedback before releasing to the general public. This is a long-term project and will continue to grow!

Over years we have coded and created well over a hundred pull requests (under various github accounts) which have been merged to the October version one projects core, we have never asked or recevived any money for any of the pull requests. We use the cms for professional purposes and therefore it is beneficial for our companies to have a professional working solution to give our end-users and clients. In order for us to delivery a high quality product we made the discussion to update the cms as there have been a lot of new api's, frameworks, libraries  and technologies been added to the internet over the years since the initial release of the cms.

## Big data 📊

This module uses several Big Data tool sets to analyze large amounts of data collected from various Big Data sources to model various attack methods. Some database sizes are in the petabytes and takes a few hours to run and process some models. These models are then used and tested in our definitions files where we run them in real-time and test them. We also have various non-disclosed test severs running to gather various attacks and add this data into our Big Data models to create either new firewall modules or definition files for the modules. This process helps us to build a more secure security module and helps speed up the build process. We fully rely on using large amounts of data and machine learning tools to process them!

## Citation 📚

<a href="https://zenodo.org/">
  <img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/buttons/citation.svg" />
</a>

If you use this security module for your research, then kindly cite it. Click the above badge for more information regarding the complete citation for this security module and the diffferent citation formats like: IEEE, APA, BibTeX, CSL, DataCite, Dublin Core, DCAT, JSON, JSON-LD, GeoJSON, MARCXML and Mendeley etc.

## Firewall Definition Files 💾

Version: 20200929

Last Updated: 29th Sep 2020

(*) While the security module is under heavy development, the definition files will be updated periodically and not on a regular basis! When the security module moves in a production ready-mode, the definitions files will be updated on a regular basis every week.

## Usage 🔧

### Requirements 🚩

This library requires the following:

- PHP `7.3` or greater (in the near future we hope to increase this to php 7.4 or 8.0). PHP `7.3+` allows `SameSite` Cookie protection.

PHP `8.0` is coming around November 2020 and we have plans to update our code around the end of this year. PHP is currently releasing **major** updates every two years! Therefore we plan to update and review the code every two years periodically. For update instructions please see here: [PHP 8.0 UPGRADE NOTES](https://github.com/php/php-src/blob/master/UPGRADING#L20)

- Laravel 6.0 LTS (we currently use the latest LTS versions, due to the community consensus).

<p align="center"><img src="https://github.com/ayumi-cloud/oc2-security-module/blob/master/src/assets/images/laravel-history.png"></p>

Laravel 7 continues the improvements made in Laravel 6.x by introducing Laravel Airlock. Laravel Airlock provides a featherweight authentication system for SPAs (single page applications), mobile applications, and simple, token based APIs. We recommend the following:

- Laravel 6.0 LTS to use [Laravel Passport](https://laravel.com/docs/6.x/passport).

- Laravel 7 to use [Laravel Airlock](https://laravel.com/docs/master/airlock). To learn more you can watch this video: [Laravel Airlock with Vue for SPA Auth](https://www.youtube.com/watch?v=D9oIu6jiYLk).

- Laravel 8 is Now Released, for full details of new features see here: https://laravel-news.com/laravel8 and https://laravel.com/docs/8.x/releases

- SQLite 3.7.11 or greater (we recommend the latest version of SQLite, which can be found here: [Latest Release](https://www.sqlite.org/index.html)).

#### Enable the following Apache httpd modules 🔧

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

##### **Support**

 * Apache **2.4.10 or greater** (we are looking at adding some version 2.5 features in the near future)

#### Microsoft IIS Server 🛠️

The server settings target IIS7+ where replacement config is available for IIS8 (or simplification) it will be marked.

##### **Support**

 * **IIS7+**

#### Nginx Server 🔨

Using the Nginx server settings has a few required steps to be able to work.

* [Nginx Beginners Guide](https://nginx.org/en/docs/beginners_guide.html)
* [Nginx Request Processing](https://nginx.org/en/docs/http/request_processing.html)

##### **Support**

 * Nginx v**1.8.0**+
 
## Summer CMS Firewall API 🔥

The security module in Summer CMS comes with some dedicated API's to help developers, for full details, see the api doc's section: [Summer CMS Firewall API's](https://github.com/ayumi-cloud/oc-security-module/tree/master/docs/api)

- [Firewall APP Types API](https://github.com/ayumi-cloud/oc2-security-module/blob/master/docs/api/firewall_app_types.md)
- [Firewall Browser Types API](https://github.com/ayumi-cloud/oc2-security-module/blob/master/docs/api/firewall_browser_types.md)
- [Firewall Requests API](https://github.com/ayumi-cloud/oc2-security-module/blob/master/docs/api/firewall_requests.md)
- [Firewall Response Scores API](https://github.com/ayumi-cloud/oc2-security-module/blob/master/docs/api/firewall_response_score.md)
- [Firewall Responses API](https://github.com/ayumi-cloud/oc2-security-module/blob/master/docs/api/firewall_responses.md)
- [Firewall Social Media API](https://github.com/ayumi-cloud/oc2-security-module/blob/master/docs/api/firewall_social.md)

(*) Note: The firewall is built in a modular design and more modules are being coded and tested as time goes on. There will be new api's coming and added to the doc's in the near future. To suggest a firewall module open an issue.

## Breaking Changes from October v1 to Summer CMS (update proposal) 😃

> This repo doesn't contain a full list of updates and changes, the list of changes below relate directly to the security module. For a full list of updated and new features, see the main update proposal module repo that contains all the main core changes!

⚠️ WARNING ⚠️

Due to the annoyances of version one using a huge single main css file and multiple layers of `display: table`, with multiple redundant dom node levels (creating Excessive DOM Sizes)! We decided to remove all the css and completely code everything from scratch. Summer CMS uses a combination of `CSS Grids`, `CSS Flexbox`, `CSS3` and `CSS4` properties. We have also switched from using `LESS` over to `SASS`. Taking advance of HTTP/2 and HTTP/3 css files have been broken up into smaller files, plugins and form widgets use the `Shadow DOM API`, all this improves performance, loading and rendering times!

This is a breaking change that may affect plugins and other code in the backend. We advise on updating your plugins, apps and code to be compatible with the changes!

For older browser versions we use polyfills and full css prefixes to bridge the gap.

This was a needed to change, as the old system just produced too many errors!

### Semantic Versioning 🐾

Overview of updates:

- `Major` CMS updates e.g. Laravel LTS changes - no auto updates (email end-user), e.g. Laravel 8 LTS `2.0.001`

- `Minor` CMS updates e.g. something that requires a code change - no auto updates (email end-user), e.g. `1.1.467`

- `Patch` CMS updates e.g. github repo PR's that don't need any code changes = auto updates (no email sent). e.g. `1.0.467`

Tests of special branches:

- `Candidate or pre-release (RC)` can be given to new future `major` updates, that are not ready to be realised and are currently being work on. This would be helpful to have people testing and giving their input on work in progress major updates, e.g. `2.0.001-rc`

### Goals ⚽

With October version one the goals were to keep things simple and minimalist to advoid complication things! With Summer CMS the goals are now different and <em>we</em> as a team believe that Summer CMS should have many advanced features that include a clever interface design to allow non-technical people to understand and use these advanced features! Professional developers and webmasters should not have to suffer to cater for non-technical people! All features have been made and designed in an easy to understand user interface with a lot of instructions and documentation explaining how to use, what it does, the pro's and con's and many more! This approach allows us to use modern api's and frameworks for non-technical people wanting to use the cms. It also allows the cms to continue use modern and stay update to date with new and future technologies.

The Summer CMS cms goal also tries to make many things `out-of-the-box` and ready to use without the need of extra requirements, for example Summer CMS has already added the future file extension of [Google's AV1](https://aomedia.org/av1-features/get-started/) to it's core, instead of waiting for users to file an issue! We believe in adding future upcoming things so that developers can beta test and create interesting plugins and apps.

We also plan on adding an `experimental feature flag` section, where developers can beta test new features inside Summer CMS the same way browsers have an upcoming feature section, if you are uasing Google Chrome browser you can see Google's flag section here: `chrome://flags`

These `experimental features` can be turned on and off in a sandboxed enviroment to allow users to test new features of the Summer CMS core in a safe way and also a feedback section will be added to allow `testing` - which in turn will help speed up the development for the Summer CMS core code.

> For a full list of current new and modern **security** API's being tested and used in Summer CMS's security module, see here: [Experimental_Security API's](https://github.com/ayumi-cloud/oc-security-module/blob/master/experimental_api_being_tested_and_used.md)

With a focus on making everything fully customizable, to allow developers and webmasters to create a custom cms, projects, plugins and themes in both the frontend and backend.

> A perfect example with the built-in experimental features in Summer CMS is the following: A few days ago the team added the new **AVIF image format** to the file extensions list (under an experimental flag), to use the AVIF image format you can turn on the experimental flag and Summer CMS will turn on it's polyfill. When you turn off the experimental flag, the polyfill doesn't get loaded.

### An open governance model for the Summer CMS Project 🚀

When choosing a governance model (a system that describes how decisions are made) for Summer CMS,  we initially focused on agility. Big open source projects have always been powered by the voices and feedback of the developers and organizations that use it. However, in October one, the governance was centered around 6 admin people.

While this works great for smaller projects, it doesn't work to scale for large open source projects on the web today. Instead Summer CMS will move to a model that explicitly gives a voice to all constituents of the community, including those who cannot contribute code themselves, such as end-users!

For a full list of the new governance model for the Summer CMS Project, see here: [GOVERNANCE.md](https://github.com/ayumi-cloud/oc-security-module/blob/master/GOVERNANCE.md).

### Move to focus support for evergreen browsers 💖

<p align="center"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/ie-browser.png"></p>

Summer CMS uses a lot of modern api's and technoligies, to take full advantage and have comprehensive support, we recommend using an evergreen-browser with the cms!

<p align="center"><img src="https://github.com/ayumi-cloud/oc2-security-module/blob/master/src/assets/images/ie.png"></p>

> IE11 is a legacy browser still being used for operating systems that have a Long-Term Servicing Channel (LTSC) design and will shut down in 2025. Most developers will not be using such operating systems and should be using an evergreen service - for those developers still using old legacy software they carry the risk of security issues! Summer CMS focuses on _Polyfilling evergreen browsers only_ for various api support and features!

> For example, a remote code execution (RCE) vulnerability [CVE-2020-0674](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2020-0674) impacting Internet Explorer 11, got a monkey patch instead of a proper patch (*) at time of writing.

For checking browser support with api's and features we recommend using the: [CanIUse website](https://www.caniuse.com/)

### Summer CMS Installer 💎

We plan in the coming future to change the installer with several new features. One such feature we intend on implementing is having an option for the user to select the security level of their Summer CMS installation. For example, a user has two choices:

1. Normal security level - current October version one settings (useful for localhost installations).

2. Enhanced security level - October version two settings (useful for live / production websites).

It's important to let users set the security levels at an early stage and the security module needs some basic configuration settings to set up before activation. More complex settings can be added at a later time (after the initial installation).

### How the CMS handles core and plugin updates 🔥🔥🔥

This is a `major` update to how the cms deals with updating plugin and core files, see below for the differences:

#### October v1 😕

- When an update gets released it shows a notice in the dashboard (saying there is an update).
- The user can go into the settings section and do a `manual` update.
- The user will see a notice saying there are plugin and/or cms updates available that can be installed.
- When the update takes place the cms installs the files and that's it.

#### Summer CMS 😃

- When an update gets released it shows in the dashboard, but lists all the file updates (letting the user make a decision whether they want to go ahead with the update or not). There is an option to ignore this notification in the dashboard.
- The user can go into the settings section and select the cms to do either `manual` and `automatic` updates. The `automatic` updates can be selected on the `cms` and/or `each` plugin or `all` plugins as the user sees fit.
- The user will see a notice saying there are plugin(s) and/or cms updates that can be installed.
- When the update takes place the user will see a `percentage progress bar`.
- At the end of the install the user will be able to see a list of all the files that have been updated.
- There is a file log area section where the user can `roll back any updates` if they want. This gives the user a choice whether they want to use the dashboard and select the commands or use a coding method using artisan commands. End-user clients such as **webmasters** may not be techincal enough to run artisan commands. The cms allows you to rollback to any version you want - the same way **Windows Restore** works!
- **`When the updates have been installed the cms runs a virus/malware scan of all the files that have been changed, to see if it has installed any bad code!`**
- The cms sends an email to the admins when an `automatic` update has been performed. You can turn notifications `on/off` in the settings for these emails.
- The cms sends an email to the admins if it finds any `virus/malware` code during an install.

### Login / Signin and Signing Out 🔒

Summer CMS has a feature that whitelists a **location** identifier to a user account. For example, an `IP Address` (for Fixed IP address ISP users), an `autonomous system number` (ASN) (for dynamic IP addresses ISP users), or a `country lock` (for a wider scope).

Summer CMS has timeout options, such as no actively for an hour the cms will log you out, or turn off this feature altogether (can be set separately to each user account - as different users will have different requirements). When the user re-logs back into the cms, you get redirected back to the page you were previously logged into.

Summer CMS clears all the different types of caches and generates fresh cookies when logging in and out.

New security features to Summer CMS with logging in and out of the cms that have been added to the core: `2FA (Multi-factor authentication)` - APP Version NOT Phone txt msg, `U2F (Universal 2nd Factor)` and `Google reCAPTCHA v2 and v3`.

_*3FA (three-factor authentication) is currently being discussed to add to Summer CMS. For example, using `2FA` with a second layer of security such as a `slide capchta`, `fingerprint scanner`, `facial recognitio`, `voice recognition` or `Passphrase`._

(*) 3FA and 4FA still in discussion - not yet added to core.

### Project type ⚙️

Users can now select different project types such as: `Vue.js`, `React`, `Angular`, `Sketch`, `Foundation`, `Ember`, `Adobe Apps`, `GraphQL API`, `REST API`, `Bootstrap`, `Flat HTML` etc. Also users will select their server type, such as `Microsoft IIS`, `Nginx`,  `Apache` etc. and Summer CMS will create a more custom cms for the user based off their project type. The security module will also be more configured to their server type giving a better more secure user experience.

### Icons ❄️

The standard October icons are now set to redundancy mode in Summer CMS (for backwards compatibility), instead a user can select their default icon sets at the installer stage or change their minds at a later date and change the default set in the settings section. As default the core will use `Font Awesome version 5 Pro`, unless the user selects a different custom icon pack. Also each plugin has a settings section where you can set a default icon pack which can override the main cms controls, for example:

1. Summer CMS core - Font Awesome version 5 Pro
2. Plugin A - Material Design Icons
3. Plugin B - Not set - use core setting (Font Awesome version 5 Pro)

The following icon packs/sets can be chosen in Summer CMS, these are as follows:

1. [Font Awesome version 5 Pro](https://fontawesome.com/) (*) Soon to be dropped in the near future and changed to Font Awesome Pro 6 - see below.
2. [Entypo](http://www.entypo.com/)
3. [Material Design Icons](https://materialdesignicons.com/)
4. [Iconmonstr](https://iconmonstr.com/)
5. [Material Design](https://material.io/tools/icons/?style=outline)
6. [Zurb Foundation Icons](https://zurb.com/playground/foundation-icon-fonts-3)
7. [Feather](https://feathericons.com/)
8. [Linearicons](https://linearicons.com/free)
9. [Simple line icons](http://simplelineicons.com/)
10. [Linea](http://linea.io/)
11. [Icons8](https://icons8.com/line-awesome)
12. [Themify Icons](http://themify.me/themify-icons)
13. [Ionicons](https://ionicframework.com/docs/ionicons/)
14. [UIKit](https://getuikit.com/docs/icon)
15. [Dripicons](http://demo.amitjakhu.com/dripicons/)
16. *Custom

_(*) You can add custom icon packs/sets to Summer CMS to use in the main interface, including your own themes for the backend._

> Note: Icon packs will be downloaded when selected and saved, to reduce cms file size! Advanced users can use multi icon set/packs for their themes and plugins, by just uploading them to their assets folder or linking to a cdn etc.

Added animated icons, with settings to display animation for faster internet speed connections only (to increase performance for lower speed devices) and also have increased support for more animation file types.

<p align="center"><img src="https://github.com/ayumi-cloud/oc2-security-module/blob/master/src/assets/images/font-awesome-6.png"></p>

> Summer CMS default theme uses Font Awesome Pro 5, which will be upgraded to Font Awesome Pro 6 in the near future, see commit (for security module upgrade notes): https://github.com/ayumi-cloud/oc2-security-module/issues/393
> Font Awesome Pro 6 allows designers to add custom fonts for their brands - which allows Summer CMS to have an extra customizable layer for designers and devlopers!

### Loading and saving methods for form fields 💾

In Summer CMS, to increase performance, form fields are now not loaded until a user selects that area. For example, a plugin has some form fields that are hidden in some tabs, the hidden form fields are not loaded until the user selects that tab and then the widgets in that tab are loaded. Likewise, Summer CMS only saves the form widgets that have been edited and changed, instead of in version one where it saves all the form fields even if they haven't been changed. In testing this has increased the performance of October version II.

### New grid system 🌐

Summer CMS uses a 12-column drag n drop grid system, instead of a two column system. For backwards compatibility `left`, `right` and `auto` are the same size as 6-columns and `full` is the same size as 12-columns. Summer CMS also allows users to `import` and `export` grid files to help speed up developing - the files can be saved into two formats: `.json` or `.csv` depending on your choice.

### User interface 💻

The user interface has been redesigned in Summer CMS with lots of new features, using modern api's and technologies. All the widgets have been re-coded using a combination of [Tailwind CSS](https://tailwindcss.com/), [Vue.js Widgets](https://vuejs.org/) and [D3 data visualization library](https://d3js.org/)! Summer CMS incldues many new widgets that have been added into the core, a full list is included in the user interface repo module.

All new Widgets (are [Web Components](https://developer.mozilla.org/en-US/docs/Web/Web_Components)) and use the [Shadow DOM API](https://developer.mozilla.org/en-US/docs/Web/Web_Components/Using_shadow_DOM), which increases performance! In October version one all widgets are loaded from a single complied CSS file which makes loading and performance slow. With Summer CMS the main difference is that each Web Component is loaded by their own files making maintenance much easier and a huge reduction in conflicts! This method takes advantage of technologies such as [HTTP/2](https://developers.google.com/web/fundamentals/performance/http2), [HTTP/3 and QUIC](https://blog.cloudflare.com/http3-the-past-present-and-future/). of All widgets have unique identifier for their containers helping web developers style and custom widgets easily.

The security settings section now uses multi-level dimension tabs and not hard-coded to only have a choice of two things: primary and secondary tabs, see here: [Hard-coded choice of two tabs only](https://github.com/octobercms/october/blob/develop/modules/backend/widgets/form/partials/_form.htm). Summer CMS has over 30 different tab designs, allowing developers and webmasters a wider choice and be able to create better responsive dashboard plugin designs!

Accessibility enhancements for all form widgets including `focus`, `active`, `hover`, `keyboard`, `touch` and `mouse controls`. All widgets have been upgraded with a more modern design as well. Hard to see design issues have been removed to pass [Web Content Accessibility Guidelines (WCAG 2.0)](https://www.w3.org/TR/WCAG20/) to learn more see here: [Color and contrast](https://developers.google.com/web/fundamentals/accessibility/accessible-styles#color_and_contrast). All widgets are preloaded and don't get loaded in the main thread now, blocking critical resources! [R.A.I.L. guidelines](https://developers.google.com/web/fundamentals/performance/rail) have been applied to all widgets and styling has been tested to remove jank which was a huge problem in version one!

Warning - The whole user interface has been re-designed with many new features - to allow apps and single-page applications (SPA) to now work inside Summer CMS in both the frontend and backend. Some new features include tabbed plugins, favourites, quick picks, jump to important locations for accessibility users, drag n drop features, expandable panels, dedicated settings section for each plugin and app, health monitor of apps and plugins, resource stats for each plugin and app, allow multiple instances of the same plugin and app to run at the same time, subdomain and subfolder controls (for multi-language websites), multi-site improvements, new email section and new user settings, dashboard for integrated controls for external apis and websites, internal [oembed](https://oembed.com/) system, xfn, atom and rss feeds, production mode system checks, sidebar notifications, server stats, test connection between user and cms (special section for Cloudflare connections more CDN's to come like [Akamai](https://www.akamai.com/) and [Fastly](https://www.fastly.com/)), pwa section that contains things such as [Service Workers](https://developers.google.com/web/fundamentals/primers/service-workers) and [Manifest files](https://web.dev/add-manifest/), search bar (in the cms backend), slideable tabs, multiple previews (and backend preview windows) and many more things. This repo contains information about the security module and thus the scope of these new features are described more in the other modules.

Breadcrumbs have been upgraded to accept the following states: `visited`, `active`, `normal` and `disabled`.

Checkbox hints can be placed at the `top` and `bottom` via yaml, checkboxes can be nested and have three states: `checked`, `unchecked` or `indeterminate`.

Intelligent multi-coloured focus rings, for example instead of having a blue focus ring around a red danger button. To improve the appearance of the ui in Summer CMS, the focus ring would be a lighter red focus ring around a red `danger` button when selected. Another example, with an orange coloured `warning` button would have a lighter orange focus ring around it when selected. This styling is rolled out throughtout the cms themes to match containers, buttons, links etc.

Added new datasets widget to core, users can create data sets via `yaml`, `html` or `json`. In Summer CMS the core's been upgraded to accept json files natively now. The widget also is fully compliant with the schema spec, to learn more about schema datasets see here: [Schema Dataset](https://developers.google.com/search/docs/data-types/dataset). The widget comes with several graphical interface layout, these are: `Phylogram`, `Cladogram`, `Unrooted`, `Time-scaled tree`, `Two-dimensional tree` and `Three-dimensional tree`. Which then allows the following sub-layouts `rectangular (by default)`, `slanted`, `circular`, `fan`, `radial`, `unrooted` and `clock`.

Added a new flip card help widget, which saves space and allows plugin developers to add more help infomation to their form fields.

### Fluid Workflow 👍

The workflow in version one was a bit painful and not fluid, take the following example: You open up the `Builder` plugin and create your form widget layout and then switch the screen to open your plugin and test the form widget screen to find any error or something needing an adjustment and then re-open the `Builder` plugin and navigate to the layout section to adjust the form widgets and then go back and re-check your plugin layout. In Summer CMS things are now different! Instead of requiring the `Builder` plugin, the form and list widget pages for all the plugins have two modes: `design` and `view`, which can be toggled (without the need to leave the web page, you are working on).

For deverlopers the `design` mode let's you be able to drag n drop all the form elements to create your layouts quickly and easily. Whereas in `view` mode the editing functions are turned off and is for the end-user. This method saves you having to go back and forward between web pages to edit and adjust the plugin layouts, making the whole design process fluid and allows a developer to build their plugins more quickly!

### Critical CSS Loading :dizzy:

Critical CSS is a technique that extracts the CSS for the `above-the-fold` content in order to render the content as fast as possible.

With October version one, the cms loads over 1Mb of styles and over 1Mb of javascript before the browser render engine can construct the website layout. To demostrate the downside of loading the website with and without critcal styles, see below:

<p align="center"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/critical-css-example2.png"></p>

In the above example, without critical css in place there is a long loading time the user sees a white background for quite a while and then everything is loaded all at once. Whereas, with critical css being loaded, the website is displayed much quicker and the white background time is greatly reduced! In technical terms the user has to wait longer for the `Largest Contentful Paint` to be loaded, when Critical CSS is not being applied.

With Summer CMS the cms now uses a Critical CSS loading method to reduce loading times! **Upper limit size is set to a range between 50 - 60Kb in size.**

Also to enhance Summer CMS even more we have added direct support with the [CriticalCSS.com](https://criticalcss.com/) website. Which allows their api to automatically generate the Critical CSS for you on the web page loading on the frontend. You can go into settings and add their api if you want to use their paid service or not.

### Links 🔗

Summer CMS uses the new CSS4 link pseudo-classes to do some of it's styling, these include: `:any-link`, `:link`, `:visited`, `:local-link` and `:target`, to learn more see here: [Location Pseudo-classes CSS4](https://drafts.csswg.org/selectors-4/#location)

Summer CMS uses the new [Scroll To Text Fragment links API](https://wicg.github.io/ScrollToTextFragment/). An example of the special URL format looks like this: `https://example.com#:~:text=prefix-,startText,endText,-suffix` this allows users to navigate to the exact location and not just to the form element.

Summer CMS uses full semantic markup with the `rel` attribute to describe the destination link target, it uses the _HTML5_ and _Microformat's Version 2 Spec_. All external links use the `target="_blank"` for increased seo performance and include the `rel-noopener` and `rel-noreferrer` for cross-origin destination protection security. For a full list of `rel-attributes`, see the [IANA Link Relations](https://www.iana.org/assignments/link-relations/link-relations.xhtml)

(*) In the near future we hope to add the new [Portals API](https://wicg.github.io/portals/) for seamless instant navigation in the backend and faster web navigation built directly into the core using the predictive prefetching library [guess.js](https://github.com/guess-js/guess) - that enables a Machine Learning driven user-experience!

### Filters 📐

Removed the fixed `max-height` and now the cms uses the the devices screensize as a `max-height`, with vertical autoscroll feature enabled. For mobile devices the filter window adjusts to the devices screen width, giving optimized results for user experience.
 
Header groupings and multi-level filters are available in Summer CMS, allowing users to set child parameters from the same drop-down menu. Likewise, vertical and horizontal filter layouts are now available in Summer CMS. Also there is an option to add custom icons to filters.

The SQL `LIKE` Operator has been added as a filter type in Summer CMS.

Regex `preg_match` has been added as a filter type in Summer CMS.

Filter dashboard has been completely re-designed in Summer CMS and displays the filtered results at the top and bottom of the web page.

### Themes 🔰

There are several themes that come as standard in Summer CMS, these include `dark` mode, `light` mode, `classic (October 1 theme)`, `standard (Summer CMS theme)`, `bootstrap` and `material`. The themes also use some new CSS4 standards and updates with some new Media Queries properties, you can learn more here: [Media Queries Level 4](https://www.w3.org/TR/mediaqueries-4/) and to find out all the latest CSS features being worked on by the w3c group can be found here: [CSS current work and what's new](https://www.w3.org/Style/CSS/current-work). Plus you can create and add your own themes easily now with a dedicated section.

Summer CMS has been designed to work in various environments according to screen size and device, these can be grouped into the following areas (starting from smallest screen size through to largest): `smart watches` e.g. 320px, `smart phones`, `tablets`, `computers` and `smart tv's` e.g. 8K resolution. Using modern api's and techniques to adjust features such as `animation` for higher screen sized devices only and internet connection for `data save` features etc. You can learn more here: [Delivering Fast and Light Applications with Save-Data](https://developers.google.com/web/fundamentals/performance/optimizing-content-efficiency/save-data).

### Fonts 🗛

October version one uses regular fonts and Summer CMS now uses variable fonts - this has improved User Experience for users using smaller screen devices such as phones and tablets, to learn more see here: [Variable Fonts](https://developers.google.com/web/fundamentals/design-and-ux/typography/variable-fonts)

To increase performance, Summer CMS also uses a combination of [preloading](https://developers.google.com/web/fundamentals/performance/optimizing-content-efficiency/webfont-optimization#preload_your_webfont_resources) and font-display using [CSS Fonts Module Level 4](https://drafts.csswg.org/css-fonts-4/#font-display-desc)

#### Gapping improvement :construction:

To fix and improve gapping issues on smaller resolution devices, Summer CMS uses the new `wdth` attribute with media queries. To learn more see here: [Variable fonts - wdth](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Fonts/Variable_Fonts_Guide#Width)

#### Optical improvement :eyeglasses:

MDN says the following:

> This is something new to digital fonts and CSS, but is actually a centuries-old technique in designing and creating metal type. Optical sizing refers to the practice of varying the overall stroke thickness of letterforms based on physical size.

Summer CMS uses a smart approach for smaller resolution devices! When the cms uses a thinner `wdth` on fonts we also improve the displayed font using the `opsz` property, helping to make the fonts even clearer on smaller screen width devices! To learn more see here: [Variable fonts - opsz](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Fonts/Variable_Fonts_Guide#Optical_size)

#### Italic improvement :small_red_triangle:

Many variable fonts do not contain an `italic` version. We use a variable font that contains two files, one for `normal` and one for `italic`. The result is a clearer italic displayed font finish.

#### Preloading :clock2:

The variable fonts are preloaded and use a fallback combination.

#### Fallback fonts :recycle:

Summer CMS uses the Google Noto libarary as the custom fallback fonts, see here: [Google Noto](https://www.google.com/get/noto/)

##### Are there any Noto YouTube videos I could share with others? :diamond_shape_with_a_dot_inside:

Some of the videos on Noto which one can find on YouTube are:

* [Creating Noto for Google](https://www.youtube.com/watch?v=16_NYHUZ1kM)

* [Google’s International Fonts Noto — One Font to Rule Them All](https://www.youtube.com/watch?v=AAzvk9HSi84)

#### International language support :u7533:

We follow the web standards set out for international font support, below are some examples, to better understand:

For a Japanese website:

```css
font-family: "Noto Sans", "Noto Sans CJK JP", sans-serif;
```

For a website targeting Hindi, and then Tamil users

```css
font-family: "Noto Sans Devanagari", "Noto Sans Tamil", "Noto Sans", sans-serif;
```

For an Arabic website that needs to use an UI font for UI elements, such as buttons and tabs, that have more strict vertical space:

```css
font-family: "Noto Naskh Arabic UI", "Noto Sans UI", sans-serif;
```

For a website targeting Armenian and Georgian users who prefer serif style:

```css
font-family: "Noto Serif Armenian", "Noto Serif Georgian", "Noto Serif", serif;
```

All font loading in Summer CMS is `dynamic` and not `static` making Summer CMS more customizable for user experience!

### Searchbox 🔍

October version one had a very annoying bug where the top menu, tabs and the search box would display in the middle of the screen and then jump across to the right hand side! This bug was caused because the elements were getting calculated using a javascript `data-calculate-width` function. In Summer CMS we have ripped out that javascript and the elements now use modern flexbox css styling instead to eliminate the elements jumping about on page load.

The search box has been re-designed with a more modern design in Summer CMS and added sub-level searches.

### Smart Speakers and Voice API's 🔊

- The main Summer CMS repo has added support for `Voice Actions` and voice api's. To learn more about Voice Actions see here: [Google Developers Voice Actions](https://developers.google.com/voice-actions)

- The security module in Summer CMS has added support for `Smart Speakers`. Along with support of `Games Consoles`, `Smart TV's`, `Smart Setup Box`, `Smart Watches`, `Tablets`, `Laptops`, `Computers`, `Smart Phones`, `Tablets`, `Phablets` and `Wearable Tech` (**more to be added over time**)!

### Dashboard 📄

The reporting widget called `System Status` will display **security issues** and **production modes check issues** where a link will also redirect the user to a dedicated security dashboard showing all the security related issues.

In October one the dashboard used the Isotope library, since then many advances in technology have been created such as Flexbox and modern drag n drop libraries and api's. Summer CMS uses a more modern library to handle the drag n drop. All widgets are now fully responsive and down scaling the screen has been fixed to give a much more smoother experience! New features include importing and exporting dashboard layouts and a whole bunch of common reporting widgets you find in other competitor cms dashboards as standard.

### Plugin / App isolation 🦄

This feature works the same way as Google's [Site Isolation](https://www.chromium.org/Home/chromium-security/site-isolation), in Summer CMS plugins and apps are sandboxed to prevent any malicious software spreading in the cms! This is the same way a sandbox program like [Sandboxie](https://www.sandboxie.com/) works.

### Error Tracking 🐞

In Summer CMS the events log section has been removed and renamed to `Error Tracking` and now uses Laravel's [Ignition](https://github.com/facade/ignition) for tracking errors. The package has been modified to add extra features to Summer CMS such as: Perform self diagnosis checks, added a code editor to the stack trace tab, allow downloading error reports via (`.csv` and `.json`), send reports and notifications to email clients, create error category tags, assign errors to individual developer team memebers, share the error report, lookup the error message to various platforms such as [Stack Overflow](https://stackoverflow.com/) and [Laracasts](https://laracasts.com/), show your migrations and their status and many more features.

Summer CMS has updated the backend error phraser and removed the `three dots` hiding various links and identities, in the `Error Tracking` section. There was no need to hide important information in the backend, **this protection only applies to the frontend now!** Thus making bug testing and error handling much easier for developers working on plugins, apps and themes.

### Debug mode 🐛

In Summer CMS you can set `debug mode` to display errors to a set of ip addresses - useful for working on live production websites (where you want to hide the stack logs to real users).

### Improved visual perceptual colors 🤓

October version one suffered from generating and displaying hard to visualize perceptual colors in data displaying widgets and scoreboards, take the following example:

<p align="center"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/perceptual-colors-1.png"></p>

In the above example, October version one creates several table columns, notice columns 2 and 3 are hard to see red and orange, likewise with columns 5,6,7 and 8 are all using red's and orange colors, lastly the last two columns use orange and yellow next to each other. This makes it harder on the human's eye to visualize the data.

Summer CMS uses an intelligent scoring system to create easier to visualize data displays, the scoring system is made up of four main parts:

#### Perceptual Distance 🌵

Increasing Perceptual Distance favors palette colors that are more easily discriminable to the human eye. To accurately model human color acuity, this is performed using [CIEDE2000](https://en.wikipedia.org/wiki/Color_difference#CIEDE2000) in CIE Lab color space.

#### Name Difference 🌴

Increasing Name Difference favors palette colors that share few common names. This is similar to perceptual distance, but can lead to different results in certain areas of color space. This happens when there are many different names for perceptually close colors (e.g., red and pink are perceptually close but named differently). Colorgorical calculates this using Heer and Stone's Name Difference function, which is built on top of the XKCD color-name survey.

#### Pair Preference 🌲

Increasing Pair Preference favors palette colors that are, on average, predicted to be more aesthetically preferable together. Typically these colors are similar in hue, have different lightness, and are cooler colors (blues and greens). Pair Preference is based off of [Schloss and Palmer's research](https://www.ncbi.nlm.nih.gov/pubmed/21264737) on color preference.

#### Name Uniqueness 🌳

Increasing Name Uniqueness favors palette colors that are uniquely named. Some colors like red are readily named and are favored, whereas other colors are less obviously named and are ignored. Like, Name Difference, Name Uniqueness is based on Heer and Stone's color-name research.

Now let's see the same chart but in Summer CMS using an intelligent visualize color system:

<p align="center"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/perceptual-colors-2.png"></p>

In the above example, Summer CMS's data is clearer and easier to view on the human eyes!

> The security module's analytics section uses this system to enhance the visual data!

### Reducing seizure risk 🌝

Photosensitive seizures can be provoked by certain types of flashing in web or computer content, including mouse-overs that cause large areas of the screen to rapidly flash on and off repeatedly. Hazardous, seizure-inducing content has been inadvertently broadcast on television in the past, causing mass seizures in children. As web content becomes more dynamic and media-rich, it is important to prevent similar problems.

To minimize the risk of visually induced seizures, web designers and computer software developers should become familiar with the triggers of photosensitive disorder seizures. Content to consider includes bright and rapid flashes, especially red flash, and some spatial patterns. The [Web Content Accessibility Guidelines 2.0](http://www.w3.org/TR/WCAG20/) provides recommendations for using these forms of content safely. These guidelines include restrictions related to frequency, luminance, area and color of any flashing.

In general, web or computer content will not provoke seizures if either of the following is true:

- There are no more than three general flashes and no more than three red flashes within any one-second period, or
- The combined area of flashes occurring concurrently occupies no more than a total of one quarter of any 341 x 256 pixel rectangle anywhere on the displayed screen area when the content is viewed at 1024 by 768 pixels.

> This module and other modules in Summer CMS has been tested using the Photosensitive Epilepsy Analysis Tool (PEAT), a download can be found here: https://trace.umd.edu/sites/trace.umd.edu/files/peat_2017-02-15.zip

Note: The above tool has been virus scanned: https://www.virustotal.com/gui/url/e3580eaef2630fdb750b76bd09852246e5537fe56c8c999469b9867e6eac56d9/detection

## Issues 🔨

<img alt="GitHub closed issues" src="https://img.shields.io/github/issues-closed-raw/ayumi-cloud/oc-security-module?style=plastic"> <img alt="GitHub issues" src="https://img.shields.io/github/issues-raw/ayumi-cloud/oc-security-module">

If you face any issue, you can create a new issue in the Issues Tab and we will be glad to help you out!

### Completed Issues 🏆

<p align="center"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/buttons/issues-200.png"></p>

## Reporting a Vulnerability 💥

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

## Code of Conduct 💯

In order to ensure that the Summer CMS proposal community is welcoming to all, please review and abide by the [Code of Conduct](https://github.com/ayumi-cloud/oc-security-module/blob/master/CODE_OF_CONDUCT.md).

## For Future 🔮

Shoutout to people willing to contribute to this project. Please take a look at the [projects board](https://github.com/ayumi-cloud/oc-security-module/projects) for a list of things to be done.

## Contributing ✨

<p align="center"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/buttons/builtWith.svg"></p>

If you find any bugs in the code or have any improvements in mind then feel free to generate a pull request.

**Note:** Please use Unit Testing and Coding Best Practices in order to have a valid pull request 😉

Patches and pull requests are encouraged. All code should follow the [PSR-1](https://www.php-fig.org/psr/psr-1/) and [PSR-2](https://www.php-fig.org/psr/psr-2/) style guidelines. **Please include unit tests whenever possible!**

### Firewall caching system 🌀

The security module supports [PSR-6](https://www.php-fig.org/psr/psr-6/) compatible cache adapters for caching results between requests. Using a cache is especially useful, with the firewall being loaded on every page of your website and a user visits multiple pages. During the first visit the headers will be parsed and the result will be cached. Upon further visits, the cached header results will be used, which is much faster than having to parse the headers again and again. While the firewall divides up it's workflow between cached and non-cached tasks.

There are adapters available for other types of caches, such as `APC`, `Doctrine`, `Memcached`, `MongoDB`, `Redis` and many more. The configuration of these adapters all differ from each other, but once configured, all you have to do is pass it as an option when creating the `Parser` object, or use the `setCache()` function to set it afterwards. The security module has been tested to work with the adapters provided by [PHP Cache](http://php-cache.readthedocs.org/en/latest/). For a list of other packages that provide adapters see [Packagist cache-implementation](https://packagist.org/providers/psr/cache-implementation).

### PSR ♻️

This security module uses some PSR standards to be the most interoperable possible:

- [PSR-6](https://www.php-fig.org/psr/psr-6/) Caching Interface.
- [PSR-7](https://www.php-fig.org/psr/psr-7/) Standard interfaces to represent http requests, responses and uris.
- [PSR-17](https://www.php-fig.org/psr/psr-17/) Standard factories to create PSR-7 objects.
- [PSR-18](https://www.php-fig.org/psr/psr-18/) Standard interface to send a http request and return a response.

We also suggest using Cross-browser testing provided by BrowserStack (*) where a real-browser can't be used in-house.

<p align="center"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/browser-stack.png"></p>

## Semantic Versioning ✅

The Security Module code uses [Semantic Versioning](https://semver.org/).

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

<p align="center"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/semantic.png"></p>

## Security Module Penetration Testing Method 💪

We use the following standards set by the Open Web Application Security Project (OWASP) which is an online community that produces freely-available articles, methodologies, documentation, tools and technologies in the field of web application security.

### Information Gathering 🐾

- Spiders, Robots and Crawlers (OWASP-IG-001)

- Search Engine Discovery/Reconnaissance (OWASP-IG-002)

- Identify application entry points (OWASP-IG-003)

- Testing for Web Application Fingerprint (OWASP-IG-004)

- Application Discovery (OWASP-IG-005)

- Analysis of Error Codes (OWASP-IG-006)

### Configuration Management Testing 📕

- SSL/TLS Testing (SSL Version, Algorithms, Key length, Digital Cert. Validity) (OWASP-CM-001)

- DB Listener Testing (OWASP-CM-002)

- Infrastructure Configuration Management Testing (OWASP-CM-003)

- Application Configuration Management Testing (OWASP-CM-004)

- Testing for File Extensions Handling (OWASP-CM-005)

- Old, Backup and Unreferenced Files (OWASP-CM-006)

- Infrastructure and Application Admin Interfaces (OWASP-CM-007)

- Testing for HTTP Methods and Cross Site Tracing (XST) (OWASP-CM-008)

### Authentication Testing 📗

- Credentials transport over an encrypted channel (OWASP-AT-001)

- Testing for user enumeration (OWASP-AT-002)

- Testing for Guessable (Dictionary) User Account (OWASP-AT-003)

- Brute Force Testing (OWASP-AT-004)

- Testing for bypassing authentication schema (OWASP-AT-005)

- Testing for vulnerable remember password and pwd reset (OWASP-AT-006)

- Testing for Logout and Browser Cache Management (OWASP-AT-007)

- Testing for CAPTCHA (OWASP-AT-008)

- Testing Multiple Factors Authentication (OWASP-AT-009)

- Testing for Race Conditions (OWASP-AT-010)

### Session Management Testing 📘

- Testing for Session Management Schema (OWASP-SM-001)

- Testing for Cookies attributes (OWASP-SM-002)

- Testing for Session Fixation (OWASP-SM-003)

- Testing for Exposed Session Variables (OWASP-SM-004)

- Testing for Cross Site Request Forgery (CSRF) (OWASP-SM-005)

### Authorization Testing 📒

- Testing for path traversal (OWASP-AZ-001)

- Testing for bypassing authorization schema (OWASP-AZ-002)

- Testing for Privilege Escalation (OWASP-AZ-003)

- Business Logic Testing (OWASP-BL-001)

### Data Validation Testing 📔

- Testing for Reflected Cross Site Scripting (OWASP-DV-001)

- Testing for Stored Cross Site Scripting (OWASP-DV-002)

- Testing for DOM based Cross Site Scripting (OWASP-DV-003)

- Testing for Cross Site Flashing (OWASP-DV-004)

- Testing for SQL Injection (OWASP-DV-005)

  - Oracle Testing

  - MySQL Testing

  - SQL Server Testing

  - MS Access Testing

  - Testing PostgreSQL (from OWASP BSP)

- Testing for LDAP Injection (OWASP-DV-006)

- Testing for ORM Injection (OWASP-DV-007)

- Testing for XML Injection (OWASP-DV-008)

- Testing for SSI Injection (OWASP-DV-009)

- Testing for XPath Injection (OWASP-DV-010)

- IMAP/SMTP Injection (OWASP-DV-011)

- Testing for Code Injection (OWASP-DV-012)

- Testing for Command Injection (OWASP-DV-013)

- Testing for Buffer overflow (OWASP-DV-014)

  - Testing for Heap overflow

  - Testing for Stack overflow

  - Testing for Format string

- Testing for incubated vulnerabilities (OWASP-DV-015)

- Testing for HTTP Splitting/Smuggling (OWASP-DV-016)

### Testing for Denial of Service 📓

- Testing for SQL Wildcard Attacks (OWASP-DS-001)

- Testing for DoS Locking Customer Accounts (OWASP-DS-002)

- Testing for DoS Buffer Overflows (OWASP-DS-003)

- Testing for DoS User Specified Object Allocation (OWASP-DS-004)

- Testing for User Input as a Loop Counter (OWASP-DS-005)

- Testing for Writing User Provided Data to Disk (OWASP-DS-006)

- Testing for DoS Failure to Release Resources (OWASP-DS-007)

- Testing for Storing too Much Data in Session (OWASP-DS-008)

### Web Services Testing 📒

- WS Information Gathering (OWASP-WS-001)

- Testing WSDL (OWASP-WS-002)

- XML Structural Testing (OWASP-WS-003)

- XML Content-level Testing (OWASP-WS-004)

- HTTP GET parameters/REST Testing (OWASP-WS-005)

- Naughty SOAP attachments (OWASP-WS-006)

- Replay Testing (OWASP-WS-007)

### AJAX Testing 📚

- AJAX Vulnerabilities (OWASP-AJ-001)

- How to test AJAX (OWASP-AJ-002)

## Copyright and License 📄

<p align="left"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/buttons/mit.svg"></p>

This is free software, licensed under the MIT, Open Source Initiative.

[⬆ back to top](#table-of-contents)

<p align="center"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/luv.png"></p>
