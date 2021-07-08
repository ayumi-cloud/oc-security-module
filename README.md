<h1 align="center">Summer CMS - Security Module</h1>
<p align="center">(Being heavily coded in private repos at the moment - we look forward to publity releasing a candidate release)</p>

<p align="center"><img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/code.svg"> <img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/buttons/stars.svg" alt="stars"> <img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/buttons/php.svg"> <img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/laravel-badge.png" alt="laravel"> <img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/buttons/conduct.svg" alt="conduct"> <img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/buttons/docs.svg" alt="docs"></p>

<p align="center"><img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/banner.jpg"></p>

## Summer CMS Modules :eyes:

**Note: This is the security module for Summer CMS, see here for the full list of [Summer CMS Modules](https://github.com/summercms/sc-main/blob/main/README.md#summercms-modules-).**

## Table of Contents 📑

- [Transparency](#transparency-)
- [Introduction](#introduction-)
- [Privacy as Default](#privacy-as-default-)
  - [General Data Protection Regulation (GDPR)](#general-data-protection-regulation-gdpr-)
  - [ePrivacy Regulation](#eprivacy-regulation-)
  - [California Consumer Privacy Act (CCPA)](#california-consumer-privacy-act-ccpa-)
  - [Strong Customer Authentication (SCA) ](#strong-customer-authentication-sca-)
  - [The Second Payment Services Directive (PSD2)](#the-second-payment-services-directive-psd2-)
  - [Federated Learning of Cohorts (FLoC)](#floc-)
  - [Cookies](#cookies-)
    - [SameParty Cookie Attribute](#sameparty-cookie-attribute-)
- [Vanilla Code](#vanilla-code-)
- [Naming Prefix](#naming-prefix-%EF%B8%8F)
- [Requirements](#requirements-)
- [Machine Learning](#machine-learning-computer)
- [Big data](#big-data-)
- [Citation](#citation-)
- [API's](#apis-gem)
- [Deprecations and removals](#deprecations-and-removals-)
- [Enhancements](#enhancements-)
- [Tested on these attacks](#tested-on-these-attacks-%EF%B8%8F)
- [Installation](#installation-%EF%B8%8F)
- [Enabling Two-Factor Authentication (2FA)](#enabling-two-factor-authentication-2fa-)
- [Enabling Universal 2nd Factor (U2F)](#enabling-universal-2nd-factor-u2f-)
- [Security Component Version Files](#security-component-version-files-)
    - [Location Definitions Version](#location-definitions-version)
    - [Parser Definitions Version](#parser-definitions-version)
    - [Firewall Definitions Version](#firewall-definitions-version)
    - [Server Definitions Version](#server-definitions-version)
    - [Security Core Version](#security-core-version)
- [Summer CMS Firewall API's](#summercms-firewall-apis-)
- [Issues](#issues-)
- [Troubleshooting](#troubleshooting-)
    - [Something](#something-)
- [Reporting a Vulnerability](#reporting-a-vulnerability-)
- [Code of Conduct](#code-of-conduct-)
- [For Future](#for-future-)
- [Browser Support](#browser-support-)
    - [Notes](#notes)
- [Changelog](#changelog-)
- [Contributions, Feature Requests and Feedback](#contributions-feature-requests-and-feedback-)
    - [Testers](#testers-)
        - [With testing](#with-testing-)
        - [Without testing](#without-testing-)
        - [Gitpod](#gitpod-)
- [Firewall caching system](#firewall-caching-system-)
- [PSR](#psr-%EF%B8%8F)
- [PHP Coding Standards Fixer](#php-coding-standards-fixer-)
    - [Installation](#installation-)
    - [Usage](#usage-)
    - [Testing](#testing-%EF%B8%8F)
- [Semantic Versioning](#semantic-versioning-)
- [Security Module Penetration Testing Method](#security-module-penetration-testing-method-)
    - [Information Gathering](#information-gathering-)
    - [Configuration Management Testing](#configuration-management-testing-)
    - [Authentication Testing](#authentication-testing-)
    - [Session Management Testing](#session-management-testing-)
    - [Authorization Testing](#authorization-testing-)
    - [Data Validation Testing](#data-validation-testing-)
    - [Testing for Denial of Service](#testing-for-denial-of-service-)
    - [Web Services Testing](#web-services-testing-)
    - [AJAX Testing](#ajax-testing-)
- [Copyright and License](#copyright-and-license-) 

## Transparency 📢

This project is completely transparent and honest, before we started we contacted and discussed this project with the authors and admins of the October project. We have given the links to this repo to the authors and we continue to be transparent throughout the whole process! We feel it's important to state this and be open from day one! This repo contains one module, of many other modules all dedicated to different sections of the Summer CMS upgrade proposal. Instead of writing ideas and suggestions, we have taken a pro-active approach and are actively coding a fully working solution! The code is held on private repo's, due to the code being heavily developed and changed on a daily basis. We will release a stable test release to the admins and authors in private for feedback before releasing to the general public for beta-testing. This is a long-term project and we will continue to grow!

Over years we have coded and created well over a hundred pull requests (under various github accounts) which have been merged to the October core, we have never asked or recevived any money for any of the pull requests. We use the cms for professional purposes and therefore it is beneficial for our companies to have a professional working solution to give to our end-users and clients. In order for us to delivery a high quality product we made the discussion to update the cms with new and exciting features and modernize old and existing features, there are breaking change!

## Introduction ⭐

The main purpose of the security module is to harden the Summer CMS against a variety of attack vectors. The security module can be broken into the various parts:

- Real-time Server Security Protection.
- Real-time Frontend Firewall (with full dashboards to view all the data).
- Real-time Backend Firewall (with full dashboards to view all the data).
- Firewall Analytics (displays all the incoming/outgoing traffic data through the firewall).
- Firewall Custom API's (for full details see: [Summer CMS Firewall API](https://github.com/summercms/sc-security-module/tree/master/docs/api) section).
- File Watcher (notifies the webmaster for file changes).
- Junk file/folder Scanner (scans the Summer CMS for any junk files or folders (e.g. `.github` folder in a `vendor` folder and allows the user to delete them).
- Plugin Scanner (check plugins for any security issues and code conflicts).
- Malware Scanner (checks the cms core code any security issues and code conflicts).
- Database and CMS Backups (to protect against Ransomware attacks).
- Summer CMS System Infomation.
- Production Mode Checks.
- Firewall Filters.
- Testing and monitoring DNS settings and SSL/TLS certificates.
- Testing and monitoring HTTPS, Mixed Content, HTTP/1.1, Request Smuggling Protection, HTTP/2 and Server Push, QUIC and HTTP/3 etc.
- Blocking old technologies such as HTTP/0.9, HTTP/1.0, SSL 1.0, 2.0, 3.0, TLS 1.0, 1.1 etc.
- Intelligent caching system to increase performance and web cache poisoning protection.
- Automated setup of HTTP security headers.
- Enhanced security for storage features such as cookies, trust tokens, web SQL and IndexedDb etc.
- Custom templates for many special HTTP response status codes.
- Monitor and track missing content in real-time.
- Detect and track legal jurisdictions in real-time.
- Enable Two-Factor Authentication (2FA) and Universal 2nd Factor (U2F) account protection.
- Many Security Tools (too many to mention).

## Privacy as Default 👀

The Summer CMS takes privacy and user data seriously, we strongly believe in putting the user first and being fully transparent! Below lists some major components. However, for a full list see the legal module section here: https://github.com/summercms/sc-legal-module#goals-soccer

### General Data Protection Regulation (GDPR) 🔔

<p align="center"><img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/gdpr.jpg"></p>

The General Data Protection Regulation (GDPR) is one of the most wide-ranging pieces of legislation passed by the EU in recent memory. It was introduced to standardise data protection law across the single market and give people in a growing digital economy greater control over how their personal information is used. Summer CMS has a dedicated legal module to easily complie with current laws and sets the `opt-out` as the default and allows webmasters and users can then `opt-in`.

### ePrivacy Regulation 🔔

<p align="center"><img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/eprivacy.jpg"></p>

The ePrivacy Regulation will complement the GDPR’s general rules on personal data processing by providing specific rules governing electronic communications.

As such, the ePrivacy Regulation will take precedent over the GDPR in situations where both laws apply.

Note that, unlike the GDPR, the ePrivacy Regulation does not apply to just personal data. It also affects, for instance, B2B marketing.

Summer CMS has a dedicated legal module to easily complie with current laws and sets the `opt-out` as the default and allows webmasters and users can then `opt-in`.

### California Consumer Privacy Act (CCPA) 🔔

<p align="center"><img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/ccpa.jpg"></p>

The California Consumer Privacy Act (CCPA) is a law that allows any California consumer to demand to see all the information a company has saved on them, as well as a full list of all the third parties that data is shared with.

Businesses are subject to CCPA if they meet the requirements of having gross annual revenues of more than $25 million; buy, receive or sell the personal information of 50,000 or more consumers, households or devices in California; or derive 50% or more annual revenue from selling consumers' personal information.

The CCPA requires business privacy policies to include information on consumers' privacy rights and how to exercise them: the Right to Know, the Right to Delete, the Right to Opt-Out of Sale and the Right to Non-Discrimination.

Summer CMS has a dedicated legal module to easily complie with current laws and sets the `opt-out` as the default and allows webmasters and users can then `opt-in`.

### Strong Customer Authentication (SCA) 🔔

<p align="center"><img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/sca.png"></p>

Strong Customer Authentication (SCA) is a new European regulatory requirement to reduce fraud and make online payments more secure. To accept payments and meet SCA requirements, you need to build additional authentication into your checkout flow.

Summer CMS has a dedicated legal module to easily complie with current laws and customize secure settings and sca notices.

### The Second Payment Services Directive (PSD2) 🔔

<p align="center"><img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/psd2.jpg"></p>

The Payment Services Directive Two (PSD2) is a piece of legislation designed to force providers of payment services to improve customer authentication processes and to also bring in new regulation around third-party involvement.

Summer CMS has a dedicated legal module to easily complie with current laws and customize secure settings and sca notices.

### Federated Learning of Cohorts (FLoC) 🔔

<p align="center"><img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/floc.png"></p>

FLoC enables ad selection without sharing the browsing behaviour of individual users. A site should be able to declare that it does not want to be included in the user's list of sites for cohort calculation. Summer CMS puts it's users privacy first and so sets the `opt-out` as the default, webmasters and users can then `opt-in`. This also passes GDPR/ePrivacy laws.

FLoC is part of a suite intended to bring targeted ads into a privacy-preserving future. But the core design involves sharing new information with advertisers. Unsurprisingly, this also creates new privacy risks.

The first issue is fingerprinting. Browser fingerprinting is the practice of gathering many discrete pieces of information from a user’s browser to create a unique, stable identifier for that browser.

The second problem is less easily explained away: the technology will share new personal data with trackers who can already identify users. For FLoC to be useful to advertisers, a user’s cohort will necessarily reveal information about their behavior.

### Cookies 🔔

<p align="center"><img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/cookie.svg" width="250" height="250"></p>

Cookies in Summer CMS auto detect if the cms is being hosted from a secure connection and sets the following default for https connections:

Attribute | Default Value | Description
---|---|---
Prefix | `__Secure-` | Set to `__Secure-` automatically on `secure` connections and not `__Host-` to allow subdomains.
Expires | session: `1 day`, modules: `3 months` | The main cms session cookie is set to a `single day`, the cookies for modules are set longer at `3 months`. End-users can change the cookie expiry dates of all cookies using the legal module on the frontend. Allowing Summer CMS to be fully compliant with GDPR and ePrivacy laws.
Max-Age | lifetime: `120`, expire on close: `false` | This can be setup and changed using the config file `session.lifetime` value. 
HttpOnly | `true` | Forbids JavaScript from accessing the cookie. This can be setup and changed using the config file `session.http_only` value. 
Secure | `true` | Cookie is only sent to the server when a request is made with the `https:` scheme (except on localhost) and therefore is more resistent to `man-in-the-middle` attacks. This can be setup and changed using the config file `session.secure` value. 
SameSite | `Lax` | Controls whether a cookie is sent with cross-origin requests, providing some protection against cross-site request forgery attacks (CSRF). This can be setup and changed using the config file `session.same_site` value. 
SameParty | `none` | This is currently an Origin Trial in Chrome 89 and greater browsers only. Adding `SameParty` to a cookie that would otherwise be subject to the "[Lax](https://tools.ietf.org/html/draft-ietf-httpbis-rfc6265bis-05#section-5.3.7.1)" or "[Lax-allowing-unsafe](https://tools.ietf.org/html/draft-west-cookie-incrementalism-01#section-3.1.1)" enforcement modes of `SameSite` weakens security properties by expanding the set of contexts in which the cookie may be accessed. This can be setup and changed using the config file `session.same_party` value. 

#### SameParty Cookie Attribute 🍪

**A `SameParty` cookie is included in an HTTP request if the origins of the requested URL and all of the ancestor frames in the target browsing context belong to the same First-Party Set.** For example, a top-level navigation will always send `SameParty` cookies. Note that requests are treated the same regardless of the HTTP method (GET, POST, etc.), and the origin of the request initiator does not factor into whether the `SameParty` cookie should be allowed.

For example, suppose that owner.example owns a First-Party Set containing {member1.example, member2.example}. Then a `SameParty` cookie set by member1.example **would be sent** to https://member1.example in the following contexts:

<p align="center"><img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/same_party_table.png"></p>

## Vanilla Code 🍦

<p align="center"><img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/vanilla.jpg"></p>

Vanilla often refers to **pure** or **plain**. So in terms of programming languages, it means either without the use of **3rd party libraries** or without the use of **frameworks**.

The `core` files and `modules` in Summer CMS use `Laravel`, an open-source PHP web framework. However, all the styling, javascript and data interchange formats have been written using `vanilla` code. This makes upgrading the code **quick** and **simple** without the constraints of relying solely on a single library or framework! Plus reducing the code size and optimizing the performance by reducing the overheads of loading third-party libraries (such as jQuery as an example). Summer CMS treats all third-party libraries and frameworks as optional extras and developers are welcome to use any of them to enhance their websites and applications using Summer CMS.

The [framework module](https://github.com/summercms/sc-framework-module) adds bridges and interconnects different frameworks to Summer CMS with ease to give a customized experience for each framework!

## Naming Prefix ✒️

**Summer CMS uses the `sc-` naming prefix to advoid conflicts.**

## Requirements 🚩

This module has been optimized to work with php `7.4.x` and `8.x.x` versions - we recommend upgrading from any lower php version.

> This module will not work with php below version 7.4

**A full list of requirements to install Summer CMS, can be found here: [Summer CMS Requirements](https://github.com/summercms/sc-main/blob/main/README.md#requirements-).**

## Machine Learning :computer:

This module uses machine learning to help detect security vulnerabilities.

## Big data 📊

This module uses several Big Data tool sets to analyze large amounts of data collected from various Big Data sources to model various attack methods. Some database sizes are in the petabytes and takes a few hours to run and process some models. These models are then used and tested in our definitions files where we run them in real-time and test them. We also have various non-disclosed test severs running to gather various attacks and add this data into our Big Data models to create either new firewall modules or definition files for the modules. This process helps us to build a more secure security module and helps speed up the build process. We fully rely on using large amounts of data and machine learning tools to process them!

## Citation 📚

<a href="https://zenodo.org/">
  <img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/buttons/citation.svg" />
</a>

If you use this security module for your research, then kindly cite it. Click the above badge for more information regarding the complete citation for this security module and the diffferent citation formats like: IEEE, APA, BibTeX, CSL, DataCite, Dublin Core, DCAT, JSON, JSON-LD, GeoJSON, MARCXML and Mendeley etc.

## API's :gem:

Below are some of the API's the security module uses (this is not a complete list):

- [Accept-CH Lifetime](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Accept-CH-Lifetime)
- [Accept-CH](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Accept-CH)
- [Accept-Charset](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Accept-Charset)
- [Accept-Language](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Accept-Language)
- [Access-Control-Allow-Credentials](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Credentials)
- [Access-Control-Allow-Headers](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Headers)
- [Access-Control-Allow-Methods](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Methods)
- [Access-Control-Allow-Origin](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Origin)
- [Accessible Rich Internet Applications WAI-ARIA 1.2](https://www.w3.org/TR/wai-aria-1.2/)
- [Alt-Svc](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Alt-Svc)
- [Brotli](https://github.com/google/brotli)
- [Cache-Control](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cache-Control)
- [Clear Site Data](https://www.w3.org/TR/clear-site-data/)
- [Content Security Policy Level 3](https://www.w3.org/TR/CSP3/)
- [Content-Encoding](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Encoding)
- [Content-Security-Policy-Report-Only](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy-Report-Only)
- [Cross-Origin Resource Sharing 'CORS'](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS)
- [Cross-Origin-Embedder-Policy 'COEP'](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cross-Origin-Embedder-Policy)
- [Cross-Origin-Opener-Policy 'COOP'](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cross-Origin-Opener-Policy)
- [Cross-Origin-Resource-Policy 'CORP'](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cross-Origin-Resource-Policy)
- [CSP: report-to](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy/report-to)
- [CSP: trusted-types](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy/trusted-types)
- [Device-Memory](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Device-Memory)
- [DNT](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/DNT)
- [DPR](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/DPR)
- [ETag](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/ETag)
- [Expect-CT](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Expect-CT)
- [Expires](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Expires)
- [Feature Policy (also Permissions Policy)](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Feature-Policy)
- [Federated Learning of Cohorts (FLoC)](https://github.com/WICG/floc)
- [Fetch Metadata Request Headers](https://w3c.github.io/webappsec-fetch-metadata/)
- [Fetch](https://fetch.spec.whatwg.org/)
- [First-Party Sets](https://github.com/privacycg/first-party-sets)
- [GNU Gzip](https://www.gnu.org/software/gzip/)
- [HTTP Strict Transport Security 'HSTS'](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security)
- [HTTP X-Content-Type-Options](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Content-Type-Options)
- [HTTP X-Frame-Options](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options)
- [HttpOnly](https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies)
- [HTTPS 'HyperText Transfer Protocol Secure'](https://developers.google.com/search/docs/advanced/security/https)
- [Intersection Observer](https://www.w3.org/TR/intersection-observer/)
- [Last-Modified](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Last-Modified)
- [Mixed Content Level 2](https://w3c.github.io/webappsec-mixed-content/)
- [MutationObserver](https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver)
- [Native Lazy loading](https://developer.mozilla.org/en-US/docs/Web/Performance/Lazy_loading)
- [Network Error Logging](https://www.w3.org/TR/network-error-logging-1/)
- [Origin-Agent-Cluster](https://html.spec.whatwg.org/multipage/origin.html#origin-keyed-agent-clusters)
- [Permissions Policy](https://w3c.github.io/webappsec-permissions-policy/)
- [Referrer Policy](https://www.w3.org/TR/referrer-policy/)
- [Reporting API](https://w3c.github.io/reporting/)
- [Same Origin Policy](https://www.w3.org/Security/wiki/Same_Origin_Policy)
- [SameParty](https://github.com/cfredric/sameparty)
- [SameSite](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Set-Cookie/SameSite)
- [Save-Data](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Save-Data)
- [Secure Contexts](https://www.w3.org/TR/secure-contexts/)
- [Secure](https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies)
- [Security.txt](https://tools.ietf.org/html/draft-foudil-securitytxt-10)
- [Subresource Integrity 'SRI'](https://www.w3.org/TR/SRI/)
- [Timing-Allow-Origin/Resource Timing Level 2](https://www.w3.org/TR/resource-timing-2/)
- [Transport layer security 'TLS'](https://developer.mozilla.org/en-US/docs/Web/Security/Transport_Layer_Security)
- [Trusted Types](https://w3c.github.io/webappsec-trusted-types/dist/spec/)
- [User-Agent Client Hints](https://wicg.github.io/ua-client-hints/)
- [User-Agent](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/User-Agent)
- [Vary](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Vary)
- [X-Permitted-Cross-Domain-Policies](https://owasp.org/www-project-secure-headers/)
- [X-XSS-Protection](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection)

## Deprecations and removals ⛔

- [Content Security Policy Level 1](https://www.w3.org/TR/CSP1/)
- [Content Security Policy Level 2](https://www.w3.org/TR/CSP2/)

The legal module has been optimized to work with CSP 3 and allow backwards compatibility with browsers supporting older CSP versions.

- [HTTP Public Key Pinning 'HPKP'](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Public-Key-Pins)

With support now gone in the last remaining browser, HPKP has been consigned to the scrap heap.

- [CSP: report-uri](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy/report-uri)

Switched over from using `report-uri` to using both `report-uri` and `report-to`.

## Enhancements ⭐

- The security has been optimized to work a long side modern browsers that support the **back/forward cache** (bfcache) api. To learn more about bfcache, see these resources:

    [Exploring a back/forward cache for Chrome](https://developers.google.com/web/updates/2019/02/back-forward-cache)

## Tested on these attacks 🛡️

- [Binary Planting](https://owasp.org/www-community/attacks/Binary_planting)
- [Blind SQL Injection](https://owasp.org/www-community/attacks/Blind_SQL_Injection)
- [Blind XPath Injection](https://owasp.org/www-community/attacks/Blind_XPath_Injection)
- [Brute Force Attack](https://owasp.org/www-community/attacks/Brute_force_attack)
- [Buffer Overflow via Environment Variables](https://owasp.org/www-community/attacks/Buffer_Overflow_via_Environment_Variables)
- [Buffer Overflow Attack](https://owasp.org/www-community/attacks/Buffer_overflow_attack)
- [CORS OriginHeaderScrutiny](https://owasp.org/www-community/attacks/CORS_OriginHeaderScrutiny)
- [CORS RequestPreflighScrutiny](https://owasp.org/www-community/attacks/CORS_RequestPreflighScrutiny)
- [CSV Injection](https://owasp.org/www-community/attacks/CSV_Injection)
- [Cache Poisoning](https://owasp.org/www-community/attacks/Cache_Poisoning)
- [Cash Overflow](https://owasp.org/www-community/attacks/Cash_Overflow)
- [Clickjacking](https://owasp.org/www-community/attacks/Clickjacking)
- [Code Injection](https://owasp.org/www-community/attacks/Code_Injection)
- [Command Injection](https://owasp.org/www-community/attacks/Command_Injection)
- [Comment Injection Attack](https://owasp.org/www-community/attacks/Comment_Injection_Attack)
- [Content Security Policy](https://owasp.org/www-community/attacks/Content_Security_Policy)
- [Content Spoofing](https://owasp.org/www-community/attacks/Content_Spoofing)
- [Cornucopia - Ecommerce Website Edition - Wiki Deck](https://owasp.org/www-community/attacks/Cornucopia_-_Ecommerce_Website_Edition_-_Wiki_Deck)
- [Credential stuffing](https://owasp.org/www-community/attacks/Credential_stuffing)
- [Cross-User Defacement](https://owasp.org/www-community/attacks/Cross-User_Defacement)
- [Cross Site Scripting (XSS)](https://owasp.org/www-community/attacks/xss/)
- [Cross Frame Scripting](https://owasp.org/www-community/attacks/Cross_Frame_Scripting)
- [Cross Site History Manipulation (XSHM)](https://owasp.org/www-community/attacks/Cross_Site_History_Manipulation_(XSHM))
- [Cross Site Request Forgery (CSRF)](https://owasp.org/www-community/attacks/csrf)
- [Cross-Site Script Inclusion (XSSI)](https://owasp.org/www-project-web-security-testing-guide/v41/4-Web_Application_Security_Testing/11-Client_Side_Testing/13-Testing_for_Cross_Site_Script_Inclusion.html)
- [Cross Site Tracing](https://owasp.org/www-community/attacks/Cross_Site_Tracing)
- [Cryptanalysiss](https://owasp.org/www-community/attacks/Cryptanalysis)
- [Custom Special Character Injection](https://owasp.org/www-community/attacks/Custom_Special_Character_Injection)
- [Denial of Service](https://owasp.org/www-community/attacks/Denial_of_Service)
- [Direct Dynamic Code Evaluation - Eval Injection](https://owasp.org/www-community/attacks/Direct_Dynamic_Code_Evaluation_Eval%20Injection)
- [Embedding Null Code](https://owasp.org/www-community/attacks/Embedding_Null_Code)
- [Execution After Redirect (EAR)](https://owasp.org/www-community/attacks/Execution_After_Redirect_(EAR))
- [Forced browsing](https://owasp.org/www-community/attacks/Forced_browsing)
- [Form action hijacking](https://owasp.org/www-community/attacks/Form_action_hijacking)
- [Format string attack](https://owasp.org/www-community/attacks/Format_string_attack)
- [Full Path Disclosure](https://owasp.org/www-community/attacks/Full_Path_Disclosure)
- [Function Injection](https://owasp.org/www-community/attacks/Function_Injection)
- [HTTP Response Splitting](https://owasp.org/www-community/attacks/HTTP_Response_Splitting)
- [LDAP Injection](https://owasp.org/www-community/attacks/LDAP_Injection)
- [Log Injection](https://owasp.org/www-community/attacks/Log_Injection)
- [Open Redirects](https://owasp.org/www-project-web-security-testing-guide/v41/4-Web_Application_Security_Testing/11-Client_Side_Testing/04-Testing_for_Client_Side_URL_Redirect)
- [Man-in-the-browser attack](https://owasp.org/www-community/attacks/Man-in-the-browser_attack)
- [Man-in-the-middle attack](https://owasp.org/www-community/attacks/Man-in-the-middle_attack)
- [Mobile code invoking untrusted mobile code](https://owasp.org/www-community/attacks/Mobile_code_invoking_untrusted_mobile_code)
- [Mobile code non-final public field](https://owasp.org/www-community/attacks/Mobile_code_non-final_public_field)
- [Mobile code object hijack](https://owasp.org/www-community/attacks/Mobile_code_object_hijack)
- [Parameter Delimiter](https://owasp.org/www-community/attacks/Parameter_Delimiter)
- [Path Traversal](https://owasp.org/www-community/attacks/Path_Traversal)
- [Qrljacking](https://owasp.org/www-community/attacks/Qrljacking)
- [Reflected DOM Injection](https://owasp.org/www-community/attacks/Reflected_DOM_Injection)
- [Regular expression Denial of Service - ReDoS](https://owasp.org/www-community/attacks/Regular_expression_Denial_of_Service_-_ReDoS)
- [Repudiation Attack](https://owasp.org/www-community/attacks/Repudiation_Attack)
- [Resource Injection](https://owasp.org/www-community/attacks/Resource_Injection)
- [Reverse Tabnabbing](https://owasp.org/www-community/attacks/Reverse_Tabnabbing)
- [SQL Injection](https://owasp.org/www-community/attacks/SQL_Injection)
- [Server-Side Includes (SSI) Injection](https://owasp.org/www-community/attacks/Server-Side_Includes_(SSI)_Injection)
- [Server Side Request Forgery](https://owasp.org/www-community/attacks/Server_Side_Request_Forgery)
- [Session Prediction](https://owasp.org/www-community/attacks/Session_Prediction)
- [Session fixation](https://owasp.org/www-community/attacks/Session_fixation)
- [Session hijacking attack](https://owasp.org/www-community/attacks/Session_hijacking_attack)
- [Setting Manipulation](https://owasp.org/www-community/attacks/Setting_Manipulation)
- [Special Element Injection](https://owasp.org/www-community/attacks/Special_Element_Injection)
- [Spyware](https://owasp.org/www-community/attacks/Spyware)
- [Subdomain Hijacking/Takeover](https://owasp.org/www-project-web-security-testing-guide/latest/4-Web_Application_Security_Testing/02-Configuration_and_Deployment_Management_Testing/10-Test_for_Subdomain_Takeover)
- [Traffic flood](https://owasp.org/www-community/attacks/Traffic_flood)
- [Trojan Horse](https://owasp.org/www-community/attacks/Trojan_Horse)
- [Unicode Encoding](https://owasp.org/www-community/attacks/Unicode_Encoding)
- [Web Parameter Tampering](https://owasp.org/www-community/attacks/Web_Parameter_Tampering)
- [Windows ::DATA Alternate Data Stream](https://owasp.org/www-community/attacks/Windows_alternate_data_stream)
- [XPATH Injection](https://owasp.org/www-community/attacks/XPATH_Injection)
- [XSRF](https://owasp.org/www-community/attacks/XSRF)
- [XSS in subtitle](https://owasp.org/www-community/attacks/Xss_in_subtitle)

## Installation ❤️

Users can setup the security modules security level during installation of Summer CMS, there are two main security levels to choose from during installation:

1. **Normal security level** - this turns off many security settings and allows users to turn on various security settings at a later date (useful for `localhost` and `developer` websites).

2. **Enhanced security level** - this turns on all the security settings (useful for `live` and `production` websites).

All the security settings can be configured at any time in the security module under the `Configuartion` section.

## Enabling Two-Factor Authentication (2FA) 🔐

To enable two-factor authentication, you'll need an app that supports TOTP such as [Authy](https://authy.com/download/), [Google Authenticator](https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2), or [KeePassXC](https://keepassxc.org/).

(This is not an exhaustive list of compatible apps. Summer CMS does not endorse or recommend one application over another).

## Enabling Universal 2nd Factor (U2F) 🔑

### Register new devices

Go to U2F register page and follow instruction to add a new u2f key to your account.

<p align="center"><img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/register.png"></p>

### Second factor login

Once you have registred a device you can logout.
If you try to login in again you will have an additionnal steps with your u2f key.

<p align="center"><img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/login.png"></p>

## Security Component Version Files 💾

### Location Definitions Version

Last Updated: 22nd June 2021 **(Version: 1.0.3)**

### Parser Definitions Version

<img alt="GitHub release (latest by date)" src="https://img.shields.io/github/v/release/summercms/sc-parser-module?include_prereleases">

### Firewall Definitions Version

Last Updated: 6th July 2021 **(Version: 7.3.2)**

### Server Definitions Version

Last Updated: 6th July 2021 **(Version: 5.0.0)**

### Security Core Version

Last Updated: 6th July 2021 **(Version: 2.0.0)**

(*) While the security module is under heavy development, the definition files will be updated periodically and not on a regular basis! When the security module moves in a production ready-mode, the definitions files will be updated on a regular basis every week.
  
## Summer CMS Firewall API's 🔥

The security module in Summer CMS comes with lots of dedicated API's to help developers:

- [Firewall APP Types API](https://github.com/summercms/sc-security-module/blob/master/docs/api/firewall_app_types.md)
- [Firewall Browser Types API](https://github.com/summercms/sc-security-module/blob/master/docs/api/firewall_browser_types.md)
- [Firewall Country API](https://github.com/summercms/sc-security-module/blob/master/docs/api/firewall_country.md)
- [Firewall Escaping API](https://github.com/summercms/sc-security-module/blob/master/docs/api/firewall_escaping.md)
- [Firewall HTTP Status Codes API](https://github.com/summercms/sc-security-module/blob/master/docs/api/firewall_http_status_codes.md)
- [Firewall Language API](https://github.com/summercms/sc-security-module/blob/master/docs/api/firewall_language.md)
- [Firewall Location API](https://github.com/summercms/sc-security-module/blob/master/docs/api/firewall_location.md)
- [Firewall Logging API](https://github.com/summercms/sc-security-module/blob/master/docs/api/firewall_logging.md)
- [Firewall Operating Systems API](https://github.com/summercms/sc-security-module/blob/master/docs/api/firewall_operating_systems.md)
- [Firewall Referrer Types API](https://github.com/summercms/sc-security-module/blob/master/docs/api/firewall_referrer_types.md)
- [Firewall Requests API](https://github.com/summercms/sc-security-module/blob/master/docs/api/firewall_requests.md)
- [Firewall Responses API](https://github.com/summercms/sc-security-module/blob/master/docs/api/firewall_responses.md)
- [Firewall Response Scores API](https://github.com/summercms/sc-security-module/blob/master/docs/api/firewall_response_score.md)
- [Firewall Social Media API](https://github.com/summercms/sc-security-module/blob/master/docs/api/firewall_social.md)
- [Firewall URI Schemes API](https://github.com/summercms/sc-security-module/blob/master/docs/api/firewall_uri_schemes.md)

(*) Note: The firewall is built in a modular design and more modules are being coded and tested as time goes on. There will be new api's added and the doc's will get updated. To suggest a new firewall feature open an issue.

The security module also uses with the following api's from other Summer CMS modules:

- [Developer Validating and Sanitizing API](https://github.com/summercms/sc-developer-module/blob/main/docs/api/developer_sanitizing_and_validating.md)

(*) Note: As time goes on more modules and api's will be added to the list to expand more features to the security module.

## Issues 🔨

<img alt="GitHub closed issues" src="https://img.shields.io/github/issues-closed-raw/summercms/sc-security-module?style=plastic"> <img alt="GitHub issues" src="https://img.shields.io/github/issues-raw/summercms/sc-security-module">

If you face any issue, you can create a new issue in the `Issues` tab and we will be glad to help you out!

## Troubleshooting 👿

### Something 💊

=== TO DO ===


## Reporting a Vulnerability 💥

We strive to make the code accessible to a wide audience of beginner and experienced users.

We welcome bug reports, false positive alert reports, evasions, usability issues, and suggestions for new detections. Submit these types of non-vulnerability related issues via Github.

Please include your installed version and the relevant portions of your audit log.

False negative or common bypasses should [create an issue](https://github.com/summercms/sc-security-module/issues/new) so they can be addressed.

Do this before submitting a vulnerability:

1) Verify that you have the latest version of Summer CMS.
2) Validate which Paranoia Level this bypass applies to. If it works in PL4, please send us an email.
3) If you detected anything that causes unexpected behavior of the engine via manipulation of existing provided rules, please send it by email.

We are happy to work with the community to provide CVE identifiers for any discovered security issues if requested.

If in doubt, feel free to reach out to us!

## Code of Conduct 💯

In order to ensure that the Summer CMS proposal community is welcoming to all, please review and abide by the [Code of Conduct](https://github.com/summercms/sc-security-module/blob/master/CODE_OF_CONDUCT.md).

## For Future 🔮

Shoutout to people willing to contribute to this project. Please take a look at the [projects board](https://github.com/summercms/sc-security-module/projects) for a list of things to be done.

## Browser Support ✅

The security module has been tested in the following browsers:

<table>
  <tr>
    <td align="center">
      <img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/browser/chrome_48x48.png" alt="Chrome"><br>
      ✔
    </td>
    <td align="center">
      <img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/browser/firefox_48x48.png" alt="Firefox"><br>
      ✔
    </td>
    <td align="center">
      <img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/browser/safari_48x48.png" alt="Safari"><br>
      9+
    </td>
    <td align="center">
      <img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/browser/edge_old_48x48.png" alt="Edge Legacy"><br>
      ✖ (1)
    </td>
    <td align="center">
      <img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/browser/edge_48x48.png" alt="Edge"><br>
      ✔
    </td>
    <td align="center">
      <img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/browser/internet-explorer_9-11_48x48.png" alt="Internet Explorer"><br>
      ✖ (2)
    </td>
    <td align="center">
      <img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/browser/opera_48x48.png" alt="Opera"><br>
      ✔
    </td>
    <td align="center">
      <img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/browser/samsung-internet_48x48.png" alt="Samsung"><br>
      ✔
    </td>
    <td align="center">
      <img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/browser/uc_48x48.png" alt="UC"><br>
      ✔
    </td>
    <td align="center">
      <img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/browser/vivaldi_48x48.png" alt="Vivaldi"><br>
      3+
    </td>
  </tr>
</table>

### Notes

(1) Microsoft announced on 17 August that Edge Legacy will have its life support switched off on 9 March 2021, Summer CMS will support Edge Chromium only.

(2) Internet Explorer version 1-11, Summer CMS will not support due to only supporting `Evergreen` brwosers.

For a full list of browser support with Summer CMS, see here: [Browser Support](https://github.com/summercms/sc-main/blob/main/docs/browser_support.md).

## Changelog 🏆

Please see [CHANGELOG](CHANGELOG.md) for more information what has changed recently.

## Contributions, Feature Requests and Feedback ✨

We are actively inviting new contributors! To start, please read the [contribution guide](CONTRIBUTING.md).

This project is only possible thanks to the work of many dedicated volunteers. Everyone is encouraged to help in ways large and small. Here are a few ways you can help:

- Read the current content and help us fix any spelling mistakes or grammatical errors.
- Choose an existing [issue](https://github.com/summercms/sc-security-module/issues) on GitHub and submit a pull request to fix it.
- Open a new issue to report an opportunity for improvement.

If you find any bugs in the code or have any improvements in mind then feel free to generate a pull request.

**Note:** Please use Unit Testing and Coding Best Practices in order to have a valid pull request 😉

Patches and pull requests are encouraged. All code should follow the [PSR-1](https://www.php-fig.org/psr/psr-1/) and [PSR-2](https://www.php-fig.org/psr/psr-2/) style guidelines. **Please include unit tests whenever possible!**

### Testers 😺

Get the `composer.json` file from the admins and install.

### With testing 🔺

```
composer update
```

### Without testing 🔻

```
composer update --no-dev
```

### Gitpod 🐥

Summer CMS has experimental support for [Gitpod](https://www.gitpod.io/), a pre-configured development environment that runs in your browser. To use Gitpod, click the button below and sign in with GitHub. Gitpod also offers a browser add-on, though it is not required.

[![Edit with Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/summercms/sc-security-module)

## Firewall caching system 🌀

The security module supports [PSR-6](https://www.php-fig.org/psr/psr-6/) compatible cache adapters for caching results between requests. Using a cache is especially useful, with the firewall being loaded on every page of your website and a user visits multiple pages. During the first visit the headers will be parsed and the result will be cached. Upon further visits, the cached header results will be used, which is much faster than having to parse the headers again and again. While the firewall divides up it's workflow between cached and non-cached tasks.

There are adapters available for other types of caches, such as `APC`, `Doctrine`, `Memcached`, `MongoDB`, `Redis` and many more. The configuration of these adapters all differ from each other, but once configured, all you have to do is pass it as an option when creating the `Parser` object, or use the `setCache()` function to set it afterwards. The security module has been tested to work with the adapters provided by [PHP Cache](http://php-cache.readthedocs.org/en/latest/). For a list of other packages that provide adapters see [Packagist cache-implementation](https://packagist.org/providers/psr/cache-implementation).

## PSR ♻️

This security module uses some PSR standards to be the most interoperable possible:

- [PSR-1](https://www.php-fig.org/psr/psr-1/) Basic Coding Standard.
- [PSR-2](https://www.php-fig.org/psr/psr-2/) Coding Style Guide.
- [PSR-6](https://www.php-fig.org/psr/psr-6/) Caching Interface.
- [PSR-7](https://www.php-fig.org/psr/psr-7/) Standard interfaces to represent http requests, responses and uris.
- [PSR-16](https://www.php-fig.org/psr/psr-16/) Common Interface for Caching Libraries.
- [PSR-17](https://www.php-fig.org/psr/psr-17/) Standard factories to create PSR-7 objects.
- [PSR-18](https://www.php-fig.org/psr/psr-18/) Standard interface to send a http request and return a response.

We also suggest using Cross-browser testing provided by BrowserStack (*) where a real-browser can't be used in-house.

<p align="center"><img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/browser-stack.png"></p>

## PHP Coding Standards Fixer ⭕

The PHP Coding Standards Fixer (PHP CS Fixer) tool fixes your code to follow standards; whether you want to follow PHP coding standards as defined in the PSR-1, PSR-2, etc., or other community driven ones like the Symfony one.

### Installation 🔹

The recommended way to install PHP CS Fixer is to use [Composer](https://getcomposer.org/download/) in a dedicated `composer.json` file in your project, for example in the
`tools/php-cs-fixer` directory:

```bash
$ mkdir --parents tools/php-cs-fixer
$ composer require --working-dir=tools/php-cs-fixer friendsofphp/php-cs-fixer
```

For more details and other installation methods, see: [PHP-CS-Fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer).

### Usage 🔸

Assuming you installed PHP CS Fixer as instructed above, you can run the following command to fix the files PHP files in the `src` directory:

```bash
$ tools/php-cs-fixer/vendor/bin/php-cs-fixer fix src
```

(*) Change the above command to the correct folder location.

### Testing ⚙️

The Parser module uses the following:

- A [PHPUnit](https://phpunit.de) test suite.
- A coding style compliance test suite using [PHP CS Fixer](http://cs.sensiolabs.org/).
- A code analysis compliance test suite using [PHPStan](https://github.com/phpstan/phpstan).

To run the tests, run the following command from the project folder.

```bash
$ composer test
```

## Semantic Versioning 🎁

The Summer CMS and all modules use: [Semantic Versioning](https://semver.org/).

<p align="center"><img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/semver.png"></p>

Semantic Versioning is a 3-component number in the format of `X.Y.Z` where:

- X stands for a major version.
- Y stands for a minor version.
- Z stands for a patch.

The goal of Semantic Versioning is to bring some sanity to the management of rapidly moving software release targets. As discussed above, 3 numbers i.e, `Major`, `Minor` and `Patch` are required to identify a software version. For example, if we take version `5.12.2`, then it has a `major` version of 5, a `minor` version of 12 and a `patch` version of 2.

Below are some scenarios when Summer CMS creates a new version release:

- Bump the value of X when breaking the existing API.
- Bump the value of Y when implementing new features in a backward-compatible way.
- Bump the value of Z when fixing bugs.

Pre-release metadata is identified by appending a hyphen to the end of the Semantic Versioning sequence. Thus a pre-release for version 1.0.0 could be `1.0.0-alpha.1`. Then if another build is needed, it would become `1.0.0-alpha.2` and so on. Note that names cannot contain leading zeros, but hyphens are allowed in names for pre-release identifiers.

Summer CMS uses the following pre-release metadata:

| Version     | Description        |
| ----------- | ------------------ |
| 3.3.x-aplha | The alpha phase of the release life cycle is the first phase of software testing. |
| 3.3.x-beta  | The beta phase follows after the alpha phase. A Beta phase generally begins when the software is feature complete but likely to contain a number of known or unknown bugs. |
| 3.3.x-rc    | A release candidate (RC), is a beta version with potential to becoming a stable product and is ready to release unless significant bugs emerge. |

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

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)

Everyone is permitted to copy and distribute copies of Summer CMS, but changing and hard forking are not allowed.

[⬆ back to top](#table-of-contents-)

<p align="center"><img src="https://github.com/summercms/sc-security-module/blob/master/src/assets/images/luv.png"></p>
