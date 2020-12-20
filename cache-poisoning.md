1. This pr is trying to harden against: **host header poisoning** and as I like to call it **Web cache poisoning**

```
GET /example HTTP/1.1
Host: example.com
Host: bad-stuff-here
```

Above: I have injected a duplicate `Host` headers.

2. The request line should be given precedence when routing the request but, in practice, this isn't always the case. You can potentially exploit these discrepancies in much the same way as duplicate `Host` headers.

```
GET https://example.com/ HTTP/1.1
Host: bad-stuff-here
```

3. You can also uncover quirky behaviour by indenting HTTP headers with a space character.

```
GET /example HTTP/1.1
 Host: bad-stuff-here
Host: example.com
```

Above: Notice I put a space in front of the second line.

4. You can sometimes use `X-Forwarded-Host` to inject your malicious input while circumventing any validation on the `Host` header itself.

```
GET /example HTTP/1.1
Host: example.com
X-Forwarded-Host: evil.com
```

5. Although `X-Forwarded-Host` is the de facto standard for this behaviour, you may come across other headers that serve a similar purpose, including:

```
X-Host
X-Forwarded-Server
X-HTTP-Host-Override
Forwarded
X-Original-URL
X-Rewrite-URL
```

6. **Exploiting wildcard whitelists**, the first time I learnt about **Web cache poisoning** was being shown from websites allowing wildcards!

```
ALLOWED_HOSTS = ['*.octobercms.com'] // This no good
```

and

```
ALLOWED_HOSTS = ['www.octobercms.com', 'gateway.octobercms.com'] // This correct
```

In the above example `*.octobercms.com` then allows a hacker to inject `evil.octobercms.com`, this has an advantage of being a **phishing attack** and **Web cache poisoning** at the same time!

The recommendation from many security websites say:

> What you can do is make SERVER_NAME trustworthy. This can be achieved under Apache (instructions) and Nginx (instructions) by creating a dummy vhost that catches all requests with unrecognized Host headers. It can also be done under **Nginx by specifying a non-wildcard SERVER_NAME**, and under **Apache by using a non-wildcard serverName** and **turning the UseCanonicalName directive on**. I'd recommend using both approaches wherever possible.

## Fixing this vulnerability

The Django framework patched this issue many years ago and I like their setup.

1. Use a config file to store `ALLOWED_HOSTS`

2. Allow users to add whitelist rules - but not allow them to add wildcards. These include: the root domain, exact subdomains and the decicated ip address of the server, for example:

```
ALLOWED_HOSTS = ['111.222.333.444', 'example.com', 'japanese.example.com']
```

3. The cms also checks to see if the website is running in `developer` or `production` mode. If the cms is in `production` mode and the user tries to add a developer location such as `localhost` or `127.0.0.1` the cms should block these in its validation rules and send the user a warning message. For example:

```
ALLOWED_HOSTS = ['localhost', 111.222.333.444', 'example.com', 'japanese.example.com']
```

While config file `environment.php` is set to:

```
'default' => 'production',
```

4. This security feature should be turned on and **there shouldn't be an option to turn it off**. By default the cms should set the following rule:
 
```
ALLOWED_HOSTS = ['example.com', 'www.example.com']
```

5. It is also important to check that you do not support additional headers that may be used to construct these attacks, in particular `X-Forwarded-Host`. Remember that these may be supported by default.

Several months ago we tested the `X-Forwarded-Host` in October and found that it was being used to allow the website to send it's `POST` requests in certain situations.

The cms should also have extra rules to address these headers.

6. An extra level of security which we coded in our Summer CMS proposal was controlling `Proxies` headers. Some of these headers can be used to perform **Web cache poisoning** attacks. A list of all the proxy headers we control in our cms update proposal are as follows:

```
CLIENT_IP
FORWARDED
FORWARDED_FOR
FORWARDED_FOR_IP
HTTP_FORWARDED_FOR
HTTP_CLIENT_IP
HTTP_FORWARDED
HTTP_FORWARDED_FOR_IP
HTTP_PC_REMOTE_ADDR
HTTP_PROXY_CONNECTION
HTTP_VIA
HTTP_X_FORWARDED
HTTP_X_FORWARDED_FOR
PROXY_CONNECTION
USERAGENT_VIA
VIA
X_FORWARDED
X_FORWARDED_FOR
XPROXY_CONNECTION
```

7. Don't allow regex in `ALLOWED_HOSTS` as it allows **wildcards** and other **security vulnerabilities** (documented in security blogs).

8. Also block **Chaining Attacks** for example:

```
GET /en HTTP/1.1
Host: example.com
X-Forwarded-Host: evil.com
X-Forwarded-Scheme: nothttps
```

9. There are headers that can overwrite server level instructions and need to be blocked, for example:

```
GET /backend HTTP/1.1
Host: example.com
X-Original-URL: /evil-admin
```

Note: The above example is an attack using `X-Original-URL`, the headers `X-Original-URL` and `X-Rewrite-URL` are used by Symfony php vendor package.

Some application frameworks support various non-standard HTTP headers that can be used to override the URL in the original request, such as `X-Original-URL` and `X-Rewrite-URL`. If a web site uses rigorous front-end controls to restrict access based on URL, but the application allows the URL to be overridden via a request header, then it might be possible to bypass the access controls.
