<h1 align="center">Codename: Summer CMS - Security Module</h1>
<p align="center">(our OCMS update proposal)</p>

<p align="center"><img src="https://github.com/ayumi-cloud/sc-security-module/blob/master/src/assets/images/code.svg"> <img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/buttons/stars.svg" alt="stars"> <img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/buttons/php.svg"> <img src="https://github.com/ayumi-cloud/sc-security-module/blob/master/src/assets/images/laravel-badge.png" alt="laravel"> <img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/buttons/conduct.svg" alt="conduct"> <img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/buttons/docs.svg" alt="docs"></p>

<p align="center"><img src="https://github.com/ayumi-cloud/sc-security-module/blob/master/src/assets/images/banner.jpg"></p>

This repo is to gather security enhancement ideas and to monitor progress. Feel free to add issues containing security ideas, requests and infomation.

**The security code is not held in this repo - but held in a private repo (being heavily developed!)**

---

## Summer CMS Modules :eyes:

**Note: (*) This is the security module, see here for the full list of [Summer CMS Modules](https://github.com/ayumi-cloud/sc-main/blob/main/README.md#summer-cms-modules-).**

## Table of Contents 📑

- [Transparency](#transparency-)







## Transparency 📢

This project is completely transparent and honest, before we started we contacted and discussed this project with the authors and admins of the October project. We have given the links to this repo to the authors and we continue to be transparent throughout the whole process! We feel it's important to state this and be open from day one! This repo contains one module, of many other modules all dedicated to different sections of the Summer CMS upgrade proposal. Instead of writing ideas and suggestions, we have taken a pro-active approach and are actively coding a fully working solution! The code is held on private repo's, due to the code being heavily developed and changed on a daily basis. We will release a stable test release to the admins and authors in private for feedback before releasing to the general public for beta-testing. This is a long-term project and we will continue to grow!

Over years we have coded and created well over a hundred pull requests (under various github accounts) which have been merged to the October core, we have never asked or recevived any money for any of the pull requests. We use the cms for professional purposes and therefore it is beneficial for our companies to have a professional working solution to give to our end-users and clients. In order for us to delivery a high quality product we made the discussion to update the cms with new and exciting features and modernize old and existing features, there are breaking change!

## Introduction ⭐

The main purpose of the security module is to harden the Summer CMS against a variety of attack vectors. The security module can be broken into the various parts:

- Real-time Server Security Protection.
- Real-time Frontend Firewall (with full dashboards to view all the data).
- Real-time Backtend Firewall (with full dashboards to view all the data).
- Firewall Analytics (displays all the incoming data from the frontend firewall).
- Firewall Custom API's (for full details see: [Summer CMS Firewall API](https://github.com/ayumi-cloud/sc-security-module/tree/master/docs/api) section).
- File Watcher (notifies the webmaster for file changes).
- Plugin Scanner (check plugins for any security issues and code conflicts).
- Malware Scanner (checks the cms core code any security issues and code conflicts).
- Database and CMS Backups (to protect against Ransomware attacks).
- Summer CMS System Infomation.
- Production Mode Checks.
- Firewall Filters.
- Many Security Tools (too many to mention).

### Naming Prefix ✒️

**Summer CMS uses the `sc-` naming prefix to advoid conflicts.**

## Requirements 🚩

**A full list of requirements to install Summer CMS, can be found here: [Summer CMS Requirements](https://github.com/ayumi-cloud/sc-main/blob/main/README.md#requirements-).**

=== TO DO ===

## Machine Learning :computer:

This module uses machine learning to help detect security vulnerabilities.

## Big data 📊

This module uses several Big Data tool sets to analyze large amounts of data collected from various Big Data sources to model various attack methods. Some database sizes are in the petabytes and takes a few hours to run and process some models. These models are then used and tested in our definitions files where we run them in real-time and test them. We also have various non-disclosed test severs running to gather various attacks and add this data into our Big Data models to create either new firewall modules or definition files for the modules. This process helps us to build a more secure security module and helps speed up the build process. We fully rely on using large amounts of data and machine learning tools to process them!

## Citation 📚

<a href="https://zenodo.org/">
  <img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/buttons/citation.svg" />
</a>

If you use this security module for your research, then kindly cite it. Click the above badge for more information regarding the complete citation for this security module and the diffferent citation formats like: IEEE, APA, BibTeX, CSL, DataCite, Dublin Core, DCAT, JSON, JSON-LD, GeoJSON, MARCXML and Mendeley etc.

## API's :gem:

Below are some of the API's the security modules uses (this is not a complete list):

- [Trusted Types](https://w3c.github.io/webappsec-trusted-types/dist/spec/)
- [MutationObserver](https://developer.mozilla.org/en-US/docs/Web/API/MutationObserver)
- [Intersection Observer](https://www.w3.org/TR/intersection-observer/)
- [Accessible Rich Internet Applications WAI-ARIA 1.2](https://www.w3.org/TR/wai-aria-1.2/)
- [Native Lazy loading](https://developer.mozilla.org/en-US/docs/Web/Performance/Lazy_loading)
- [Content Security Policy Level 3](https://www.w3.org/TR/CSP3/)
- [Content-Security-Policy-Report-Only](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy-Report-Only)
- [CSP: report-to](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy/report-to)
- [CSP: trusted-types](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy/trusted-types)
- [Reporting API](https://w3c.github.io/reporting/)
- [Network Error Logging](https://www.w3.org/TR/network-error-logging-1/)
- [Feature/Permissions Policy](https://w3c.github.io/webappsec-permissions-policy/)
- [Fetch](https://fetch.spec.whatwg.org/)
- [Timing-Allow-Origin/Resource Timing Level 2](https://www.w3.org/TR/resource-timing-2/)
- [Same Origin Policy](https://www.w3.org/Security/wiki/Same_Origin_Policy)
- [Cross-Origin-Opener-Policy 'COOP'](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cross-Origin-Opener-Policy)
- [Cross-Origin-Resource-Policy 'CORP'](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cross-Origin-Resource-Policy)
- [Cross-Origin-Embedder-Policy 'COEP'](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cross-Origin-Embedder-Policy)
- [Cross-Origin Resource Sharing 'CORS'](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS)
- [Fetch Metadata Request Headers](https://w3c.github.io/webappsec-fetch-metadata/)
- [Mixed Content Level 2](https://w3c.github.io/webappsec-mixed-content/)
- [HTTPS 'HyperText Transfer Protocol Secure'](https://developers.google.com/search/docs/advanced/security/https)
- [Transport layer security 'TLS'](https://developer.mozilla.org/en-US/docs/Web/Security/Transport_Layer_Security)
- [HTTP Strict Transport Security 'HSTS'](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security)
- [Secure Contexts](https://www.w3.org/TR/secure-contexts/)
- [Referrer Policy](https://www.w3.org/TR/referrer-policy/)
- [Security.txt](https://tools.ietf.org/html/draft-foudil-securitytxt-10)
- [Subresource Integrity 'SRI'](https://www.w3.org/TR/SRI/)
- [HTTP X-Content-Type-Options](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Content-Type-Options)
- [HTTP X-Frame-Options](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options)
- [X-Permitted-Cross-Domain-Policies](https://owasp.org/www-project-secure-headers/)
- [X-XSS-Protection](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection)
- [User-Agent Client Hints](https://wicg.github.io/ua-client-hints/)
- [SameSite](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Set-Cookie/SameSite)
- [HttpOnly](https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies)
- [Secure](https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies)
- [Clear Site Data](https://www.w3.org/TR/clear-site-data/)
- [Accept-CH](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Accept-CH)
- [Accept-CH Lifetime](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Accept-CH-Lifetime)
- [Accept-Charset](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Accept-Charset)
- [Accept-Language](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Accept-Language)
- [Access-Control-Allow-Credentials](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Credentials)
- [Access-Control-Allow-Headers](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Headers)
- [Access-Control-Allow-Methods](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Methods)
- [Access-Control-Allow-Origin](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Origin)
- [Alt-Svc](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Alt-Svc)
- [Cache-Control](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cache-Control)
- [Device-Memory](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Device-Memory)
- [DNT](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/DNT)
- [DPR](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/DPR)
- [Expect-CT](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Expect-CT)
- [Content-Encoding](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Encoding)
- [GNU Gzip](https://www.gnu.org/software/gzip/)
- [Brotli](https://github.com/google/brotli)
- [Expires](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Expires)
- [Last-Modified](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Last-Modified)
- [Save-Data](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Save-Data)
- [User-Agent](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/User-Agent)
- [Vary](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Vary)
- [ETag](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/ETag)

## Deprecations and removals ⛔

- [Content Security Policy Level 1](https://www.w3.org/TR/CSP1/)
- [Content Security Policy Level 2](https://www.w3.org/TR/CSP2/)

The legal module has been optimized to work with CSP 3 and allow backwards compatibility with browsers supporting older CSP versions.

- [HTTP Public Key Pinning 'HPKP'](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Public-Key-Pins)

With support now gone in the last remaining browser, HPKP has been consigned to the scrap heap.

- [CSP: report-uri](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy/report-uri)

Switched over from using `report-uri` to using both `report-uri` and `report-to`.

## Vendor Packages 🧰

- [Laravel Framework](https://github.com/laravel/framework)

**Installed version**: 6.0 or greater (Summer CMS uses latest LTS version).

- [HTMLPurifier for Laravel](https://github.com/mewebstudio/Purifier)

**Installed version**: 3.0 or greater.

- **Summer CMS Parser**

**Installed version**: 3.0 or greater.

=== TO DO ===









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
- [Cross-Site Script Inclusion 'XSSI'](https://owasp.org/www-project-web-security-testing-guide/v41/4-Web_Application_Security_Testing/11-Client_Side_Testing/13-Testing_for_Cross_Site_Script_Inclusion.html)
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

## Firewall Definition Files 💾

Version: 20200929

Last Updated: 29th Sep 2020

(*) While the security module is under heavy development, the definition files will be updated periodically and not on a regular basis! When the security module moves in a production ready-mode, the definitions files will be updated on a regular basis every week.
  
## Summer CMS Firewall API's 🔥

The security module in Summer CMS comes with lots of dedicated API's to help developers, below is a brief list:

- [Firewall APP Types API](https://github.com/ayumi-cloud/sc-security-module/blob/master/docs/api/firewall_app_types.md)
- [Firewall Browser Types API](https://github.com/ayumi-cloud/sc-security-module/blob/master/docs/api/firewall_browser_types.md)
- [Firewall Country API](https://github.com/ayumi-cloud/sc-security-module/blob/master/docs/api/firewall_country.md)
- [Firewall HTTP Status Codes API](https://github.com/ayumi-cloud/sc-security-module/blob/master/docs/api/firewall_http_status_codes.md)
- [Firewall Language API](https://github.com/ayumi-cloud/sc-security-module/blob/master/docs/api/firewall_language.md)
- [Firewall Location API](https://github.com/ayumi-cloud/sc-security-module/blob/master/docs/api/firewall_location.md)
- [Firewall Operating Systems API](https://github.com/ayumi-cloud/sc-security-module/blob/master/docs/api/Firewall_operating_systems.md)
- [Firewall Requests API](https://github.com/ayumi-cloud/sc-security-module/blob/master/docs/api/firewall_requests.md)
- [Firewall Responses API](https://github.com/ayumi-cloud/sc-security-module/blob/master/docs/api/firewall_responses.md)
- [Firewall Response Scores API](https://github.com/ayumi-cloud/sc-security-module/blob/master/docs/api/firewall_response_score.md)
- [Firewall Social Media API](https://github.com/ayumi-cloud/sc-security-module/blob/master/docs/api/firewall_social.md)

(*) Note: The firewall is built in a modular design and more modules are being coded and tested as time goes on. There will be new api's added and the doc's will get updated. To suggest a new firewall feature open an issue.

## Issues 🔨

<img alt="GitHub closed issues" src="https://img.shields.io/github/issues-closed-raw/ayumi-cloud/oc-security-module?style=plastic"> <img alt="GitHub issues" src="https://img.shields.io/github/issues-raw/ayumi-cloud/oc-security-module">

If you face any issue, you can create a new issue in the `Issues` tab and we will be glad to help you out!

## Troubleshooting 👿

### Something 💊

=== TO DO ===


## Reporting a Vulnerability 💥

We strive to make the code accessible to a wide audience of beginner and experienced users.

We welcome bug reports, false positive alert reports, evasions, usability issues, and suggestions for new detections. Submit these types of non-vulnerability related issues via Github.

Please include your installed version and the relevant portions of your audit log.

False negative or common bypasses should [create an issue](https://github.com/ayumi-cloud/oc-security-module/issues/new) so they can be addressed.

Do this before submitting a vulnerability:

1) Verify that you have the latest version of Summer CMS.
2) Validate which Paranoia Level this bypass applies to. If it works in PL4, please send us an email.
3) If you detected anything that causes unexpected behavior of the engine via manipulation of existing provided rules, please send it by email.

We are happy to work with the community to provide CVE identifiers for any discovered security issues if requested.

If in doubt, feel free to reach out to us!

## Code of Conduct 💯

In order to ensure that the Summer CMS proposal community is welcoming to all, please review and abide by the [Code of Conduct](https://github.com/ayumi-cloud/oc-security-module/blob/master/CODE_OF_CONDUCT.md).

## For Future 🔮

Shoutout to people willing to contribute to this project. Please take a look at the [projects board](https://github.com/ayumi-cloud/oc-security-module/projects) for a list of things to be done.

## Browser Support ✅

The security module has been tested in the following browsers:

<table>
  <tr>
    <td align="center">
      <img src="https://github.com/ayumi-cloud/sc-security-module/blob/master/src/assets/images/browser/chrome_48x48.png" alt="Chrome"><br>
      ✔
    </td>
    <td align="center">
      <img src="https://github.com/ayumi-cloud/sc-security-module/blob/master/src/assets/images/browser/firefox_48x48.png" alt="Firefox"><br>
      ✔
    </td>
    <td align="center">
      <img src="https://github.com/ayumi-cloud/sc-security-module/blob/master/src/assets/images/browser/safari_48x48.png" alt="Safari"><br>
      9+
    </td>
    <td align="center">
      <img src="https://github.com/ayumi-cloud/sc-security-module/blob/master/src/assets/images/browser/edge_old_48x48.png" alt="Edge Legacy"><br>
      ✖ (1)
    </td>
    <td align="center">
      <img src="https://github.com/ayumi-cloud/sc-security-module/blob/master/src/assets/images/browser/edge_48x48.png" alt="Edge"><br>
      ✔
    </td>
    <td align="center">
      <img src="https://github.com/ayumi-cloud/sc-security-module/blob/master/src/assets/images/browser/internet-explorer_9-11_48x48.png" alt="Internet Explorer"><br>
      ✖ (2)
    </td>
    <td align="center">
      <img src="https://github.com/ayumi-cloud/sc-security-module/blob/master/src/assets/images/browser/opera_48x48.png" alt="Opera"><br>
      ✔
    </td>
    <td align="center">
      <img src="https://github.com/ayumi-cloud/sc-security-module/blob/master/src/assets/images/browser/samsung-internet_48x48.png" alt="Samsung"><br>
      ✔
    </td>
    <td align="center">
      <img src="https://github.com/ayumi-cloud/sc-security-module/blob/master/src/assets/images/browser/uc_48x48.png" alt="UC"><br>
      ✔
    </td>
    <td align="center">
      <img src="https://github.com/ayumi-cloud/sc-security-module/blob/master/src/assets/images/browser/vivaldi_48x48.png" alt="Vivaldi"><br>
      3+
    </td>
  </tr>
</table>

### Notes

(1) Microsoft announced on 17 August that Edge Legacy will have its life support switched off on 9 March 2021, Summer CMS will support Edge Chromium only.

(2) Internet Explorer version 1-11, Summer CMS will not support due to only supporting `Evergreen` brwosers.

For a full list of browser support with Summer CMS, see here: [Browser Support](https://github.com/ayumi-cloud/sc-main/blob/main/docs/browser_support.md).

## Changelog 🏆

Please see [CHANGELOG](CHANGELOG.md) for more information what has changed recently.

## Contributions, Feature Requests and Feedback ✨

We are actively inviting new contributors! To start, please read the [contribution guide](CONTRIBUTING.md).

This project is only possible thanks to the work of many dedicated volunteers. Everyone is encouraged to help in ways large and small. Here are a few ways you can help:

- Read the current content and help us fix any spelling mistakes or grammatical errors.
- Choose an existing [issue](https://github.com/ayumi-cloud/sc-security-module/issues) on GitHub and submit a pull request to fix it.
- Open a new issue to report an opportunity for improvement.

If you find any bugs in the code or have any improvements in mind then feel free to generate a pull request.

**Note:** Please use Unit Testing and Coding Best Practices in order to have a valid pull request 😉

Patches and pull requests are encouraged. All code should follow the [PSR-1](https://www.php-fig.org/psr/psr-1/) and [PSR-2](https://www.php-fig.org/psr/psr-2/) style guidelines. **Please include unit tests whenever possible!**

## Firewall caching system 🌀

The security module supports [PSR-6](https://www.php-fig.org/psr/psr-6/) compatible cache adapters for caching results between requests. Using a cache is especially useful, with the firewall being loaded on every page of your website and a user visits multiple pages. During the first visit the headers will be parsed and the result will be cached. Upon further visits, the cached header results will be used, which is much faster than having to parse the headers again and again. While the firewall divides up it's workflow between cached and non-cached tasks.

There are adapters available for other types of caches, such as `APC`, `Doctrine`, `Memcached`, `MongoDB`, `Redis` and many more. The configuration of these adapters all differ from each other, but once configured, all you have to do is pass it as an option when creating the `Parser` object, or use the `setCache()` function to set it afterwards. The security module has been tested to work with the adapters provided by [PHP Cache](http://php-cache.readthedocs.org/en/latest/). For a list of other packages that provide adapters see [Packagist cache-implementation](https://packagist.org/providers/psr/cache-implementation).

## PSR ♻️

This security module uses some PSR standards to be the most interoperable possible:

- [PSR-6](https://www.php-fig.org/psr/psr-6/) Caching Interface.
- [PSR-7](https://www.php-fig.org/psr/psr-7/) Standard interfaces to represent http requests, responses and uris.
- [PSR-17](https://www.php-fig.org/psr/psr-17/) Standard factories to create PSR-7 objects.
- [PSR-18](https://www.php-fig.org/psr/psr-18/) Standard interface to send a http request and return a response.

We also suggest using Cross-browser testing provided by BrowserStack (*) where a real-browser can't be used in-house.

<p align="center"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/browser-stack.png"></p>

## PHP Coding Standards Fixer ⭕

The PHP Coding Standards Fixer (PHP CS Fixer) tool fixes your code to follow standards; whether you want to follow PHP coding standards as defined in the PSR-1, PSR-2, etc., or other community driven ones like the Symfony one.

### Installation 🔹

The recommended way to install PHP CS Fixer is to use [Composer](https://getcomposer.org/download/) in a dedicated `composer.json` file in your project, for example in the
`tools/php-cs-fixer` directory:

```console
$ mkdir --parents tools/php-cs-fixer
$ composer require --working-dir=tools/php-cs-fixer friendsofphp/php-cs-fixer
```

For more details and other installation methods, see: [PHP-CS-Fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer).

### Usage 🔸

Assuming you installed PHP CS Fixer as instructed above, you can run the following command to fix the files PHP files in the `src` directory:

```console
$ tools/php-cs-fixer/vendor/bin/php-cs-fixer fix src
```

(*) Change the above command to the correct folder location.

## Semantic Versioning 🎁

The Summer CMS and all modules use: [Semantic Versioning](https://semver.org/).

<p align="center"><img src="https://github.com/ayumi-cloud/sc-security-module/blob/master/src/assets/images/semver.png"></p>

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

<p align="left"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/buttons/mit.svg"></p>

This is free software, licensed under the MIT, Open Source Initiative.

[⬆ back to top](#table-of-contents)

<p align="center"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/luv.png"></p>
