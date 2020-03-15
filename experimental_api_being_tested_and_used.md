# Experimental API's being tested and used

October II uses new and modern API's and over time we will continue to use more new and exciting API's. The following API's can be turned on in October II experimental section, you will also need to turn them on the supporting browser flags. **Make sure your browser supports the new API's when testing**.

Below is a list of new API's currently being tested in the security module:

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
