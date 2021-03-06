## Reporting Structure

:warning: THIS IS A SCRATCHPAD DOCUMENT, PLEASE CONSIDER THIS WHEN READING ON :bulb:

Ban methods:

- Hard ban 403
- Soft ban 400
- Method ban e.g. trace method 405
- Three-strikes law 410
- Repeat attack ban 403
- Limiting (small amount) 429
- Limiting (large amount 403
- Unavailable is intended for all users 503

Link methods:

- Domain (users or someone else)
- URL (Full)
- URI
- Query String
- Server code e.g. 303
- File extension (document, js, css, json etc.)

Infomation methods:

- Request
- Referrer
- Remote host / hostname
- Ip / asn / isp
- Country / Continent
- User-agent

Scan methods:

- Feature detection

Location:

- Frontend
- Backend
- Both (frontend and backend)

Security:

- Common Vulnerabilities and Exposures (CVE) Code
- Vulnerability level / score (CVSS Score) e.g. 1 - 10
- Vulnerability type e.g. DOS, Execute Code
- Patched or Zero Day
- Links / Test scripts

Life cycle:

- Process before rendering (server e.g. Apache, nginx, IIS)
- Process during start rendering (server-side e.g php)
- Process during middle to end of rendering (client-side e.g. javascript)
- Process after rendering, later on, whenever free (e.g. laravel queues)

### Notes for life cycle

`.htaccess` is probably more efficient, especially in the area of memory usage. The server doesn't need to load PHP, and PHP doesn't need to parse and execute a script. Apache needs to read and apply the configuration in htaccess as well, though, but that won't consume as much memory as PHP.

As for PHP, the speed of execution is also determined by the way PHP is loaded, and if, for instance, APC cache is used or not.

The only hint: do not use php to match and output static files - it is very slow. There are no other impacts on performance.

When a request is made to the URI affected by the `.htaccess` file, then Apache will handle any rewrite rules before any of your PHP code executes.

The `.htaccess` will kick in first. If you look at the Apache request cycle:

PHP is a response handler. mod_rewrite runs at URI translation, except for rewrite rules in .`htaccess` and `<Directory>` or `<Location>` blocks which run in the fixup phase. This is because Apache doesn't know which directory it's in (and thus which `<Directory>` or .htaccess to read) until after URI translation.

<p align="center"><img src="https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/3PwIg.gif" alt="life-cycle"></p>

`.htaccess` files are evaluated on EVERY server request. Even for **static images, CSS and JS files**. So, you're asking the webserver to parse 1000+ long possibly REGEX lines while executing a request.

Also, parent directory's `.htaccess` file is processed for files residing in **subdirectory** too. So, if your large .htaccess is in root directory of website, then it will be processed for all requests made for files in the subdirectories too (along with the `.htaccess` file in **subdirectory**).

`REMOTE_HOST` pertains to the hostname of the client (i.e. the computer making the request).

`REMOTE_ADDR` refers to the IP address of the client.
