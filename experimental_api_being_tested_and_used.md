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

**Currently being used in the firewall in the October II security module**, for more info on this API, see our post here: [fetch_metadata.md](https://github.com/ayumi-cloud/oc-security-module/blob/master/fetch_metadata.md)

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
