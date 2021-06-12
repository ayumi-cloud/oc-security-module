### Laravel API v6.x

https://laravel.com/api/6.x/index.html

### Laravel API v7.x

https://laravel.com/api/7.x/index.html

### Laravel API v8.x

https://laravel.com/api/8.x/index.html

### Laravel 8 Getting Started

https://laravel.com/docs/8.x/installation

### Laravel Validation

https://laravel.com/docs/master/validation#available-validation-rules

### Request

https://octobercms.com/docs/services/request-input#request-information

### Laravel helpers

https://laravel.com/docs/6.x/helpers

### Conditional form fields - using trigger events

https://octobercms.com/docs/backend/forms#field-trigger-events

### Laravel advanced database seeding

https://medium.com/@jurgenbosch/laravel-advanced-database-seeding-51c475707d92

### List of Microsoft Windows versions

https://en.wikipedia.org/wiki/List_of_Microsoft_Windows_versions

### Icons

https://octobercms.com/docs/ui/icon

### Filter Lists

https://octobercms.com/docs/backend/lists#list-filters
https://github.com/octobercms/october/blob/develop/modules/backend/widgets/Filter.php

### October HTaccess Custom Rules (logical position placement)

https://github.com/octobercms/october/pull/4909

### WordPress Security

https://sucuri.net/guides/wordpress-security/

### PHP Operators

https://www.w3schools.com/php/php_operators.asp

### List of crawlers to process

https://github.com/browscap/browscap/tree/master/resources/user-agents/crawlers

### List of User Agent Strings

http://useragentstring.com/pages/useragentstring.php

### Large list of user-agents and bots

https://www.aqtronix.com/useragents/?Action=ShowAgents

### Usage share of web browsers

https://en.wikipedia.org/wiki/Usage_share_of_web_browsers

### Browser detection using the user agent

https://developer.mozilla.org/en-US/docs/Web/HTTP/Browser_detection_using_the_user_agent

### Crawler Test Tool

https://crawlerdetect.io

### List of Bots and Spiders Database

http://stopbadbots.com/bots-table/

### Blackhat Tools List

https://blackarch.org/tools.html

### Acunetix Web Vulnerabilities Index

https://www.acunetix.com/vulnerabilities/web/

### ASN List

http://www.bgplookingglass.com/list-of-autonomous-system-numbers

### Validator (AMP-HTML)

https://github.com/Mixpo/amphtml/blob/master/validator/validator-main.protoascii

### Web Scrapers (Bad Bots)

https://www.distilnetworks.com/bot-directory/category/web-scraper/

### UA Software List

https://developers.whatismybrowser.com/useragents/explore/software_name/

### UA Operating System List

https://developers.whatismybrowser.com/useragents/explore/operating_platform/

### ASN USA

https://ipinfo.io/countries/us

### Web robots A-Z

http://webrobots.de/web-robots-von-a-z/

### Common Browsers

https://user-agents.net/browsers

### Github Emojis

https://gist.github.com/rxaviers/7360908

### Content-Type

https://github.com/topics/content-type

### Large device list

https://github.com/matomo-org/device-detector

### List of crawlers blocked by default

https://github.com/JayBizzle/Crawler-Detect/blob/master/src/Fixtures/Crawlers.php

### .htaccess

https://github.com/h5bp/server-configs-apache/tree/master/src

### Apache upgrading to 2.4 from 2.2

https://httpd.apache.org/docs/2.4/upgrading.html

### Apache Flags

https://httpd.apache.org/docs/2.4/rewrite/flags.html

### Google removing user-agents

https://www.bleepingcomputer.com/news/google/google-chrome-aims-to-make-browser-user-agents-obsolete/

### Double encode when escaping example

```php
$output = htmlentities($input, ENT_QUOTES | ENT_HTML5, 'UTF-8', true);
$output = htmlspecialchars($input, ENT_QUOTES | ENT_HTML5, 'UTF-8', true);
```

https://www.w3schools.com/php/func_string_htmlentities.asp

### Evergreen BingBot

https://blogs.bing.com/webmaster/december-2019/Announcing-future-user-agents-for-Bingbot

### BingBot Crawlers

https://www.bing.com/webmaster/help/which-crawlers-does-bing-use-8c184ec0

### Crawler List

https://udger.com/resources/ua-list/crawlers

### List of file formats

https://en.wikipedia.org/wiki/List_of_file_formats

### List of filename extensions

