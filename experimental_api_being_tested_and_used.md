## Experimental API's being tested and used in October II

October II uses new and modern API's and over time we will continue to use more new and exciting API's. The following API's can be turned on in October II experimental section, you will also need to turn them on the supporting browser flags. **Make sure your browser supports the new API's when testing**.

Below is a list of new API's currently being tested in the security module:

### Cross-Origin Opener Policy (COOP) and Cross-Origin Embedder Policy (COEP) debugging

The Network panel now provides Cross-Origin Opener Policy and Cross-Origin Embedder Policy debugging information.

The Status column now provides a quick explanation of why a request was blocked as well as a link to view that request's headers for further debugging:

<p align="center"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/coop1.png"></p>

The Response Headers section of the Headers tab provides more guidance on how to resolve the issues:

<p align="center"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/coop2.png"></p>

For more info on this API, see our post here: [coop.md](https://github.com/ayumi-cloud/oc-security-module/blob/master/coop.md)

---

### Fetch Metadata

**Currently being used in the firewall as part of the October II security module**, for more info on this API, see our post here: [fetch_metadata.md](https://github.com/ayumi-cloud/oc-security-module/blob/master/fetch_metadata.md)

MDN has the following documentation:

- [Sec-Fetch-Dest](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Sec-Fetch-Dest)

```
Sec-Fetch-Dest: audio
Sec-Fetch-Dest: audioworklet
Sec-Fetch-Dest: document
Sec-Fetch-Dest: embed
Sec-Fetch-Dest: empty
Sec-Fetch-Dest: font
Sec-Fetch-Dest: image
Sec-Fetch-Dest: manifest
Sec-Fetch-Dest: nested-document
Sec-Fetch-Dest: object
Sec-Fetch-Dest: paintworklet
Sec-Fetch-Dest: report
Sec-Fetch-Dest: script
Sec-Fetch-Dest: serviceworker
Sec-Fetch-Dest: sharedworker
Sec-Fetch-Dest: style
Sec-Fetch-Dest: track
Sec-Fetch-Dest: video
Sec-Fetch-Dest: worker
Sec-Fetch-Dest: xslt
Sec-Fetch-Dest: audioworklet
```

- [Sec-Fetch-Mode](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Sec-Fetch-Mode)

```
Sec-Fetch-Mode: cors
Sec-Fetch-Mode: navigate
Sec-Fetch-Mode: nested-navigate
Sec-Fetch-Mode: no-cors
Sec-Fetch-Mode: same-origin
Sec-Fetch-Mode: websocket
```

- [Sec-Fetch-Site](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Sec-Fetch-Site)

```
Sec-Fetch-Site: cross-site
Sec-Fetch-Site: same-origin
Sec-Fetch-Site: same-site
Sec-Fetch-Site: none
```

- [Sec-Fetch-User](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Sec-Fetch-User)

```
Sec-Fetch-User: ?0
Sec-Fetch-User: ?1
```

- At a later date we plan on adding the future API: [Sec-WebSocket-Accept](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Sec-WebSocket-Accept) to the firewall.

---

### Preventing Mixed Content

Supporting HTTPS for your website is an important step to protecting your website and your users from attack, but mixed content can render that protection useless. To protect your site and your users, it is very important to find and fix mixed content issues.

**Currently being used in the firewall as part of the October II security module and displays a check for each active request in the cms**, for more info on this API, see our post here: [fixing-mixed-content](https://developers.google.com/web/fundamentals/security/prevent-mixed-content/fixing-mixed-content)

---

### Client Hints replacing the User-Agent

Google Chrome team annouched: [Intent to Deprecate and Freeze: The User-Agent string](https://groups.google.com/a/chromium.org/forum/m/#!msg/blink-dev/-2JIRNMWJ7s/yHe4tQNLCgAJ)

**The firewall now also uses the Client Hints User-Agents Spec along with normal User-Agents for backwards compatibility and cross-browser issues**, to learn more see the spec here: [User-Agent Client Hints](https://wicg.github.io/ua-client-hints/)

> HTTP Client Hints are currently only available in Chrome and some Chromium-based web browsers. User-Agent Client Hints are only under `enable-experimental-web-platform-features` Chrome flag.

#### Freezing plan

Different parts of the UA string have different compatibility implications. 

Some parts of it, such as the browser version and the OS version, can be frozen without any backwards compatibility implications. Values that worked in the past will continue to work in the future.

Other parts, such as the model (for mobile devices) and the OS platform, can have implications on sites that tailor their UI to the underlying OS or that target a very specific model in their layout. Such sites will need to migrate to use UA-CH.

As such we are planning to freeze the parts that are amenable to freezing fairly early, and gradually unify the rest.

<p align="center"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/sec-ch-ua-freezing.png"></p>

_(*) For the mobile value, we may split it further based on common device dimensions, as a one-time exercise, to reduce the compatibility risk of unification._

#### Interoperability and Compatibility Risk

The compatibility risk varies at different stages.

For the freezing planned for M83, the compatibility risk is low. Existing UA sniffing code will continue to work as expected. It is only future UA sniffing code that will need to change and use the UA client hints instead.

For the unification planned for M85, the compatibility risk is medium. Some sites can modify their responses based on the OS and device model, and those sites will have to change their UA sniffing code to use UA-CH. We expect such sites to be well maintained (otherwise, how can they keep up with OS UI and device model changes?). Therefore, having 4 releases to modify their code seems sufficient.

In the long term, we expect this change to improve compatibility, as UA sniffing based on UA-CH is bound to be more reliable than the current status quo.

As for interoperability, we have other vendors on board with UA freezing, but not necessarily with the UA Client Hints mechanism, that is supposed to replace it. That can create a tricky situation, where developers would need to rely on the User-Agent string for some browsers and on UA-CH for others.

**Edge**: Public support

**Firefox**: Public support for freezing the UA string - “freezing the User Agent string without any client hints—seems worth-prototyping”

**Safari**: Shipped to some extent. Safari has attempted to completely freeze the UA string in the past, without providing an alternative mechanism. That got a lot of pushback, which resulted in somewhat reverting that decision. Nowadays, their UA string seems frozen, other than updates to the OS version and the browser major version.

---

### The Lang Client Hint

We plan on adding the `lang` client hint API - when it becomes more stable to October II as it will most likely become a replacement for the normal `language` header. To learn more see here: [client_hints_lang.md](https://github.com/ayumi-cloud/oc-security-module/blob/master/client_hint_lang.md)

---

### Prefetch request properties are updated to be privacy-preserving

Prefetch requests will not follow redirects, not send a Referer header, not send credentials for cross-origin requests, and do not pass through service workers. – Mac, Windows, Linux, Chrome OS, Android

```
#prefetch-privacy-changes
```

---

### Prefetch requests for cross-origin main resources are fetched with a special NetworkIsolationKey

Prefetch requests for cross-origin main resources can be reused by next top-level navigations when HTTP cache is double-keyed. – Mac, Windows, Linux, Chrome OS, Android

```
#prefetch-main-resource-network-isolation-key
```

---

### Treat risky downloads over insecure connections as active mixed content

Disallows downloads of unsafe files (files that can potentially execute code), where the final download origin or any origin in the redirect chain is insecure if the originating page is secure. – Mac, Windows, Linux, Chrome OS

```
#treat-unsafe-downloads-as-active-content
```

---

### Enable cross-origin Portals

Allows portals to load cross-origin URLs in addition to same-origin ones. Has no effect if Portals are not enabled. – Mac, Windows, Linux, Chrome OS, Android

```
#enable-portals-cross-origin
```

---

### SameSite by default cookies

Treat cookies that don't specify a SameSite attribute as if they were `SameSite=Lax`. Sites must specify `SameSite=None` in order to enable third-party usage. – Mac, Windows, Linux, Chrome OS, Android

```
#same-site-by-default-cookies
```

---

### Enable removing SameSite=None cookies

Enables UI on `chrome://settings/siteData` to remove all third-party cookies and site data. – Mac, Windows, Linux, Chrome OS.

```
#enable-removing-all-third-party-cookies
```

---

### Cookies without SameSite must be secure

If enabled, cookies without SameSite restrictions must also be Secure. If a cookie without SameSite restrictions is set without the Secure attribute, it will be rejected. This flag only has an effect if "SameSite by default cookies" is also enabled. – Mac, Windows, Linux, Chrome OS, Android

```
#cookies-without-same-site-must-be-secure
```

---

### Quieter notification permission prompts

Enables quieter permission prompts for notification permission requests. When a site wishes to show notifications, the usual modal dialog is replaced with a quieter version. – Mac, Windows, Linux, Chrome OS, Android

```
#quiet-notification-prompts
```

---

### Enable improved UI for third-party cookie blocking

Enables an improved UI for existing third-party cookie blocking users. – Mac, Windows, Linux, Chrome OS, Android

```
#improved-cookie-controls-for-third-party-cookie-blocking
```

---

## Other Security Related HTTP Header API's

Currently October II security module uses many security related api's and below is a list:

### Referrer-Policy

The Referrer-Policy HTTP header controls how much referrer information (sent via the Referer header) should be included with requests. October II default setting is set to: `strict-origin-when-cross-origin`

To learn more see MDN: [Referrer-Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Referrer-Policy)

### Feature-Policy

The HTTP Feature-Policy header provides a mechanism to allow and deny the use of browser features in its own frame, and in content within any `<iframe>` elements in the document.

**October II security module has a section where you can write your own custom policy!**

To learn more see MDN: [Feature-Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Feature-Policy)

### Content-Security-Policy

The HTTP Content-Security-Policy response header allows web site administrators to control resources the user agent is allowed to load for a given page. With a few exceptions, policies mostly involve specifying server origins and script endpoints. This helps guard against cross-site scripting attacks (XSS).

**October II is currently setup to support level 3 CSP**

To learn more see MDN: [Content-Security-Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy)

### Client Hints and Lifetime

The Accept-CH header is set by the server to specify which Client Hints headers client should include in subsequent requests.

The Accept-CH-Lifetime header is set by the server to specify the persistence of Accept-CH header value that specifies for which Client Hints headers client should include in subsequent requests.

**October II security module has a section where you can write your own custom policy for both these API's!**

To learn more see MDN: [Accept-CH](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Accept-CH)
To learn more see MDN: [Accept-CH-Lifetime](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Accept-CH-Lifetime)

### Clear-Site-Data

The Clear-Site-Data header clears browsing data (cookies, storage, cache) associated with the requesting website. It allows web developers to have more control over the data stored locally by a browser for their origins.

**October II security module has a section where you can write your own custom policy!**

To learn more see MDN: [Clear-Site-Data](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Clear-Site-Data)

### Cross-Origin-Resource-Policy

The HTTP Cross-Origin-Resource-Policy response header conveys a desire that the browser blocks no-cors cross-origin/cross-site requests to the given resource.

**October II security module has a section where you can write your own custom policy!**

To learn more see MDN: [Cross-Origin-Resource-Policy](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cross-Origin-Resource-Policy)

### X-Content-Type-Options

The X-Content-Type-Options response HTTP header is a marker used by the server to indicate that the MIME types advertised in the Content-Type headers should not be changed and be followed. This allows to opt-out of MIME type sniffing, or, in other words, it is a way to say that the webmasters knew what they were doing.

**October II security module has a section where you can write your own custom policy!**

To learn more see MDN: [X-Content-Type-Options](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Content-Type-Options)

### X-Permitted-Cross-Domain-Policies

A cross-domain policy file is an XML document that grants a web client, such as Adobe Flash Player or Adobe Acrobat (though not necessarily limited to these), permission to handle data across domains.

**October II security module has a section where you can write your own custom policy!**

To learn more see MDN: [OWASP Secure Headers Project](https://owasp.org/www-project-secure-headers/)

### Timing-Allow-Origin

The Timing-Allow-Origin response header specifies origins that are allowed to see values of attributes retrieved via features of the Resource Timing API, which would otherwise be reported as zero due to cross-origin restrictions.

**October II security module has a section where you can write your own custom policy!**

To learn more see MDN: [Timing-Allow-Origin](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Timing-Allow-Origin)

### X-Frame-Options

The X-Frame-Options HTTP response header can be used to indicate whether or not a browser should be allowed to render a page in a `<frame>`, `<iframe>`, `<embed>` or `<object>`. Sites can use this to avoid clickjacking attacks, by ensuring that their content is not embedded into other sites.

**October II security module has a section where you can write your own custom policy!**

To learn more see MDN: [X-Frame-Options](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Frame-Options)

### Vary and Vary Accept-Encoding

The Vary HTTP response header determines how to match future request headers to decide whether a cached response can be used rather than requesting a fresh one from the origin server. It is used by the server to indicate which headers it used when selecting a representation of a resource in a content negotiation algorithm.

**October II security module has a section where you can write your own custom policy!**

To learn more see MDN: [Vary](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Vary)

### Cache-Control

The Cache-Control HTTP header holds directives (instructions) for caching in both requests and responses. A given directive in a request does not mean the same directive should be in the response.

**October II security module has a section where you can write your own custom policy!**

To learn more see MDN: [Cache-Control](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cache-Control)

### Strict-Transport-Security

The HTTP Strict-Transport-Security response header (often abbreviated as HSTS) lets a web site tell browsers that it should only be accessed using HTTPS, instead of using HTTP.

**October II security module has a section where you can write your own custom policy!**

To learn more see MDN: [Strict-Transport-Security](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Strict-Transport-Security)

### X-XSS-Protection

The HTTP X-XSS-Protection response header is a feature of Internet Explorer, Chrome and Safari that stops pages from loading when they detect reflected cross-site scripting (XSS) attacks. Although these protections are largely unnecessary in modern browsers when sites implement a strong Content-Security-Policy that disables the use of inline JavaScript ('unsafe-inline'), they can still provide protections for users of older web browsers that don't yet support CSP.

**October II security module has a section where you can write your own custom policy!**

To learn more see MDN: [X-XSS-Protection](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-XSS-Protection)

### unset server, proxy and etag

The response header of this name is removed, if it exists. If there are multiple headers of the same name, all will be removed. value must be omitted

**October II security module has a section where you can write your own custom policy!**

To learn more see MDN: [Apche unset header](https://httpd.apache.org/docs/current/mod/mod_headers.html#header)

### Connection (Keep-Alive)

The Connection general header controls whether or not the network connection stays open after the current transaction finishes. If the value sent is keep-alive, the connection is persistent and not closed, allowing for subsequent requests to the same server to be done.

**October II security module has a section where you can write your own custom policy!**

To learn more see MDN: [Connection](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Connection)

### Access-Control-Allow-Origin

The Access-Control-Allow-Origin response header indicates whether the response can be shared with requesting code from the given origin.

**October II security module has a section where you can write your own custom policy!**

To learn more see MDN: [Access-Control-Allow-Origin](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Access-Control-Allow-Origin)

### CORS, CORS Images and CORS Fonts

Cross-Origin Resource Sharing (CORS) is a mechanism that uses additional HTTP headers to tell browsers to give a web application running at one origin, access to selected resources from a different origin. A web application executes a cross-origin HTTP request when it requests a resource that has a different origin (domain, protocol, or port) from its own.

**October II security module has a section where you can write your own custom policy!**

To learn more see MDN: [CORS](https://developer.mozilla.org/en-US/docs/Web/HTTP/CORS)

### *stale-while-revalidate

Indicates the client will accept a stale response, while asynchronously checking in the background for a fresh one. The seconds value indicates how long the client will accept a stale response. See "Keeping things fresh with stale-while-revalidate" for more information.

(*) Used in the main October II repo and not in the security module.

To learn more see MDN: [Cache-Control - Expiration](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Cache-Control)
