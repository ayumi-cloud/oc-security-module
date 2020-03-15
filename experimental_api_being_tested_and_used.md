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

### Preventing Mixed Content

Supporting HTTPS for your website is an important step to protecting your website and your users from attack, but mixed content can render that protection useless. To protect your site and your users, it is very important to find and fix mixed content issues.

**Currently being used in the firewall as part of the October II security module and displays a check for each active request in the cms**, for more info on this API, see our post here: [fixing-mixed-content](https://developers.google.com/web/fundamentals/security/prevent-mixed-content/fixing-mixed-content)

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

### The Lang Client Hint

We plan on adding the `lang` client hint API - when it becomes more stable to October II as it will most likely become a replacement for the normal `language` header. To learn more see here: [client_hints_lang.md](https://github.com/ayumi-cloud/oc-security-module/blob/master/client_hint_lang.md)

### Prefetch request properties are updated to be privacy-preserving

Prefetch requests will not follow redirects, not send a Referer header, not send credentials for cross-origin requests, and do not pass through service workers. – Mac, Windows, Linux, Chrome OS, Android

```
#prefetch-privacy-changes
```

### Prefetch requests for cross-origin main resources are fetched with a special NetworkIsolationKey

Prefetch requests for cross-origin main resources can be reused by next top-level navigations when HTTP cache is double-keyed. – Mac, Windows, Linux, Chrome OS, Android

```
#prefetch-main-resource-network-isolation-key
```

### Treat risky downloads over insecure connections as active mixed content

Disallows downloads of unsafe files (files that can potentially execute code), where the final download origin or any origin in the redirect chain is insecure if the originating page is secure. – Mac, Windows, Linux, Chrome OS

```
#treat-unsafe-downloads-as-active-content
```

### Enable cross-origin Portals

Allows portals to load cross-origin URLs in addition to same-origin ones. Has no effect if Portals are not enabled. – Mac, Windows, Linux, Chrome OS, Android

```
#enable-portals-cross-origin
```

### SameSite by default cookies

Treat cookies that don't specify a SameSite attribute as if they were `SameSite=Lax`. Sites must specify `SameSite=None` in order to enable third-party usage. – Mac, Windows, Linux, Chrome OS, Android

```
#same-site-by-default-cookies
```

### Enable removing SameSite=None cookies

Enables UI on `chrome://settings/siteData` to remove all third-party cookies and site data. – Mac, Windows, Linux, Chrome OS.

```
#enable-removing-all-third-party-cookies
```

### Cookies without SameSite must be secure

If enabled, cookies without SameSite restrictions must also be Secure. If a cookie without SameSite restrictions is set without the Secure attribute, it will be rejected. This flag only has an effect if "SameSite by default cookies" is also enabled. – Mac, Windows, Linux, Chrome OS, Android

```
#cookies-without-same-site-must-be-secure
```

### Quieter notification permission prompts

Enables quieter permission prompts for notification permission requests. When a site wishes to show notifications, the usual modal dialog is replaced with a quieter version. – Mac, Windows, Linux, Chrome OS, Android

```
#quiet-notification-prompts
```

## Other Security Related HTTP Header API's

Currently October II security module uses many security related api's and below is a list:

..