https://en.wikipedia.org/wiki/List_of_filename_extensions

### October & Laravel Aliases

Below is a list of aliases October CMS uses:

#### Laravel aliases

```php
'App'       => Illuminate\Support\Facades\App::class,
'Artisan'   => Illuminate\Support\Facades\Artisan::class,
'Bus'       => Illuminate\Support\Facades\Bus::class,
'Cache'     => Illuminate\Support\Facades\Cache::class,
'Cookie'    => Illuminate\Support\Facades\Cookie::class,
'Crypt'     => Illuminate\Support\Facades\Crypt::class,
'Db'        => Illuminate\Support\Facades\DB::class, // Preferred
'DB'        => Illuminate\Support\Facades\DB::class,
'Eloquent'  => Illuminate\Database\Eloquent\Model::class,
'Event'     => Illuminate\Support\Facades\Event::class,
'Hash'      => Illuminate\Support\Facades\Hash::class,
'Lang'      => Illuminate\Support\Facades\Lang::class,
'Log'       => Illuminate\Support\Facades\Log::class,
'Queue'     => Illuminate\Support\Facades\Queue::class,
'Redirect'  => Illuminate\Support\Facades\Redirect::class,
'Redis'     => Illuminate\Support\Facades\Redis::class,
'Request'   => Illuminate\Support\Facades\Request::class,
'Response'  => Illuminate\Support\Facades\Response::class,
'Route'     => Illuminate\Support\Facades\Route::class,
'Session'   => Illuminate\Support\Facades\Session::class,
'Storage'   => Illuminate\Support\Facades\Storage::class,
'Url'       => Illuminate\Support\Facades\URL::class, // Preferred
'URL'       => Illuminate\Support\Facades\URL::class,
'View'      => Illuminate\Support\Facades\View::class,
```
    
#### October CMS aliases

```php
'AjaxException'        => October\Rain\Exception\AjaxException::class,
'ApplicationException' => October\Rain\Exception\ApplicationException::class,
'BackendAuth'          => Backend\Facades\BackendAuth::class,
'Backend'              => Backend\Facades\Backend::class,
'BackendMenu'          => Backend\Facades\BackendMenu::class,
'Block'                => October\Rain\Support\Facades\Block::class,
'Cms'                  => Cms\Facades\Cms::class,
'Config'               => October\Rain\Support\Facades\Config::class,
'DbDongle'             => October\Rain\Support\Facades\DbDongle::class,
'File'                 => October\Rain\Support\Facades\File::class,
'Flash'                => October\Rain\Support\Facades\Flash::class,
'Form'                 => October\Rain\Support\Facades\Form::class,
'Html'                 => October\Rain\Support\Facades\Html::class,
'Http'                 => October\Rain\Support\Facades\Http::class,
'Ini'                  => October\Rain\Support\Facades\Ini::class,
'Input'                => October\Rain\Support\Facades\Input::class,
'Mail'                 => October\Rain\Support\Facades\Mail::class,
'Markdown'             => October\Rain\Support\Facades\Markdown::class,
'Model'                => October\Rain\Database\Model::class,
'Schema'               => October\Rain\Support\Facades\Schema::class,
'Seeder'               => October\Rain\Database\Updates\Seeder::class,
'Str'                  => October\Rain\Support\Facades\Str::class,
'SystemException'      => October\Rain\Exception\SystemException::class,
'Twig'                 => October\Rain\Support\Facades\Twig::class,
'ValidationException'  => October\Rain\Exception\ValidationException::class,
'Validator'            => October\Rain\Support\Facades\Validator::class,
'Yaml'                 => October\Rain\Support\Facades\Yaml::class,
```

#### Fallback aliases

```php
// Input facade was removed in Laravel 6 - we are keeping it in the Rain library for backwards compatibility.
'Illuminate\Support\Facades\Input' => October\Rain\Support\Facades\Input::class,

// Illuminate's HtmlDumper was "dumped" in Laravel 6 - we'll route this to Symfony's HtmlDumper as Laravel have done.
'Illuminate\Support\Debug\HtmlDumper' => Symfony\Component\VarDumper\Dumper\HtmlDumper::class,
```

For current up to date list see here: https://github.com/octobercms/october/blob/master/modules/system/aliases.php


### Lists backend

The native `$value`, the `$column` definition object and the model `$record` object.

### Cloudflare 1XXX errors

https://support.cloudflare.com/hc/en-us/articles/360029779472-Troubleshooting-Cloudflare-1XXX-errors

