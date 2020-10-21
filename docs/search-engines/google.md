## Google

> These values can be spoofed. If you need to verify that the visitor is Googlebot, you should use reverse DNS lookup.

Link: https://support.google.com/webmasters/answer/80553

### Reverse DNS

```
crawl-66-249-69-155.googlebot.com
```

Note: Google is one of the best on the internet when it comes to using reverse dns and is recommended to using it with their bots. Other search engines such as most of the Chinese search engines do not use reverse dns and is a waste of time!

## Overview of Google crawlers (user agents) 2020 Edition - May change over time

> In 2020 and onwards Google and Bing use `Evergreen` bots meaning they use the latest versions of chromium. and their user agents will change every time a new browser has been released.

### List of 2020 Bots


Repo Name | Crawler | User agent token (product token) | Full user agent string
-- | -- | -- | --
Google APIs Bot | APIs-Google | APIs-Google | APIs-Google (+https://developers.google.com/webmasters/APIs-Google.html)
Google AdSense Bot | AdSense | Mediapartners-Google | Mediapartners-Google
Google Ads Mobile Bot | AdsBot Mobile Web Android(Checks Android web page ad quality) | AdsBot-Google-Mobile | Mozilla/5.0 (Linux; Android 5.0; SM-G920A) AppleWebKit (KHTML, like Gecko) Chrome Mobile Safari (compatible; AdsBot-Google-Mobile; +http://www.google.com/mobile/adsbot.html)
Google Ads Mobile Bot | AdsBot Mobile Web(Checks iPhone web page ad quality) | AdsBot-Google-Mobile | Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1 (compatible; AdsBot-Google-Mobile; +http://www.google.com/mobile/adsbot.html)
Google Ads Bot | AdsBot(Checks desktop web page ad quality) | AdsBot-Google | AdsBot-Google (+http://www.google.com/adsbot.html)
Google Image Bot | Googlebot Image | Googlebot-ImageGooglebot | Googlebot-Image/1.0
Google News Bot | Googlebot News | Googlebot-NewsGooglebot | Googlebot-News
Google Video Bot | Googlebot Video | Googlebot-VideoGooglebot | Googlebot-Video/1.0
Google Bot | Googlebot (Desktop) | Googlebot | Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; Googlebot/2.1; +http://www.google.com/bot.html) Chrome/W.X.Y.Z‡ Safari/537.36or (rarely used): Googlebot/2.1 (+http://www.google.com/bot.html)
Google Mobile Bot | Googlebot (Smartphone) | Googlebot | Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/W.X.Y.Z‡ Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)
Google AdSense Bot | Mobile AdSense | Mediapartners-Google | (Various mobile device types) (compatible; Mediapartners-Google/2.1; +http://www.google.com/bot.html)
Google Mobile Apps Bot | Mobile Apps Android(Checks Android app page ad quality. Obeys AdsBot-Google robots rules.) | AdsBot-Google-Mobile-Apps | AdsBot-Google-Mobile-Apps
Google Feedfetcher Bot | Feedfetcher | FeedFetcher-GoogleDoes not respect robots.txt rules - here's why | FeedFetcher-Google; (+http://www.google.com/feedfetcher.html)
Google Read Aloud Bot | Google Read Aloud | Google-Read-AloudDoes not respect robots.txt rules - here's why | Current agents:Desktop agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36 (compatible; Google-Read-Aloud;  +https://support.google.com/webmasters/answer/1061943)Mobile agent: Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)Former agent (deprecated): google-speakr
Google Duplex Bot | Duplex on the web | DuplexWeb-GoogleMay ignore the * user-agent wildcard - here's why | Mozilla/5.0 (Linux; Android 8.0; Pixel 2 Build/OPD3.170816.012; DuplexWeb-Google/1.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Mobile Safari/537.36
Google Favicon Bot | Google Favicon (Retrieves favicons for various services) | Google FaviconFor user-initiated requests, ignores robots.txt rules | Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko)  Chrome/49.0.2623.75 Safari/537.36 Google Favicon
Google Web Light Bot | Web Light | googleweblightDoes not respect robots.txt rules - here's why | Mozilla/5.0 (Linux; Android 4.2.1; en-us; Nexus 5 Build/JOP40D) AppleWebKit/535.19 (KHTML, like Gecko; googleweblight) Chrome/38.0.1025.166 Mobile Safari/535.19

Note: `Google Read Aloud Bot` crawles data for `Google smart speakers and displays` for more info see here: https://store.google.com/us/magazine/compare_nest_speakers_displays

## Expand information and add extra Google Bots

### Google Bot

```
Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)

Googlebot/2.1 (+http://www.google.com/bot.html)

Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; Googlebot/2.1; +http://www.google.com/bot.html) Chrome/85.0.4183.140 Safari/537.36
```

### Google Mobile Bot

```
Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.78 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)

Mozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5376e Safari/8536.25 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)

Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.96 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)

Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.140 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)

Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/85.0.4183.136 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)
```

Note: The above UA contain the keyword `Mobile` signalling it is the mobile version.

User agent | Version | OS | Hardware Type | Popularity
-- | -- | -- | -- | --
Mozilla/5.0 (iPhone; U; CPU iPhone OS 4_1 like Mac OS X; en-us) AppleWebKit/532.9 (KHTML, like Gecko) Version/4.0.5 Mobile/8B117 Safari/6531.22.7 (compatible; Googlebot-Mobile/2.1; +http://www.google.com/bot.html) | 2.1 | -- | Server | Very common
SAMSUNG-SGH-E250/1.0 Profile/MIDP-2.0 Configuration/CLDC-1.1 UP.Browser/6.2.3.3.c.1.101 (GUI) MMP/2.0 (compatible; Googlebot-Mobile/2.1; +http://www.google.com/bot.html) | 2.1 | -- | Server | Very common
DoCoMo/2.0 N905i(c100;TB;W24H16) (compatible; Googlebot-Mobile/2.1; +http://www.google.com/bot.html) | 2.1 | -- | Server | Very common
Mozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5376e Safari/8536.25 (compatible; Googlebot-Mobile/2.1; +http://www.google.com/bot.html) | 2.1 | -- | Server | Common
Nokia6820/2.0 (4.83) Profile/MIDP-1.0 Configuration/CLDC-1.0 (compatible; Googlebot-Mobile/2.1; +http://www.google.com/bot.html) | 2.1 | -- | Server | Common
DoCoMo/1.0/N505i/c20/TB/W20H10 (compatible; Googlebot-Mobile/2.1; +http://www.google.com/bot.html) | 2.1 | -- | Server | Average

### Google Web Light Bot

```
Mozilla/5.0 (Linux; Android 4.2.1; en-us; Nexus 5 Build/JOP40D) AppleWebKit/535.19 (KHTML, like Gecko; googleweblight) Chrome/38.0.1025.166 Mobile Safari/535.19
```

### Google Favicon Bot

```
Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.75 Safari/537.36 Google Favicon
```

### Google Image Bot

```
Googlebot-Image/1.0
```

### Google Web Preview Bot

```
Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko; Google Web Preview) Chrome/85.0.4183.140 Safari/537.36

Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko; Google Web Preview) Chrome/85.0.4183.136 Safari/537.36
```

### Google Site Verification Bot

```
Mozilla/5.0 (compatible; Google-Site-Verification/1.0)
```

### Google Video Bot

```
Googlebot-Video/1.0
```

### Google App Engine Bot

```
AppEngine-Google; (+http://code.google.com/appengine; appid: e~finscience-1253)
AppEngine-Google; (+http://code.google.com/appengine; appid: s~snapchat-proxy)
AppEngine-Google; (+http://code.google.com/appengine; appid: rahukalamcalculator)
AppEngine-Google; (+http://code.google.com/appengine; appid: s~proxy2break)
AppEngine-Google; (+http://code.google.com/appengine; appid: cooltoolapps)
AppEngine-Google; (+http://code.google.com/appengine; appid: s~getfavicon27)
AppEngine-Google; (+http://code.google.com/appengine; appid: s~gce-spider)
```

### Google Earth Bot

```
Mozilla/5.0 (N; Windows NT 6.2; WOW64) AppleWebKit/534.34 (KHTML, like Gecko) Google Earth/7.1.8.3036 Safari/534.34
```


### Google Earth Pro Bot

```
Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/538.1 (KHTML, like Gecko) Google Earth Pro/7.3.2.5491 Safari/538.1
```

### Google Feedfetcher Bot

```
Feedfetcher-Google; (+http://www.google.com/feedfetcher.html; 3 subscribers; feed-id=17583705103843181935)
```

### Google Image Proxy Bot

```
Mozilla/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox/11.0 (via ggpht.com GoogleImageProxy)
```

### Google Page Speed Insights Bot

```
Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Chrome/41.0.2272.118 Safari/537.36
Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Chrome/27.0.1453 Safari/537.36
Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Chrome/41.0.2272.118 Mobile Safari/537.36
Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Chrome/27.0.1453 Mobile Safari/537.36
Mozilla/5.0 (iPhone; CPU iPhone OS 8_3 like Mac OS X) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Version/8.0 Mobile/12F70 Safari/600.1.4
Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Chrome/27.0.1453 Safari/537.36 GoogleBot/2.1
Mozilla/5.0 (iPhone; CPU iPhone OS 6_0_1 like Mac OS X) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Version/6.0 Mobile/10A525 Safari/8536.25 GoogleBot/2.1
Mozilla/5.0 (iPhone; CPU iPhone OS 6_0_1 like Mac OS X) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Version/6.0 Mobile/10A525 Safari/8536.25
```

### Google Lighthouse Bot

```
Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5 Build/MRA58N) AppleWebKit/537.36(KHTML, like Gecko) Chrome/61.0.3116.0 Mobile Safari/537.36 Chrome-Lighthouse
Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5 Build/MRA58N) AppleWebKit/537.36(KHTML, like Gecko) Chrome/69.0.3464.0 Mobile Safari/537.36 Chrome-Lighthouse
Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3694.0 Mobile Safari/537.36 Chrome-Lighthouse
Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36(KHTML, like Gecko) Chrome/69.0.3464.0 Safari/537.36 Chrome-Lighthouse
Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4143.7 Safari/537.36 Chrome-Lighthouse
Mozilla/5.0 (Linux; Android 7.0; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4143.7 Mobile Safari/537.36 Chrome-Lighthouse
Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36(KHTML, like Gecko) Chrome/61.0.3116.0 Safari/537.36 Chrome-Lighthouse
Mozilla/5.0 (Linux; Android 6.0.1; Moto G (4)) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3963.0 Mobile Safari/537.36 Chrome-Lighthouse
Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3694.0 Safari/537.36 Chrome-Lighthouse
Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3694.0 Safari/537.36 Chrome-Lighthouse
Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36 Chrome-Lighthouse
Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Mobile Safari/537.36 Chrome-Lighthouse
```

### Google Ads Mobile Bot

```
Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1 (compatible; AdsBot-Google-Mobile; +http://www.google.com/mobile/adsbot.html)
```

### Google Read Aloud Bot

```
Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)
Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2272.118 Safari/537.36 (compatible; Google-Read-Aloud; https://support.google.com/webmasters/answer/1061943)
Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; https://support.google.com/webmasters/answer/1061943)
Mozilla/5.0 (Linux; Android 7.0; SM-G930V Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/59.0.3071.125 Mobile Safari/537.36 (compatible; Google-Read-Aloud; +https://support.google.com/webmasters/answer/1061943)
```

### Google Structured Data Testing Tool Bot

```
Mozilla/5.0 (compatible; Google-Structured-Data-Testing-Tool +https://search.google.com/structured-data/testing-tool)
```

### Google Web Preview Analytics Bot

```
Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; Google Web Preview Analytics) Chrome/41.0.2272.118 Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)
Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; Google Web Preview Analytics) Chrome/27.0.1453 Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)
Mozilla/5.0 (Linux; Android 4.0.4; Galaxy Nexus Build/IMM76B) AppleWebKit/537.36 (KHTML, like Gecko; Google Web Preview Analytics) Chrome/41.0.2272.118 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)
Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; Google Web Preview Analytics) Chrome/41.0.2272.118 Safari/537.36 (compatible; Googlebot/2.1; http://www.google.com/bot.html)
```

### Google AdSense Bot

```
Mediapartners-Google

Mediapartners-Google/2.1
```

### Google News Bot

```
Googlebot-News
```

### Google Search App Bot

User agent | Version | OS | Hardware Type | Popularity
-- | -- | -- | -- | --
Mozilla/5.0 (iPhone; CPU iPhone OS 13_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/88.1.284108841 Mobile/15E148 Safari/604.1 | 88.1 | iOS | Mobile - Phone | Very common
Mozilla/5.0 (iPhone; CPU iPhone OS 13_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/89.2.287201133 Mobile/15E148 Safari/604.1 | 89.2 | iOS | Mobile - Phone | Common
Mozilla/5.0 (iPhone; CPU iPhone OS 13_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/107.0.310639584 Mobile/15E148 Safari/604.1 | 107 | iOS | Mobile - Phone | Common
Mozilla/5.0 (iPhone; CPU iPhone OS 13_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/114.0.318129667 Mobile/15E148 Safari/604.1 | 114 | iOS | Mobile - Phone | Common
Mozilla/5.0 (iPhone; CPU iPhone OS 13_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/87.0.279142407 Mobile/15E148 Safari/605.1 | 87 | iOS | Mobile - Phone | Common
Mozilla/5.0 (iPhone; CPU iPhone OS 13_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/102.0.304944559 Mobile/15E148 Safari/604.1 | 102 | iOS | Mobile - Phone | Common
Mozilla/5.0 (iPhone; CPU iPhone OS 12_1 like Mac OS X) AppleWebKit/604.1.34 (KHTML, like Gecko) GSA/62.1.220348572 Mobile/16B92 Safari/604.1 | 62.1 | iOS | Mobile - Phone | Common
Mozilla/5.0 (iPhone; CPU iPhone OS 13_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/105.0.307913796 Mobile/15E148 Safari/604.1 | 105 | iOS | Mobile - Phone | Common

### Google Adsense Snapshot Bot

```
Adsense-Snapshot-Google
```

### Google FeedBurner Bot

```
FeedBurner/1.0 (http://www.FeedBurner.com)
```

### Google Sitemaps Bot

```
Google-Sitemaps/1.0
```

### Google Font Analysis Bot

```
Mozilla/5.0 (compatible; Google-FontAnalysis/1.0; +http://www.google.com/webfonts)
```

### Google Rich Snippets Bot

```
Googlebot-richsnippets
```

### Google Play Newsstand Bot

```
GoogleProducer; (+http://goo.gl/7y4SX)
```

Google Play Newsstand is a discontinued news aggregator and digital newsstand service by Google (no longer supported, but still works).

Link: https://en.wikipedia.org/wiki/Google_Play_Newsstand

### Google YouTube Sample Bot

```
Google-YouTubeSample/1.0
```

## Dead Bots

### Google Wireless Transcoder

Remove from repo

```
Mozilla/5.0 (en-us) AppleWebKit/534.14 (KHTML, like Gecko; Google Wireless Transcoder) Chrome/9.0.597 Safari/534.14
```

Google's Wireless Transcoder was launched in November 2006, so this is not something new. The Google Wireless Transcoder (GWT) is basically a combination of "proxy server "and "code stripper" that is used for mobile search users as an option in the search results. Instead of showing your website as it was intended, for some mobile users, Google loads the page then strips all javascript and other "extras" like your ads (including Adsense) and finally sends a dumbed down version of the page to the mobile user.

To see how it works, you can view your site as rendered by GWT by going to http://google.com/gwt/n and enter your URL.

> Note: The URL and service is now dead.

### Google Read Aloud Bot (deprecated version)

```
google-speakr
```

### Google Duplex Bot (deprecated version)

```
Google-Speech-Actions
```

### Google Desktop Bot

```
Mozilla/5.0 (compatible; Google Desktop)
Mozilla/5.0 (compatible; Google Desktop/5.9.1005.12335; http://desktop.google.com/)
Mozilla/5.0 (compatible; Google Desktop/5.9.911.3589; http://desktop.google.com/)
Mozilla/4.0 (compatible; Google Desktop)
Mozilla/5.0 (compatible; Google Desktop/5.9.909.30391; http://desktop.google.com/)
googlechrome_desktop
```

In September 2011, Google announced it would discontinue a number of its products, including Google Desktop.

Link: https://en.wikipedia.org/wiki/Google_Desktop

### Google Plus Snippet Fetcher

```
Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36 Google (+https://developers.google.com/+/web/snippet/)
```

The Google+ developer API was discontinued on March 7, 2019, and Google+ was shut down for business and personal use on April 2, 2019. Google+ continued to be available as "Google+ for G Suite", all users transitioned to "Google Currents" later.

Link: https://en.wikipedia.org/wiki/Google%2B

### Google Bot using old IE browser versions

```
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 10.0; Windows NT 6.1; Trident/6.0)
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 6.0; Windows NT 5.1; SV1)
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; PeoplePal 6.6)
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 6.0; Windows NT 5.1; SV1; .NET CLR 2.0.50727)
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 6.0; Windows NT 5.1; SV1; Antenna Preview Window)
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 6.0; Windows NT 5.1; SV1; InfoPath.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727)
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 6.0; Windows NT 5.1; SV1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; Embedded Web Browser from: http://bsalsa.com/; InfoPath.2;
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 7.0; Windows NT 5.1)
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 7.0; Windows NT 5.1; .NET CLR 1.0.3705; .NET CLR 1.1.4322; Media Center PC 4.0; .NET CLR 2.0.5;c2VvLWNyYXdsZXI=
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322)
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.04506.648; .NET CLR 3.5.21022)
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 7.0; Windows NT 5.1; .NET CLR 1.1.4322; eMusic DLM/4; .NET CLR 2.0.50727)
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; .NET CLR 1.1.4322)
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 7.0; Windows NT 5.1; InfoPath.1)
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 7.0; Windows NT 5.1; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; .NET CLR 1.1.4322; .NET CLR 2.0.50727)
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 7.0; Windows NT 5.1; PeoplePal 3.0; PeoplePal 6.2)
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 7.0; Windows NT 5.1; PeoplePal 3.0; PeoplePal 6.2; .NET CLR 2.0.50727; Media Center PC 3.0; .NET CLR 1.0.3705; .NET CLR 1.1.4322)
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 7.0; Windows NT 6.0; FunWebProducts; GTB6; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618)
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 7.0; Windows NT 6.0; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.0.0450
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 7.0; Windows NT 6.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.21022; .NET CLR 3.5.30729; .NET CLR 3.0.30618)
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.04506.648; .NET CLR 3.0.4506.2152;
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727)
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 8.0; Windows NT 5.1; Trident/4.0; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; .NET4.0C)
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729; OfficeLiveConnector.1
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 8.0; Windows NT 5.1; Trident/4.0; GTB6; .NET CLR 2.0.50727; .NET CLR 1.1.4322; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 8.0; Windows NT 5.1; Trident/4.0; InfoPath.2; .NET CLR 2.0.50727; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 8.0; Windows NT 6.0; Trident/4.0; Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.1; SV1) ; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; Info
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; .NET CLR 3.5.30729; .NET CLR 3.0.30618; InfoPath.2)
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 8.0; Windows NT 6.0; Trident/4.0; SLCC1; .NET CLR 2.0.50727; Media Center PC 5.0; InfoPath.2; .NET CLR 3.5.30729; .NET CLR 3.0.04506)
Googlebot/2.1 (+http://www.googlebot.com/bot.html; MSIE 8.0; Windows NT 6.1; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30729; Media Center PC 6.0)
Googlebot/2.1 (+http://www.googlebot.com/bot.html) (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0)
```

### Google Bot using Amiga

```
Googlebot/2.1 (Amiga; I; AIDX 2.0.36; MIPS; rv1.2.1) Alligator/20100101 Webbeast/3.5.3
Googlebot/2.1 (Amiga; I; AIX 2.2.19; CDC3000; rv1.7) Dragon/20040411 Hypnomouse/1.5.0.7
Googlebot/2.1 (Amiga; I; Amiga DOS 2.0.1; i586; rv1.3.12) Gangsta/20061222 Lightningstar/9.0
Googlebot/2.1 (Amiga; I; Android 2.0.32; PPC64; rv1.3.4) Trident/20090530 Icemonkey/2.0.0.10
Googlebot/2.1 (Amiga; I; Apple DOS 2.2.40; DC333; rv1.6.2) Gecko/20080524 Hyperalligator/2.0.0.16
Googlebot/2.1 (Amiga; I; AtheOS 2.0.18; T3E; rv1.7.10) Dragon/20040411 Webshell/1.5.0
Googlebot/2.1 (Amiga; I; AtheOS 2.4.39; M6805; rv6.0) Dragon/20110101 Seasnake/1.0.8
Googlebot/2.1 (Amiga; I; AtheOS 5.2; M26300; rv1.6.2) WebKit/20070518 Thunderalligator/2.0.0.10
Googlebot/2.1 (Amiga; I; BeOS 2.6.17; MIPS; rv1.8.4) Gangsta/20061222 Thunderfly/1.0.2
Googlebot/2.1 (Amiga; I; CP/M 10.0; i4004; rv10.0) Presto/20040411 Iceworm/3.6.22
Googlebot/2.1 (Amiga; I; CrOS 2.2.27; PIC18; rv1.7.2) Trident/20030809 Webstar/3.0.12
Googlebot/2.1 (Amiga; I; FreeBSD 2.0.39; EMM386; rv1.7.1) Crocodile/20090530 Fireweasel/3.0.3
Googlebot/2.1 (Amiga; I; FreeBSD 2.2.9; IBM8100; rv11.0) Salamander/20070518 Lightningfrog/0.8
Googlebot/2.1 (Amiga; I; GNU/Hurd 2.0.36; x86; rv1.7.11) Crocodile/20080524 Airworm/3.5.10
Googlebot/2.1 (Amiga; I; GNU/Mach 2.2.11; VAX8350; rv1.8.2) Alligator/20050915 Lightningbot/3.5.16
Googlebot/2.1 (Amiga; I; GNU/Mach 2.6.33; i4004; rv1.4.3) KHTML/20040411 Lightningwolf/4.0.15.0
Googlebot/2.1 (Amiga; I; HP-SUX 2.6.37; i486; rv1.2.9) Salamander/20080524 Turboweasel/10.0b2
Googlebot/2.1 (Amiga; I; HP-SUX 6.1; z9; rv11.0) Lizard/20090530 Hypershark/3.0.16
Googlebot/2.1 (Amiga; I; iOS 2.4.21; PDP-11; rv1.8.5) Penguin/20080524 Spacebeast/3.0.2
Googlebot/2.1 (Amiga; I; Mach 2.0.15; ESA/390; rv1.8.8) Presto/20090530 Junglecat/0.1
Googlebot/2.1 (Amiga; I; MenuetOS 2.2.29; IBM8100; rv1.4.11) Crocodile/20120101 Thundertoad/0.1
Googlebot/2.1 (Amiga; I; Minix 2.2.3; IA-64; rv1.7.8) WebKit/20070518 Hyperfish/3.5.5
Googlebot/2.1 (Amiga; I; MS-DOS 2.0.21; CDC3000; rv1.5.12) Alligator/20080524 Seafrog/
Googlebot/2.1 (Amiga; I; OpenBSD 2.4.21; P750; rv1.3.11) WebKit/20080524 Airape/0.3
Googlebot/2.1 (Amiga; I; OpenDesktop 2.2.6; Itanium; rv1.8.3) Alligator/20030809 Turbobot/3.5.13
Googlebot/2.1 (Amiga; I; OpenDesktop 5.2; HAL9000; rv1.4.6) Salamander/20030809 Thundersheep/3.6.23
Googlebot/2.1 (Amiga; I; OpenServer 2.0.2; MIPS32; rv1.5.4) Gangsta/20080524 Windfish/3.0.11
Googlebot/2.1 (Amiga; I; OpenVMS 2.0.38; CDC924; ) Crocodile/20040411 Spacesheep/3.5.4
Googlebot/2.1 (Amiga; I; OpenVMS 2.2.37; HP2100; rv1.7.10) Penguin/20110101 Sealynx/3.0.11
Googlebot/2.1 (Amiga; I; PrimOS 2.0.6; i686; rv2.0) Trident/20050915 Lightningmonkey/1.0.4
Googlebot/2.1 (Amiga; I; RISC OS 2.4.0; CX1; rv1.8.12) Trident/20061222 Webdove/2.0.0.5
Googlebot/2.1 (Amiga; I; ScumOS 2.4.29; CDC3000; rv1.6.7) Salamander/20080524 Turbobird/10.0b2
Googlebot/2.1 (Amiga; I; Sinclair QDOS 2.2.33; T3E; rv1.7.2) Alligator/20100101 Sunbird/1.0
Googlebot/2.1 (Amiga; I; SunOS 2.0.22; i686; rv1.2.3) Gangsta/20090530 Thundershell/3.6.3
Googlebot/2.1 (Amiga; I; Unix 2.4.5; ZUSE3; rv1.2.3) Crocodile/20070518 Seatoad/0.2
Googlebot/2.1 (Amiga; I; Unix 3.4; C90; rv1.6.3) Dragon/20110101 Hypnofrog/11.0b5
Googlebot/2.1 (Amiga; I; UnixWare 5.2; DC335; rv1.4) Trident/20110101 Lightningwolf/5.0.1
Googlebot/2.1 (Amiga; I; VMS 2.0.4; C90; rv1.8) WebKit/20080524 Junglebird/3.6.10
Googlebot/2.1 (Amiga; I; Winblows NT 2.2.35; i386; rv1.2.5) Alligator/20050915 Sunshell/4.0.15.0
Googlebot/2.1 (Amiga; I; Windoof CE 10.7; TuringMachine; rv1.5.10) KHTML/20080524 Airfish/2.0.0.11
Googlebot/2.1 (Amiga; I; Windoof CE 2.2.11; M6805; rv1.6.7) Salamander/20120101 Hypnotoad/2.0.0.8
Googlebot/2.1 (Amiga; I; Windoof NT 2.0.17; x86; rv1.8.9) KHTML/20090530 Windcat/2.0.0.6
Googlebot/2.1 (Amiga; I; Windows CE 2.2.21; CS6400; ) Gecko/20120101 Thunderlynx/4.0
Googlebot/2.1 (Amiga; I; Windoze CE 2.4.15; IBM701; rv1.8.10) Crocodile/20110101 Windape/1.0.7
Googlebot/2.1 (Amiga; I; Windoze Mobile 2.2.1; PIC18; rv1.8.11) Dragon/20120101 Airbat/3.5.2
Googlebot/2.1 (Amiga; I; Xenix 2.2.12; OISC/E25; rv11.0) KHTML/20040411 Jungleamoeba/7.0.1
Googlebot/2.1 (Amiga; I; Xenix 2.4.31; T90; rv1.7.6) Salamander/20030809 Windtoad/2.0.0.7
Googlebot/2.1 (Amiga; N; A/UX 10.1; VAX8800; rv1.6.6) Dragon/20090530 Airweasel/3.0.4
Googlebot/2.1 (Amiga; N; A/UX 2.6.17; DC333; rv1.6.3) KHTML/20100101 Lightningwolf/3.5
Googlebot/2.1 (Amiga; N; AIDX 2.6.36; MIPS; rv1.5.6) Penguin/20040411 Seaslug/1.0.2
Googlebot/2.1 (Amiga; N; Android 2.6.26; M68200; rv1.8.5) Gangsta/20070518 Lightningdove/3.0.16
Googlebot/2.1 (Amiga; N; Atari DOS 5.2; UNIVAC 1107; rv1.8.3) Lizard/20070518 Turbomouse/3.6.22
Googlebot/2.1 (Amiga; N; AtheOS 2.2.16; VAX; rv1.9.1) Lizard/20050915 Turbobird/3.6.12
Googlebot/2.1 (Amiga; N; AtheOS 3.2; Z80; rv1.6.4) KHTML/20100101 Spacedog/2.0.0.16
Googlebot/2.1 (Amiga; N; CP/M 2.0.31; z196; rv1.8.4) Penguin/20030809 Watershark/3.6.9
Googlebot/2.1 (Amiga; N; DR-DOS 2.2.29; MSX2; rv1.8.5) KHTML/20080524 Spacestar/1.5.0.7
Googlebot/2.1 (Amiga; N; DR-DOS 2.6.12; P500; rv1.4.3) Gangsta/20120101 Airspider/1.0
Googlebot/2.1 (Amiga; N; FreeBSD 5.0; HP2100; rv1.5.4) Presto/20120101 Sunsnail/3.6.23
Googlebot/2.1 (Amiga; N; H-PUX 2.4.40; ARM; rv1.6.9) Presto/20050915 Lightningsnake/1.0.6
Googlebot/2.1 (Amiga; N; HP-UX 2.6.18; MIPS16; rv1.7) Presto/20090530 Windsnake/3.5.11
Googlebot/2.1 (Amiga; N; IRIX 2.6.2; M88000; rv1.3.2) WebKit/20090530 Firesnake/3.5.13
```

### Google Bot using Atari

```
Googlebot/2.1 (Atari; I; A/UX 3.0; M68100; rv1.3.11) WebKit/20110101 Turboowl/11.0b5
Googlebot/2.1 (Atari; I; Amiga DOS 2.0.8; ia32; rv1.2.9) Trident/20080524 Firecat/10.0b1
Googlebot/2.1 (Atari; I; Apple DOS 2.2.32; M26300; rv1.4.11) Gecko/20040411 Watersheep/3.0.15
Googlebot/2.1 (Atari; I; Apple DOS 2.2.9; Z80; rv8.0) Gecko/20100101 Airmonkey/11.0b3
Googlebot/2.1 (Atari; I; Atari DOS 2.0.6; HP3000; rv1.3.10) Salamander/20061222 Powermonkey/2.0.0.16
Googlebot/2.1 (Atari; I; Darwin 2.2.40; 80286; rv1.2) WebKit/20120101 Windbat/3.5.7
Googlebot/2.1 (Atari; I; Encom OS 2.6.28; i186; rv1.8.1) Penguin/20100101 Waterape/1.0.6
Googlebot/2.1 (Atari; I; H-PUX 10.7; EMM386; rv1.8.12) Dragon/20110101 Spaceslug/3.6.20
Googlebot/2.1 (Atari; I; iOS 2.6.27; MIPS64; rv6.0) Salamander/20080524 Hyperbird/0.2
Googlebot/2.1 (Atari; I; iOS 2.6.28; i386; rv1.6.3) Dragon/20080524 Firesnake/3.0.7
Googlebot/2.1 (Atari; I; KERNAL 2.2.6; VAX8800; rv1.7.10) Trident/20090530 Jungledog/0.8
Googlebot/2.1 (Atari; I; KERNAL 2.6.24; PPC; rv10.0) Salamander/20061222 Powershell/3.0.14
Googlebot/2.1 (Atari; I; Mac OS X 2.6.40; Alpha; rv1.5.2) Lizard/20120101 Airbeast/3.6.17
Googlebot/2.1 (Atari; I; Mac OS X 3.3; CDC8600; rv1.2.10) KHTML/20080524 Lightningfrog/1.5.0.11
Googlebot/2.1 (Atari; I; MenuetOS 2.0.9; M68000; rv1.2.12) Gangsta/20070518 Hypnomonkey/11.0a3
Googlebot/2.1 (Atari; I; MS-DOS 2.2.18; i386; rv1.7.8) Penguin/20050915 Watersheep/10.0b3
Googlebot/2.1 (Atari; I; MS-DOS 2.4.26; Z80; rv1.7) Presto/20080524 Powerspider/3.0.9
```

### Google Bot using Commodore

```
Googlebot/2.1 (Commodore; I; Amiga DOS 2.0.3; z9; rv1.5.7) Alligator/20120101 Windcat/3.6.2
Googlebot/2.1 (Commodore; I; Amoeba 3.51; VAX; rv1.4.4) Lizard/20100101 Sunbird/3.6.14
Googlebot/2.1 (Commodore; I; Atari DOS 2.4.25; M88000; rv1.5) KHTML/20090530 Icefox/10.0b5
Googlebot/2.1 (Commodore; I; CP/M 4.1; M68200; rv1.5) Alligator/20040411 Junglebeast/2.0.0.10
Googlebot/2.1 (Commodore; I; DR-DOS 2.6.11; XE6; rv1.2.9) Penguin/20100101 Lightningape/3.6.23
Googlebot/2.1 (Commodore; I; DR-DOS 2.6.13; IBM1130; rv1.3.2) Dragon/20090530 Seafrog/3.6.19
Googlebot/2.1 (Commodore; I; DR-DOS 2.6.29; CX1000; rv1.2.11) KHTML/20100101 Firesheep/1.5.0.6
Googlebot/2.1 (Commodore; I; FreeDOS 2.2.39; EMM386; rv1.5) Presto/20030809 Waterfrog/1.5.0.5
Googlebot/2.1 (Commodore; I; FreeDOS 2.4.34; VAX8600; rv6.0) Gecko/20070518 Powerowl/1.0.1
Googlebot/2.1 (Commodore; I; GNU/Hurd 10.5; CPC-6128; rv1.5) Gangsta/20030809 Lightningshark/10.0
Googlebot/2.1 (Commodore; I; GNU/Hurd 2.0.19; AVR32; rv1.5.6) WebKit/20040411 Powersnake/3.5.9
Googlebot/2.1 (Commodore; I; HP-UX 2.0.23; VAX; rv1.2.8) Salamander/20080524 Sunshell/1.0
Googlebot/2.1 (Commodore; I; iOS 5.1; C90; rv1.6.8) Salamander/20080524 Seaspider/1.0
Googlebot/2.1 (Commodore; I; IRIX 2.2.22; MIPS32; rv1.2.4) Dragon/20040411 Spacebeast/10.0b6
Googlebot/2.1 (Commodore; I; KERNAL 3.0; MT6502; rv1.8.7) Penguin/20061222 Seafish/3.0.16
Googlebot/2.1 (Commodore; I; LCARS 2.6.18; M26300; rv1.3.5) Gangsta/20120101 Sunfly/3.6.25
Googlebot/2.1 (Commodore; I; Linux 2.4.20; CX1; rv1.5) Alligator/20110101 Iceweasel/1.0.7
Googlebot/2.1 (Commodore; I; MenuetOS 2.0.4; M68200; rv1.5.6) Gecko/20040411 Powerdog/3.5.19
Googlebot/2.1 (Commodore; I; MenuetOS 2.6.32; CPC-6128; rv1.2.6) KHTML/20080524 Seashell/3.5.14
Googlebot/2.1 (Commodore; I; System V 2.2.1; VAX8800; rv1.6.6) Dragon/20110101 Waterfox/0.8
```

### Google Bot using Ipod

```
Googlebot/2.1 (iPod; I; Darwin 2.6.23; HP2100; rv1.3.4) Crocodile/20100101 Thunderlynx/7.0.1
Googlebot/2.1 (iPod; I; Encom OS 2.6.39; M6800; rv1.4.10) Presto/20040411 Thunderfrog/11.0b2
Googlebot/2.1 (iPod; I; FreeDOS 2.0.30; DC333; rv1.8) Crocodile/20080524 Waterwolf/11.0b1
Googlebot/2.1 (iPod; I; GNU/Hurd 2.4.11; ZUSE3; rv6.0) Gangsta/20120101 Hyperamoeba/0.3
Googlebot/2.1 (iPod; I; GNU/Mach 10.1; M88000; rv6.0) Crocodile/20110101 Hyperfish/3.6.1
Googlebot/2.1 (iPod; I; HP-SUX 2.2.14; 80286; rv1.3.6) Salamander/20070518 Iceshark/3.5.2
Googlebot/2.1 (iPod; I; HP-UX 6.0; i4004; rv1.9.2) Dragon/20100101 Fireamoeba/10.0a6
Googlebot/2.1 (iPod; I; IRIX 2.6.9; HP2100; rv1.7.8) Trident/20040411 Hypnoshark/2.0.0.14
Googlebot/2.1 (iPod; I; KERNAL 2.6.14; i386; rv1.4.3) Trident/20100101 Jungleshark/11.0b1
Googlebot/2.1 (iPod; I; KERNAL 6.1; z10; rv1.5.3) Crocodile/20100101 Thundershell/3.0.17
```

### Google Bot using Lcars

```
Googlebot/2.1 (LCARS; I; HP-UX 2.0.5; PDP-11; rv1.2.3) Trident/20070518 Thunderbird/0.1
Googlebot/2.1 (LCARS; I; HP-UX 2.6.1; i486; rv1.4.4) Gangsta/20040411 Sundog/3.5.4
Googlebot/2.1 (LCARS; I; iOS 2.6.28; SPARC64; rv1.3.4) Gecko/20061222 Icebot/1.0
Googlebot/2.1 (LCARS; I; Mac OS X 2.2.36; i186; rv1.5.3) Crocodile/20050915 Watermonkey/3.6.16
Googlebot/2.1 (LCARS; I; Mac OS X 2.6.3; i686; rv1.7.12) Crocodile/20100101 Seashell/0.5
Googlebot/2.1 (LCARS; I; Minix 5.0; i486; rv1.3.9) Salamander/20040411 Hypnobird/11.0b4
Googlebot/2.1 (LCARS; I; MS-DOS 2.6.11; HAL9000; rv1.4.1) Salamander/20061222 Thundertoad/6.0.1
Googlebot/2.1 (LCARS; I; NetBSD 5.2; i4004; rv1.5.7) Penguin/20110101 Iceamoeba/3.0.11
Googlebot/2.1 (LCARS; I; NetWare 2.4.0; DC335; rv1.8.6) Penguin/20110101 Icespider/11.0b1
Googlebot/2.1 (LCARS; I; OpenBSD 2.2.28; ESA/390; rv1.9.2) Gangsta/20090530 Icesheep/10.0a5
Googlebot/2.1 (LCARS; I; OpenServer 2.2.40; UNIVAC 1107; rv1.6.9) WebKit/20070518 Sunsnail/3.5.3
Googlebot/2.1 (LCARS; I; OpenVMS 2.6.11; XE6; rv1.3.8) Trident/20061222 Sunsnake/1.5.0.5
Googlebot/2.1 (LCARS; I; RISC OS 10.5; SPARC64; rv1.8.1) Gangsta/20050915 Firedove/3.6.25
Googlebot/2.1 (LCARS; I; RISC OS 2.2.16; x86; rv1.6.6) Crocodile/20030809 Icespider/3.6.23
```

The pr will not add dead bots and will remove it from the repo.

## Fake Bots

```
Mozilla/5.0 (compatible; Googlebot/2.1; +https://www.google.com/bot.html)
```

Above: Namespace doesn't use `https` the real one uses `http`

```
Mozilla/5.0 (compatible; Googlebot/2.1 +http://www.googlebot.com/bot.html)

Googlebot/2.1 (+http://www.googlebot.com/bot.html)
```

Above: The correct namespace uses `http://www.google.com` and not `http://www.googlebot.com`

```
crawl-66-249-66-210.googlebot.com

googlebot

Googlebot

GoogleBot

Mozilla/5.0 (Linux; Android 4.0.2; en-us; Nexus 6 Build/JOP40D) AppleWebKit/635.19 (KHTML, like Gecko; googleweblight) Chrome/78.0.1025.162 Mobile Safari/635.19

Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko; Google-Sites-Thumbnails) Chrome/84.0.4147.140 Safari/537.36

AdsBot-Google ( http://www.google.com/adsbot.html)

Mozilla/5.0+(compatible;+Googlebot/2.1;++http://www.google.com/bot.html)

DoCoMo/2.0 N905i(c100;TB;W24H16) (compatible; Googlebot-Mobile/2.1; http://www.google.com/bot.html)

Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Maxthon/5.0 Chrome/47.0.2526.73 Safari/537.36/Mozilla/5.0 (compatible; Google-Youtube-Links)

Mozilla/5.0 (iPhone; U; CPU iPhone OS) (compatible; Googlebot-Mobile/2.1; http://www.google.com/bot.html)

Mozilla/5.0(Windows NT 6.1; Googlebot/2.1

Mozilla/5.0 (iPhone ; CPU iPhone OS 9_1, par exemple Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1 (compatible ; AdsBot-Google-Mobile ; +http://www.google.com/mobile/adsbot.html)

Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html

Mozilla/5.0 (compatible; Googlebot/2.1; +BolfingUnicbot)

Mozilla/5.0 (compatible; Googlebot/2.1; +Bolfing@Unicbot)

Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.0 Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)

(compatible; Googlebot/2.1; +http://www.google.com/bot.html)

Mozilla / 5.0 (compat\xC3\xADvel; Googlebot / 2.1; + http: //www.google.com/bot.html)

compatible; Googlebot/2.1; +http://www.google.com/bot.html

Mozilla/5.0 (iPhone; CPU iPhone OS 6_0_1 like Mac OS X) AppleWebKit/537.4 (KHTML, like Gecko; Google Page Speed Insights) Version/6.0 Mobile/10A525 Safari/8536.25

Mozilla/5.0 (compatible& Googlebot/2.1& +http://www.google.com/bot.html)

Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/W.X.Y.Z Mobile Safari/537.36 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)

Googlebot/2.1; +http://www.google.com/bot.html

Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3) AppleWebKit/[WEBKIT_VERSION] (KHTML, like Gecko, Mediapartners-Google) Chrome/[CHROME_VERSION] Safari/[WEBKIT_VERSION]

Googlebot/3.0 Accept: */*

Googlebot/2.1\xc2\xa0(+http://www.googlebot.com/bot.html)

Googlebot/2.1 (http://www.googlebot.com/bot.html)

Mozilla/5.1 (Windows NT 6.0; WOW64) AppleWebKit/537.37 (KHTML, like Gecko) Chrome/58.0.1145.75 Safari/537.37 _x_uv_o_debug_ googlebot

Googlebot/Nutch-1.7

Mozilla/6.0(compatible; Googlebot/2.1; + http://www.google.com/bo.html)

Mozilla/5.0(compatible; Googlebot/2.1; + http://www.google.com/bo.html)

Mozilla/3.0 (iPhone; CPU iPhone OS 10_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/10.0 Mobile/13B143 Safari/601.1 (compatible; AdsBot-Google-Mobile; +https://www.google.com/mobile/adsbot.html1571539337208

Mozilla/5.0 (compatible; Googlebot/2.1;http://www.google.com/bot.html

gMozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)

Mozilla/5.0 (Linux; Android 9; ru-ru; Mi A2 Lite Build/PKQ1.180917.001;) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Version/4.0 Chrome/44.0.2403.119 Mobile Safari/537.36

Mozilla/5.0 (Linux; Android 9; ru-ru; Mi A2 Lite Build/PKQ1.180917.001;) AppleWebKit/537.36 (KHTML, like Gecko; Google Page Speed Insights) Version/4.0 Chrome/74.0.3729.157 Mobile Safari/537.36

Mozilla/5.0(compatible; Googlebot/2.1;+http://www.google.com/bot.html)

Mozilla/5.0(compatible;Googlebot/2.1; +http://www.google.com/bot.html)

Mozilla/4.0 (compatible; MSIE 6.0;Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)

GoogleBot/5.5 (Windows 95 5.1; en-US;)

Mozilla/5.0 (compatible; GoogIebot/2.1; +http://www.googIe.com/bot.html)

Mozilla/5.0 (compatible; GoogIebot/2.1; +http://www.googIe.com/bot.html)

Googlebot (compatible; Googlebot/2.1; +http://www.google.com/bot.html)

Mozilla/5.0 (compatible; Googlebot/2.8888888888888888888; +http://www.google.com/bot.html)

Googlebot/2.1 (http://www.google.bot.com/bot.html)

Mozilla / 5.0 (kompatibiln\xC3\xAD; Googlebot / 2.1; + http: //www.google.com/bot.html)

Mozilla/5.0 (Windows; Linux; Android; en-us;) AppleWebKit/535.19 (KHTML, like Gecko; googleweblight) Chrome/38.0.1025.166 Mobile Safari/535.19

Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html) BREEEZE ITERATION 3

Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.googloe.com/bot.html)

Mozarella/5.0 (incompatible; Googlebot/2.1; +http://www.guuggle.com/bot.html)

Googlebot/2.1; +http://www.google.com/bot.html)

Googlebot/2.1 (+http://www.googlebawt.com/bot.html)

Mozilla/6.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)

Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36 Googlebot/2.1 (+http://www.googlebot.com/bot.html)

Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.tml)

Chrome/41.0.2272.96 Mobile Safari/537.36 (compatible ; Googlebot/2.1 ; +http://www.google.com/bot.html)

Mozilla/5.0 (compatible; Googlebot/2.1;+http:/ww.google.com/bot.html)

Googlebot/2.1;+http//www.google.com/bot.html)

Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html )

HACKTHEBAR/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)
```

Link: https://www.google.com/

Link: https://support.google.com/webmasters/answer/1061943?hl=en&ref_topic=9426101
