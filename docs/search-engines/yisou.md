## Yisou

### YisouSpider

UA:

```
Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.81 YisouSpider/5.0 Safari/537.36

YisouSpider

Mozilla/5.0 (iPhone; CPU iPhone OS 10_3 like Mac OS X) AppleWebKit/602.1.50 (KHTML, like Gecko) CriOS/56.0.2924.75 Mobile/14E5239e YisouSpider/5.0 Safari/602.1

Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/65.0.3325.181 YisouSpider/5.0 Safari/537.36
```

### Reverse DNS

```
shenmaspider-42-156-139-21.crawl.sm.cn
```

### Introduction to God Horse Spider

1. God Horse Spider

Shenma Spider is a program for Shenma to access the Internet and automatically crawl web pages. Spider crawls the web pages and builds indexes so that users can search for resources on the Internet through search engines.

2. The user-agent and IP address of Shenma Spider

User-agent is an attribute in the http protocol and represents the identity of the terminal. The user-agent of Shenma Spider is Yisouspider. Because of historical reasons, this user-agent name will continue to be used.

The IP address of Shenma Spider is a group of ip pools, which will change dynamically, so it is not listed here.

3. Visit frequency of Shenma Spider website

Shenma will determine the frequency of website visits based on factors such as the size of the website, service capabilities, page quality, and update speed. Usually, websites with high quality and fast web page update will be visited relatively frequently by spiders to ensure that high-quality and time-efficient websites can be displayed to users.

4. How to find new web pages

There are many ways for Shenma spider to discover new webpages. The most typical one is to analyse the hyperlink relationship in the webpages that have been discovered, select url's and crawl them, and continue to expand so as to capture as many valuable webpages as possible. In addition, Shenma will obtain the new website domain name from the dns service provider and be able to crawl the new website in time.

5. About Robots Agreement

Robots.txt is the first file that a search engine needs to visit when visiting a website to determine which web pages are allowed or forbidden to be crawled. Shenma Search complies with the Internet robots protocol. If you want to completely prohibit Shenma access or prohibit access to some directories, you can set the content through the robots.txt file to limit the access permissions of Shenma Spider.

robots.txt must be placed in the root directory of the website, and the file name must be lowercase.

Specific wording:

1) It is forbidden to capture by God Horse Spider completely:

```
User-agent: Yisouspider
Disallow: /
```

2) Prohibit Shenma spider from crawling the specified directory

```
User-agent: Yisouspider
Disallow: /update
Disallow: /history
```

Prohibit crawling of web pages in the update and history directories.

6. Will Shenma Spider cause bandwidth burden?

Shenma Spider has a standardized crawling process, and it also considers the busy and busy hours of the website to crawl, so it will not cause bandwidth burden on the website. If you find that the user-agent crawling named Yisouspider has seriously affected the normal access of the website, you can feed back the access log information of this period to zhanzhangpingtai@service.alibaba.com, and Shenma will send you the analysis conclusion.

Link: https://m.sm.cn/

Link: https://zhanzhang.sm.cn/

Link: https://zhanzhang.sm.cn/open/spider
