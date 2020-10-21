## Bing

### Bing Bot

Bingbot is our standard crawler and handles most of our crawling needs each day. Bingbot uses a couple of different user agent strings.

Old UA:

```
Mozilla/5.0 (compatible; bingbot/2.0; http://www.bing.com/bingbot.htm)

Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Safari/537.36
```

New UA:

```
Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)

Mozilla/5.0 AppleWebKit/537.36 (KHTML, like Gecko; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) Chrome/W.X.Y.Z Safari/537.36 Edg/W.X.Y.Z

Mozilla/5.0 (Linux; Android 6.0.1; Nexus 5X Build/MMB29P) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/W.X.Y.Z Mobile Safari/537.36 Edg/W.X.Y.Z (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)

Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465 Safari/9537.53 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)
```

Note: Google and Bing use `Evergreen` bots now! For example, "W.X.Y.Z" will be substituted with the latest Microsoft Edge version we're using, for example “80.0.345.0".

### Bing AdIdx Bot

AdIdxBot is the crawler used by Bing Ads. AdIdxBot is responsible for crawling ads and following through to websites from those ads for quality control purposes. Same as Bingbot, AdIdxBot has both desktop and mobile variants.

Old UA:

```
Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465 Safari/9537.53 (compatible; adidxbot/2.0; http://www.bing.com/bingbot.htm)

Mozilla/5.0 (compatible; adidxbot/2.0; http://www.bing.com/bingbot.htm)

Mozilla/5.0 (Windows Phone 8.1; ARM; Trident/7.0; Touch; rv:11.0; IEMobile/11.0; NOKIA; Lumia 530) like Gecko (compatible; adidxbot/2.0; +http://www.bing.com/bingbot.htm)
```

New UA:

```
Mozilla/5.0 (compatible; adidxbot/2.0; +http://www.bing.com/bingbot.htm)

Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465 Safari/9537.53 (compatible; adidxbot/2.0; +http://www.bing.com/bingbot.htm)

Mozilla/5.0 (Windows Phone 8.1; ARM; Trident/7.0; Touch; rv:11.0; IEMobile/11.0; NOKIA; Lumia 530) like Gecko (compatible; adidxbot/2.0; +http://www.bing.com/bingbot.htm)
```

### Bing Preview Bot

BingPreview is used to generate page snapshots. You can find more details about Bing Preview here. Note that BingPreview also has "desktop" and "mobile" variants.

Old UA:

```
Mozilla/5.0 (Windows NT 6.3; WOW64; Trident/7.0; rv:11.0; BingPreview/1.0b) like Gecko
Mozilla/5.0 (Windows NT 6.3; Trident/7.0; rv:11.0) like Gecko BingPreview/1.0b
```

New UA:

```
Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/534+ (KHTML, like Gecko) BingPreview/1.0b

Mozilla/5.0 (Windows Phone 8.1; ARM; Trident/7.0; Touch; rv:11.0; IEMobile/11.0; NOKIA; Lumia 530) like Gecko BingPreview/1.0b

Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465 Safari/9537.53 BingPreview/1.0b
```

### Bing Seo Analyser Bot

```
Mozilla/5.0 (seoanalyzer; compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm)
```

### Bing Mobile Bot

```
Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465 Safari/9537.53 (compatible; bingbot/2.0; http://www.bing.com/bingbot.htm)
```

Note: Contains the keyword `Mobile` in the UA.

### Bing Msnbot Media Bot

```
Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/534+ (KHTML, like Gecko) MsnBot-Media /1.0b
msnbot-media/1.1 (+http://search.msn.com/msnbot.htm)
```

### Bing Msnbot Bot

Old UA:

```
msnbot/2.0b (+http://search.msn.com/msnbot.htm)._

msnbot/1.1 (+http://search.msn.com/msnbot.htm)

msnbot/1.0 (+http://search.msn.com/msnbot.htm)

msnbot/0.01 (+http://search.msn.com/msnbot.htm)

msnbot/0.3 (+http://search.msn.com/msnbot.htm)

msnbot/0.9 (+http://search.msn.com/msnbot.htm)

msnbot/0.11 (+http://search.msn.com/msnbot.htm)
```

New UA:

```
msnbot/2.0b

msnbot/2.0b (+http://search.msn.com/msnbot.htm)

msnbot/2.0b ( http://search.msn.com/msnbot.htm)
```

### Reverse DNS

```
msnbot-157-55-39-145.search.msn.com
```

## Escaped  or Fake Bots

These bots are old and not being used by Bing - but they have escaped onto the internet and crawling our test websites all the time! Therefore we are going to add their UA detection to this repo, to allow developers to then take action on them as they see fit.

### Bing Libra Bot (bad)

```
librabot/1.0 (+http://search.msn.com/msnbot.htm)

librabot/2.0/1.0 (+http://search.msn.com/msnbot.htm)

librabot/2.0 (+http://search.msn.com/msnbot.htm)
```

### Bing Msnbot Mobile Bot (bad)

