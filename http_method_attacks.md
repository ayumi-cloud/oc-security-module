## HTTP Method Attacks

### HTTP Method Override

Universal

### Abstract

Attackers may bypass server protections against dangerous HTTP verbs using override techniques.

### Explanation

In order to protect access to various resources, web servers may be configured to prevent the usage of specific HTTP verbs. However, some web frameworks provide a way to override the HTTP verb by using HTTP request headers. This feature is typically used when a web or proxy server restricts certain verbs, but the application needs to use them, especially in RESTful services. However, it is possible for a malicious user to take advantage of this feature. Doing so may allow the attacker to perform unintended actions on protected resources in the web application.

The attack works by using a trusted HTTP verb such as `GET` or `POST`, but adds request headers such as `X-HTTP-Method`, `X-HTTP-Method-Override` or `X-Method-Override` to provide a restricted verb such as `PUT` or `DELETE`. Doing so will force the request to be interpreted by the target application using the verb in the request header instead of the actual HTTP verb. In certain cases, the restricted verb may also be used in query or post parameters instead of a request header.

## References

- [1](https://msdn.microsoft.com/en-us/library/dd541471.aspx) MSDN Microsoft

- [2](https://github.com/expressjs/method-override) ExpressJS ExpressJS
