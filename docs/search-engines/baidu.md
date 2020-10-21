## Baidu

Below is an outline of the types of bots Baidu uses:

product name | Corresponding to user-agent
-- | --
Web search | Baiduspider
Mobile search | Baiduspider
Image search | Baiduspider-image
Video search | Baiduspider-video
News search | Baiduspider-news
Baidu Bookmark | Baiduspider-favo
Baidu Union | Baiduspider-cpro
Baidu Business / Adverts | Baiduspider-ads

Mobile vs Desktop Bots, mobile versions use the keyword `Mobile` in the UA.

---

### Baiduspider Bot

Old UA:

```
Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36 Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html
```

New UA:

```
Mozilla/5.0 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)
```

### Baiduspider Mobile Bot

```
Mozilla/5.0 (Linux;u;Android 4.2.2;zh-cn;) AppleWebKit/534.46 (KHTML,like Gecko) Version/5.1 Mobile Safari/10600.6.3 (compatible; Baiduspider/2.0; +http://www.baidu.com/search/spider.html)
```

Note: Contains `Mobile` in UA.

### Baiduspider Render Bot

```
Mozilla/5.0 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)
```

### Baiduspider Mobile Render Bot

```
Mozilla/5.0 (iPhone; CPU iPhone OS 9_1 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13B143 Safari/601.1 (compatible; Baiduspider-render/2.0; +http://www.baidu.com/search/spider.html)
```

Note: Contains `Mobile` in UA.

### Baiduspider Image Bot

```
Baiduspider-image+(+http://www.baidu.com/search/spider.htm)
```

### Baiduspider Video Bot

```
Mozilla/5.0 (compatible; Baiduspider-video/2.0; +http://www.baidu.com/search/spider.html)
```

### Baiduspider News Bot

```
Mozilla/5.0 (compatible; Baiduspider-news/2.0; +http://www.baidu.com/search/spider.html)
```

### Baiduspider Collection Bot

```
Baiduspider-favo+(+http://www.baidu.com/search/spider.htm)
```

### Baiduspider Bookmark Bot

```
Mozilla/5.0 (compatible; Baiduspider-cpro; http://www.baidu.com/search/spider.html)
Mozilla/5.0 (compatible; Baiduspider-cpro; +http://www.baidu.com/search/spider.html)
Mozilla/5.0 (compatible; Baiduspider-cpro/2.0; +http://www.baidu.com/search/spider.html)
```

### Baiduspider Adverts Bot

```
Mozilla/5.0 (Linux; U; Android 4.1; en-us; GT-N7100 Build/JRO03C;Baiduspider-ads)AppleWebKit/534.30 (KHTML, like Gecko) Version/4.0 Mobile Safari/534.30

Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:17.0; Baiduspider-ads) Gecko/17.0 Firefox/17.0
```

### Reverse DNS

```
baiduspider-123-125-66-120.crawl.baidu.com
```

and

```
BaiduMobaider-119-63-195-254.crawl.baidu.jp
```

Note: Chinese bots are highly poorly coded and most of the time this bot will spam the website without using the correct reverse dns.

## Dead Bots (2008 - 2016)

### Baiduspider (2016)

```
Baiduspider+(+http://www.baidu.com/search/spider.htm)
```

### Baiduspider-mobile (2014)

```
Mozilla/5.0 (Linux;u;Android 2.3.7;zh-cn;) AppleWebKit/533.1 (KHTML,like Gecko) Version/4.0 Mobile Safari/533.1 (compatible; +http://www.baidu.com/search/spi_der.html)

Mozilla/5.0 (Linux;u;Android 2.3.7;zh-cn;) AppleWebKit/533.1 (KHTML,like Gecko) Version/4.0 Mobile Safari/533.1 (compatible; +http://www.baidu.com/search/spider.html)
```

### Baiduspider-image (2014)

```
Baiduspider-image+(+http://www.baidu.com/search/spider.htm)\nReferer: http://image.baidu.com/i?ct=503316480&z=0&tn=baiduimagedetail
```

### Baiduspider japan (2008 - 2010)

```
Baiduspider+(+http://www.baidu.jp/spider/)
Baiduspider+(+http://help.baidu.jp/system/05.html)
Baiduspider+(+http://www.baidu.com/search/spider_jp.html)
```

Dead bots will not be added to this pr and removed from repo.

Link: http://www.baidu.com/

Link: http://help.baidu.com/question?prod_id=99&class=476&id=2996

Link: https://www.baidu.com/search/robots_english.html
