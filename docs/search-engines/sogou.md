## Sogou

### Sogou Bot

```
Sogou web spider/4.0(+http://www.sogou.com/docs/help/webmasters.htm#07)

Sogou inst spider/4.0(+http://www.sogou.com/docs/help/webmasters.htm#07)

Sogou spider (+http://www.sogou.com/docs/help/webmasters.htm#07)

Mozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5376e Safari/8536.25(compatible; Sogou web spider/4.0; +http://www.sogou.com/docs/help/webmasters.htm#07)
```

Need to detect mixed case letters.

### Sogou Mobile Bot

```
Mozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS X) AppleWebKit/536.26 KHTML Version/6.0 Mobile/10A5376e Safari/8536.25(compatible;Sogou mobile spider/2.0;url) zh-cn

Sogou wap spider(+http://www.sogou.com/docs/help/webmasters.htm#07)
```

Missing tests.

Need to detect mixed case letters.

### Sogou Image Bot
```
Sogou Pic Spider/3.0(+http://www.sogou.com/docs/help/webmasters.htm#07)
```

Need to detect mixed case letters.

### Sogou News Bot

```
Sogou News Spider/4.0(+http://www.sogou.com/docs/help/webmasters.htm#07)
```
Missing regex.

Link: http://help.sogou.com/news.html?v=1

### Sogou Video Bot

```
Sogou Video Spider/3.0(+http://www.sogou.com/docs/help/webmasters.htm#07)
```

### Sogou Push Bot

```
Sogou Push Spider/3.0(+http://www.sogou.com/docs/help/webmasters.htm#07)
```

### Reverse DNS

```
sogouspider-49-7-21-100.crawl.sogou.com

crawl.sogou.com
```

## Dead bots (not going to add to pr)

### Sogou web spider/4.0

```
Sogou web spider/4.0
```

### Sogou wap spider/4.0

```
Mozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5376e Safari/8536.25(compatible; Sogou wap spider/4.0; +http://www.sogou.com/docs/help/webmasters.htm#07)
```

### Sogou-Test-Spider/4.0

```
Sogou-Test-Spider/4.0 (compatible; MSIE 5.5; Windows 98)
```

### Sogou web spider/4.025251

```
Sogou web spider/4.025251
```

### Sogou web spider/4.02525A

```
Sogou web spider/4.02525A
```

### sogou spider

```
sogou spider
```

**Remove this regex this was last used between 2009 - 2012!**

### Sogou web spider

```
Sogou Web Spider
```

Link: http://www.sogou.com/docs/help/webmasters.htm

## Sogou search engine UA Q&A

Q: How does Sogou spider reflect the update of the pages on my website?

A: Sogou spider will dynamically adjust the update time according to the importance of web pages and historical changes, and update the pages that have been crawled.

Q: What is the crawl frequency of Sogou Spider?

A: Sogou spider only establishes one connection to the server host with the same IP address, and the crawling interval is controlled at a few seconds. After a web page is included, it will take a few days at the earliest before it will be updated. If you continue to crawl your website, please pay attention to whether the pages on your website generate new links every time you visit.

If you think that sogou spider is crawling your website too fast, please contact us, and it is best to provide the part of sogou spider visited in the access log, instead of directly banning the ua of Sogou spider.

Q: What kind of pages does Sogou spider like to include?

A: Good content and unique pages. If the content of your page is highly similar to other pages that already exist on the Internet, it may not be included by sogou spider.

Pages with a shallower link level. Links that are too deep, especially links to dynamic web pages, will be discarded and not included.

If it is a dynamic web page, please control the number of parameters and the length of the URL. Sogou prefers to include static web pages. The pages with more redirects are more likely to be discarded by the sogou spider.