### Cloudflare 5XX errors

https://support.cloudflare.com/hc/en-us/articles/115003011431-Troubleshooting-Cloudflare-5XX-errors

### Fixing the gibberish hack

https://developers.google.com/web/fundamentals/security/hacked/fixing_the_gibberish_hack

### Fixing the Japanese keyword hack

https://developers.google.com/web/fundamentals/security/hacked/fixing_the_japanese_keyword_hack

### Fixing the cloaked keywords and links hack

https://developers.google.com/web/fundamentals/security/hacked/fixing_the_cloaked_keywords_hack

### Cyveillance Spybot

Traffic shows up as old IE browsers and Windows XP.

Link: https://en.wikipedia.org/wiki/Cyveillance#Criticisms

### Summary of how to check OS / browser from UserAgent

https://qiita.com/nightyknite/items/b2590a69f2e0135756dc

### Reverse DNS API (only works on firefox right now)

https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/API/dns/resolve

### Using Development Branch

> People who want the most absolute bleeding edge code are more than welcome to use the instructions here to set up Composer to retrieve the latest code from the develop branch every time they update their Composer dependencies.

https://octobercms.com/docs/help/using-composer#development-branch

### Whitelist Search Engine IP lists

https://www.ip2location.com/free/robot-whitelist

### Malware Trends Tracker

https://any.run/malware-trends/

### Client Hints

https://developers.google.com/web/fundamentals/performance/optimizing-content-efficiency/client-hints

### Browser Leaks

https://browserleaks.com/

### Structured Field Values for HTTP (Draft Spec)

https://tools.ietf.org/html/draft-ietf-httpbis-header-structure-16

### Hash SHA256

https://emn178.github.io/online-tools/sha256.html

### Badges

https://shields.io/

### Github Emojis

https://gist.github.com/roachhd/1f029bd4b50b8a524f3c

### New UA list

https://udger.com/resources/uas-news

### Newly discovered UA

http://aqtronix.com/useragents/?Action=ShowNewAgents

### CSS Grids Examples

https://gridbyexample.com/

### Compare detection packages

http://thadafinser.github.io/UserAgentParserComparison/v5/

### High Risk ISPs

https://scamalytics.com/ip/isp

### The Perfect URL Regular Expression

http://urlregex.com/

### Multi-Search Engine Project

https://wutsearch.com/#wutsearch

### List of Fake Bots

https://udger.com/resources/ua-list/bot-detail?bot=Fake+bot

### Google Search Console Abusive Notifications Report

https://www.google.com/webmasters/tools/abusive-notifications-unverified

### Phishing spam blocklist

https://phishing.army/download/phishing_army_blocklist_extended.txt

### IE11 Polyfills

You only want IE11 to load the polyfill, use this snippet in the head of your html file, it just works:

```html
<script>window.MSInputMethodContext && document.documentMode && document.write('<script src="https://cdn.jsdelivr.net/example.min.js"><\/script>');</script>
```

The IE11 market share is steadily decreasing. This project doesn't support IE11.

Below is javascript method:

```js
if (window.document.documentMode) {
    // ..
}
```

Link: https://www.w3schools.com/jsref/prop_doc_documentmode.asp

### Latest Chrome Versions

http://omahaproxy.appspot.com/

### Chrome official stable release version

https://chromedriver.storage.googleapis.com/LATEST_RELEASE

### Firefox Product-Details JSON API

https://wiki.mozilla.org/Release_Management/Product_details

### List of HTTP header fields

https://en.wikipedia.org/wiki/List_of_HTTP_header_fields

### IANA List of HTTP Headers

https://www.iana.org/assignments/message-headers/message-headers.xhtml

### PHP 8.0

https://www.php.net/releases/8.0/en.php

### Bug bounty program

https://www.huntr.dev/

### Fortify Taxonomy: Software Security Errors

https://vulncat.fortify.com/en/weakness

### HTTP Status Codes and Htaccess ErrorDocuments

https://www.askapache.com/htaccess/apache-status-code-headers-errordocument/

### THE Ultimate Htaccess

https://www.askapache.com/htaccess/

### Mod_Rewrite Variables Cheatsheet

https://www.askapache.com/htaccess/mod_rewrite-variables-cheatsheet/

### PHP Data Types

https://www.w3schools.com/php/php_datatypes.asp

### User Agent Syntax

https://tools.ietf.org/html/rfc7230#section-3.2.6

