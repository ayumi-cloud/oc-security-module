## Difference between mod_alias and mod_rewrite

The main difference is that, with `mod_alias`, the server is responding to the client request with a redirect, so the client immediately is sent to the new location. Conversely, with `mod_rewrite`, the server simply returns the new content, so the client is not actually redirected anywhere. This makes `mod_rewrite` more advantageous because it happens transparently, requiring less work from the client (user).

### Redirecting with mod_rewrite

Here are some examples showing how to redirect (rewrite) with `mod_rewrite`:

```
# redirect old file to new on same domain
RewriteRule /old-file.html /new-file.html [L]

# redirect old directory to new on same domain
RewriteRule /old-dir/ /new-dir/ [L]
```

When using `mod_rewrite`, the key to rewriting instead of redirecting is not including the `[R]` flag in the `RewriteRule`. When `[R]` is included, Apache will redirect the client to the new location. When `[R]` is excluded, Apache will rewrite the request without redirecting the client. Thus, one consequence of excluding the `[R]` flag is that the user's browser will show the originally requested URL in the address bar.

### Redirecting external domains

Of course, `mod_rewrite` can also be used to redirect requests to external domains. Here are some examples:

```
# redirect old file to new on different domain
RewriteRule /old-file.html http://new-domain.com/new-file.html [R=301]

# redirect old directory to new on different domain
RewriteRule /old-dir/ http://new-domain.com/new-dir/ [R=301]

# redirect old domain to new domain
RewriteRule / http://new-domain.com/ [R=301]
```

Notice the inclusion of the `[R=301]` flag. This tells Apache to redirect the request (instead of rewrite), and send a `301 “Permanent”` status code. If no status code is specified, the server will use the default, `302 “Temporary”`. More flags are possible, refer to the Regex Character Definitions for details.

### Benefits

Another benefit of using mod_rewrite instead of `mod_alias`, is that mod_rewrite gives you much more control over every aspect of the redirect. For example, you can use `RewriteCond` to exclude certain URLs from the redirect, or maybe redirect based on specific aspects of the request, such as the query string, user agents, or IP address.
