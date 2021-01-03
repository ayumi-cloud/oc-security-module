## Summer CMS Firewall Response Scores API

### Response Scores

Score | Description | Browser Screen | Hash generated
---|---|---|---
0 | 200 (Default) | No | No
1 | 404 soft | Yes | No
2 | 410 soft | Yes | No
3 | 400 soft | Yes | No
4 | 400 hard | No | Yes
5* | 429 soft (Google treats 429 and 503 the same) | Yes | No
6* | 503 soft (Google treats 429 and 503 the same) | Yes | No
7 | 405 hard | No | No
8 | 403 soft | Yes | No
9 | 403 hard (repeat attackers) | No | Yes
10 | 444 (nginx connection closed without response) | No | Yes

Notes:

* 5 Will be a multi-level approach to separate scrapers and people. Repeat attacks will use a higher score, such as 9 or 10.

* 6 Will be a maintenance web page. 

### Troubleshooting Cloudflare 1XXX errors

Link: https://support.cloudflare.com/hc/en-us/articles/360029779472-Troubleshooting-Cloudflare-1XXX-errors

### Troubleshooting Cloudflare 5XX errors

Link: https://support.cloudflare.com/hc/en-us/articles/115003011431-Troubleshooting-Cloudflare-5XX-errors
