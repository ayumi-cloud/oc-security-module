### Response Score

Score | Description | Browser Screen | Hash generated
---|---|---|---
1 | 404 soft | Yes | No
2 | 410 soft | Yes | No
3 | 400 soft | Yes | No
4 | 400 soft | No | No
5* | 429 and 503 soft (Google treats the same) | No | No
6 | 405 hard | No | Yes
7 | 403 soft | Yes | No
8 | 403 hard (repeat attackers) | No | Yes
9 | 444 (nginx connection closed without response) | No | Yes
10 | Botnet | No | Yes

Notes:

* 5 Will be a multi-level approach to separate scrapers and people. Repeat attacks will use a higher score.