```
MSNBOT_Mobile MSMOBOT Mozilla/2.0 (compatible;   MSIE 4.02; Windows CE; Default)/1.1 (+http://search.msn.com/msnbot.htm)

MSNBOT_Mobile MSMOBOT Mozilla/2.0 (compatible;   MSIE 4.02; Windows CE; Default)
MSMOBOT/1.1 (+http://search.msn.com/msnbot.htm)

T-Mobile Dash Mozilla/4.0 (compatible; MSIE 4.01;   Windows CE; Smartphone; 320x240; MSNBOT-MOBILE/1.1;   +http://search.msn.com/msnbot.htm)
```

### Bing Msnbot Products Bot (bad)

```
msnbot-Products/1.0   (+http://search.msn.com/msnbot.htm)
```

### Bing Renlifang Bot (bad)

```
renlifangbot/1.0   (+http://search.msn.com/msnbot.htm)
```

### Bing Lanshan Bot (bad)

```
lanshanbot/1.0   (+http://search.msn.com/msnbot.htm)
```

## Dead Bots

### Bing Msnbot UDiscovery (2011 - 2015)

```
msnbot-UDiscovery/2.0b (+http://search.msn.com/msnbot.htm)
```

### Bing Msnbot Media Bot (2015 - 2017)

```
msnbot-media/2.0b (+http://search.msn.com/msnbot.htm)
msnbot-media/1.0 (+http://search.msn.com/msnbot.htm)
```

### Bing Msnbot News Blogs Bot (2009)

```
msnbot-NewsBlogs/2.0b (+http://search.msn.com/msnbot.htm)
msnbot-NewsBlogs/1.1 (+http://search.msn.com/msnbot.htm)
```

### Bing Bot (2012 - 2014)

```
Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm
```

### Bing Preview Bot (2014 - 2015)

```
Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; Trident/5.0; WOW64; Trident/5.0; BingPreview/1.0b)
Mozilla/5.0 (compatible; MSIE 10.0; Windows NT 6.2; Trident/6.0; WOW64; Trident/6.0; BingPreview/1.0b)
```

### Bing Adidx Bot (2011 - 2013)

```
adidxbot/2.0 (+http://search.msn.com/msnbot.htm)
adidxbot/1.1 (+http://search.msn.com/msnbot.htm)
```

### Bing Sitemap Probe Bot (2013)

```
Mozilla/5.0 (compatible; bingbot/2.0; +http://www.bing.com/bingbot.htm) SitemapProbe
```

### Bot 2.0 (2012 - 2015)

```
Mozilla/5.0 (compatible; bot/2.0; +http://www.bing.com/bingbot.htm)
```

### MsnBot (2010)

```
msnbot/2.0b (+http://search.msn.com/msnbot.htm).
msnbot/2.0b+(+http://search.msn.com/msnbot.htm)
msnbot/1.0-MM (+http://search.msn.com/msnbot.htm)
msnbot/1.1 ( http://search.msn.com/msnbot.htm)
msnbot/0.11 ( http://search.msn.com/msnbot.htm)
msnbot/2.0b (+http://search.msn.com/msnbot.htm).
msnbot/1.0 ( http://search.msn.com/msnbot.htm)
msnbot/2.1
MSNbot/1.0
msnbot/2.0b v1407940338.3468
msnbot/1.1 (bing Webmaster Tool)
msnbot-131-253-38-20.search.msn.com
msnbot/1.0+(+http://search.msn.com/msnbot.htm)
msnbot/2.0b-(+http://search.msn.com/msnbot.htm)
msnbot/2.0b (+http://search.msn.com/msnbot.htm)   X-Middleton/1
msnbot/x.xx ( http://search.msn.com/msnbot.htm)
MSNBOT/0.xx (http://search.msn.com/msnbot.htm)
msnbot/2.0b v1367549217.4911
MSNBOT/0.1x (http://search.msn.com/msnbot.htm)
msnbot/2.0b v1345761203.6613
msn/1.0 (+http://search.msn.com/msnbot.htm)
msnbot/2.0b v1374263781.0484
MSNBOT/0.1 (http://search.msn.com/msnbot.htm)
```

### Bing Msnbot Mobile Bot (2008)

```
Opera/9.80 (J2ME/MIDP; Opera Mini/2.1 (compatible; MSIE 4.01; Windows CE; Smartphone; 320x240;) MSNBOT-MOBILE/22.414; U; en) Presto/2.5.25 Version/10.54
```

### Bing Msra Bot (2009)

```
msrabot/1.0 (+http://search.msn.com/msnbot.htm)
```

### Bing Livebot Search Sense (2009)

```
Mozilla/4.0 (compatible; MSIE 7.0; Windows NT   5.1; livebot-searchsense/0.1; +http://search.msn.com/msnbot.htm)
```

### Msnbot Products (2009)

```
msnbot-products
```

## MSN Bots from 2009

Name | Description
---|---
MSNBot | Main web crawler (www.live.com)
MSNBot-Media | Images & all other media (images.live.com)
MSNBot-NewsBlogs | News and blogs (search.live.com/news)
MSNBot-Products | Products & shopping (products.live.com)
MSNBot-Academic | Academic search (academic.live.com)

### Fake Bot using MJ12 (Majestic)

```
MJ12bot/1.1 (+http://search.msn.com/msnbot.htm)
```

This pr will not add and will remove dead bots from this repo.

Link: https://www.bing.com/

Link: https://www.bing.com/webmaster/help/which-crawlers-does-bing-use-8c184ec0