### Regular expression POSIX

https://en.wikipedia.org/wiki/Regular_expression#Character_classes

### Cloudflare headers

https://support.cloudflare.com/hc/en-us/articles/200170986

### CSP Testing Tool

https://csp-evaluator.withgoogle.com/

### PHP Types

https://www.php.net/manual/en/language.types.intro.php

### HTTP Response Headers

https://webtechsurvey.com/common-response-headers

### Block crypto miners

https://github.com/hoshsadiq/adblock-nocoin-list

### HTTP Headers Database

http://www.aqtronix.com/headers/?Action=ShowList

### PHP URL Parse

https://www.php.net/manual/en/function.parse-url.php

### List of URI schemes

https://en.wikipedia.org/wiki/List_of_URI_schemes

### Knowledgebase

https://docs.imperva.com/bundle/on-premises-knowledgebase-reference-guide/page/74186.htm

### IANA Language

https://www.iana.org/assignments/language-subtag-registry/language-subtag-registry

### Apache Security

https://httpd.apache.org/security/

### Apache Security v2.4

https://httpd.apache.org/security/vulnerabilities_24.html

### AMP Page Experience Guide (Analyze your AMP page)

https://amp.dev/page-experience/

### If-Modified-Since

https://gist.github.com/summercms/6dcc5f04e54e644bcf343a0f9b7f0b3d

### CSS property: `aspect-ratio`

https://caniuse.com/mdn-css_properties_aspect-ratio

https://developer.mozilla.org/en-US/docs/Web/CSS/aspect-ratio

### GitBook

https://www.gitbook.com/

https://docs.gitbook.com/

---

## Code Quality Testers

### OpenType Sanitizer (used by Chrome and Firefox)

https://github.com/khaledhosny/ots

### PHPStan finds bugs in your code

https://phpstan.org/

### PHP Mutation Testing Framework

https://infection.github.io/

### PHP_CodeSniffer

PHP_CodeSniffer is a set of two PHP scripts; the main `phpcs` script that tokenizes PHP, JavaScript and CSS files to detect violations of a defined coding standard, and a second `phpcbf` script to automatically correct coding standard violations. PHP_CodeSniffer is an essential development tool that ensures your code remains clean and consistent.

https://github.com/squizlabs/PHP_CodeSniffer

### Snuffleupagus

Snuffleupagus is a PHP7+ and PHP8+ module designed to drastically raise the cost of attacks against websites. This is achieved by killing entire bug classes and providing a powerful virtual-patching system, allowing the administrator to fix specific vulnerabilities without having to touch the PHP code.

https://snuffleupagus.readthedocs.io/

---

### Cloudflare IP Ranges

Last updated: April 8, 2021.

#### IPv4

```
103.21.244.0/22
103.22.200.0/22
103.31.4.0/22
104.16.0.0/13
104.24.0.0/14
108.162.192.0/18
131.0.72.0/22
141.101.64.0/18
162.158.0.0/15
172.64.0.0/13
173.245.48.0/20
188.114.96.0/20
190.93.240.0/20
197.234.240.0/22
198.41.128.0/17
```

#### IPv6

```
2400:cb00::/32
2606:4700::/32
2803:f800::/32
2405:b500::/32
2405:8100::/32
2a06:98c0::/29
```

Link: https://www.cloudflare.com/en-gb/ips/

---

### Difference Between `$response->ok()` and `$response->successful()`

- `ok` is equal to `200 only`.

- `successful` is `2xx` (Between 200 - 299).

```php
public function ok()
{
    return $this->status() === 200;
}

public function successful()
{
    return $this->status() >= 200 && $this->status() < 300;
}
```

So `successful` means any response in the 2xx range meaning any of the following:

- 200 OK
- 201 Created
- 202 Accepted
- 203 Non-Authoritative Information
- 204 No Content
- 205 Reset Content
- 206 Partial Content
- 207 Multi-Status (WebDAV)
- 208 Already Reported (WebDAV)
- 226 IM Used (HTTP Delta encoding)

Others:

```php
// Determine if the status code is >= 200 and < 300...
$response->successful();

// Determine if the status code is >= 400...
$response->failed();

// Determine if the response has a 400 level status code...
$response->clientError();

// Determine if the response has a 500 level status code...
$response->serverError();
```

---

### Try and Catch Methods

```php
Use Exception;

try {
    //write your codes here
} catch(Exception $e) {
    dd($e->getMessage());
}
```
