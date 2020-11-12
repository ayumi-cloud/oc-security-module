## Firewall HTTP Status Codes

The api is made up of the general web standards, Microsoft's Internet Information Services (IIS), Nginx web server, Cloudflare, AWS Elastic Load Balancer and Laravel status codes.

Status Code | Description
--|--
200 | 200 - Ok
301 | 301 - Moved Permanently
302 | 302 - Found (Previously "Moved temporarily")
303 | 303 - See Other
304 | 304 - Not Modified
305 | 305 - Use Proxy
306 | 306 - Switch Proxy
307 | 307 - Temporary Redirect
308 | 308 - Permanent Redirect
400 | 400 - Bad Request
401 | 401 - Unauthorized
402 | 402 - Payment Required
403 | 403 - Forbidden
404 | 404 - Not Found
405 | 405 - Method Not Allowed
406 | 406 - Not Acceptable
407 | 407 - Proxy Authentication Required
408 | 408 - Request Timeout
409 | 409 - Conflict
410 | 410 - Gone
411 | 411 - Length Required
412 | 412 - Precondition Failed
413 | 413 - Payload Too Large
414 | 414 - URI Too Long
415 | 415 - Unsupported Media Type
416 | 416 - Range Not Satisfiable
417 | 417 - Expectation Failed
419 | 419 - Page Expired
421 | 421 - Misdirected Request
422 | 422 - Unprocessable Entity
423 | 423 - Locked
424 | 424 - Failed Dependency
425 | 425 - Too Early
426 | 426 - Upgrade Required
428 | 428 - Precondition Required
429 | 429 - Too Many Requests
431 | 431 - Request Header Fields Too Large
440 | 440 - Login Time-out
444 | 444 - No Response
449 | 449 - Retry With
451 | 451 - Unavailable For Legal Reasons
460 | 460 - AWS Elastic Load Balancer
463 | 463 - AWS Elastic Load Balancer
494 | 494 - Request header too large
495 | 495 - SSL Certificate Error
496 | 496 - SSL Certificate Required
497 | 497 - HTTP Request Sent to HTTPS Port
499 | 499 - Client Closed Request
500 | 500 - Internal Server Error
501 | 501 - Not Implemented
502 | 502 - Bad Gateway
503 | 503 - Service Unavailable
504 | 504 - Gateway Timeout
505 | 505 - HTTP Version Not Supported
506 | 506 - Variant Also Negotiates
507 | 507 - Insufficient Storage
508 | 508 - Loop Detected
509 | 509 - Bandwidth Limit Exceeded
510 | 510 - Not Extended
511 | 511 - Network Authentication Required
520 | 520 - Web Server Returned an Unknown Error
521 | 521 - Web Server Is Down
522 | 522 - Connection Timed Out
523 | 523 - Origin Is Unreachable
524 | 524 - A Timeout Occurred
525 | 525 - SSL Handshake Failed
526 | 526 - Invalid SSL Certificate
527 | 527 - Railgun Error
530 | 530 - Cloudflare
598 | 598 - Network read timeout error

(*) In the future more http status codes will be added to support more servers and cdn's etc.
