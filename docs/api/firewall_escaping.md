## Summer CMS Firewall Escaping API

### Input Validation and Data Sanitization

Below are details for the level of escaping carried out by the firewall in certain specific requests, please note this list will continue to grow over time and not intended to be a complete list!

<table>
    <thead>
        <tr>
            <th>Value</th>
            <th>Server Protection</th>
            <th>Client-Side Protection</th>
            <th>Long-task Limits</th>
            <th>Data type</th>
            <th>Progress</th>
            <th>Allowed or Blocked</th>
            <th>Notes</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td colspan="8"><h3>HTTP Request Methods</h3></td>
        </tr>
        <tr>
            <td>Request Method HTTP Header</td>
            <td>✔️</td>
            <td>✔️</td>
            <td>10</td>
            <td>string</td>
            <td>✔️</td>
            <td>both</td>
            <td>Server allows Laravel/Symfony verbs only, can be overwritten on `POST` only.</td>
        </tr>
        <tr>
            <td>X-HTTP-Method</td>
            <td>✔️</td>
            <td>❌</td>
            <td>n/a</td>
            <td>string</td>
            <td>✔️</td>
            <td>blocked</td>
            <td>Blocked by default, can turn on in settings.</td>
        </tr>
        <tr>
            <td>X-HTTP-Method-Override</td>
            <td>✔️</td>
            <td>❌</td>
            <td>n/a</td>
            <td>string</td>
            <td>✔️</td>
            <td>blocked</td>
            <td>Blocked by default, can turn on in settings.</td>
        </tr>
        <tr>
            <td>X-Method-Override</td>
            <td>✔️</td>
            <td>❌</td>
            <td>n/a</td>
            <td>string</td>
            <td>✔️</td>
            <td>blocked</td>
            <td>Blocked by default, can turn on in settings.</td>
        </tr>
        <tr>
            <td colspan="8"><h3>IP Address</h3></td>
        </tr>
        <tr>
            <td>Client-Ip</td>
            <td>❌</td>
            <td>✔️</td>
            <td>100</td>
            <td>string</td>
            <td>✔️</td>
            <td>blocked</td>
            <td>Blocked by default, can turn on in settings.</td>
        </tr>
        <tr>
            <td>Cf-Connecting-Ip</td>
            <td>❌</td>
            <td>✔️</td>
            <td>100</td>
            <td>string</td>
            <td>✔️</td>
            <td>blocked</td>
            <td>Blocked by default, can turn on in settings.</td>
        </tr>
        <tr>
            <td>True-Client-Ip</td>
            <td>❌</td>
            <td>✔️</td>
            <td>100</td>
            <td>string</td>
            <td>✔️</td>
            <td>blocked</td>
            <td>Blocked by default, can turn on in settings.</td>
        </tr>
        <tr>
            <td>X-Forwarded-All</td>
            <td>❌</td>
            <td>❌</td>
            <td>n/a</td>
            <td>string</td>
            <td>✔️</td>
            <td>blocked</td>
            <td>Blocked by default, can turn on in settings.</td>
        </tr> 
        <tr>
            <td>X-Client-Ip</td>
            <td>❌</td>
            <td>✔️</td>
            <td>100</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API, blocked missing and incorrect ip addresses.</td>
        </tr>
        <tr>
            <td>X-Debug-Remote-Ip</td>
            <td>❌</td>
            <td>✔️</td>
            <td>100</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API, blocked missing and incorrect ip addresses.</td>
        </tr>
        <tr>
            <td>X-Forwarded-Aws-Elb</td>
            <td>❌</td>
            <td>✔️</td>
            <td>100</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API, blocked missing and incorrect ip addresses.</td>
        </tr>
        <tr>
            <td>X-Forwarded-Traefik</td>
            <td>❌</td>
            <td>✔️</td>
            <td>100</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API, blocked missing and incorrect ip addresses.</td>
        </tr>
        <tr>
            <td>X-Real-Ip</td>
            <td>❌</td>
            <td>✔️</td>
            <td>100</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API, blocked missing and incorrect ip addresses.</td>
        </tr>
        <tr>
            <td>X-Forwarded-For</td>
            <td>❌</td>
            <td>✔️</td>
            <td>100</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API, blocked missing and incorrect ip addresses.</td>
        </tr>
        <tr>
            <td><strong>Users remote ip address</strong><br>REMOTE_ADDR</td>
            <td>❌</td>
            <td>✔️</td>
            <td>100</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API, blocked missing and incorrect ip addresses.</td>
        </tr>
        <tr>
            <td><strong>Server (real) ip address</strong><br>SERVER_ADDR</td>
            <td>❌</td>
            <td>✔️</td>
            <td>100</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API, blocked missing and incorrect ip addresses.</td>
        </tr>
        <tr>
            <td><strong>Proxy ip address</strong><br>DNS IP</td>
            <td>❌</td>
            <td>✔️</td>
            <td>100</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API, blocked missing and incorrect ip addresses.</td>
        </tr>
        <tr>
            <td colspan="8"><h3>HTTP Requests</h3></td>
        </tr>
        <tr>
            <td>Request URL/URI</td>
            <td>❌</td>
            <td>✔️</td>
            <td>1000</td>
            <td>string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Using Laravel API, cleaned from Firewall API, block evil paths and host header attacks.</td>
        </tr>
        <tr>
            <td colspan="8"><h3>HTTP Secure Requests X-Headers</h3></td>
        </tr>
        <tr>
            <td>Cf-Origin-Https</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Block insecure requests in production mode.</td>
        </tr>
        <tr>
            <td>Front-End-Https</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Block insecure requests in production mode.</td>
        </tr>
        <tr>
            <td>Http-X-Scheme</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Block insecure requests in production mode.</td>
        </tr>
        <tr>
            <td>Sbgi-Protocol</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Block insecure requests in production mode.</td>
        </tr>
        <tr>
            <td>X-Cf-Passed-Proto</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Block insecure requests in production mode.</td>
        </tr>
        <tr>
            <td>X-Forwarded-Https</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Block insecure requests in production mode.</td>
        </tr>
        <tr>
            <td>X-Forwarded-Proto</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Block insecure requests in production mode.</td>
        </tr>
        <tr>
            <td>X-Forwarded-Protocol</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Block insecure requests in production mode.</td>
        </tr>
        <tr>
            <td>X-Forwarded-Scheme</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Block insecure requests in production mode.</td>
        </tr>
        <tr>
            <td>X-Forwarded-Ssl</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Block insecure requests in production mode.</td>
        </tr>
        <tr>
            <td>X-Https-Protocol</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Block insecure requests in production mode.</td>
        </tr>
        <tr>
            <td>X-This-Proto</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Block insecure requests in production mode.</td>
        </tr>
        <tr>
            <td>X-Ua-Prot</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Block insecure requests in production mode.</td>
        </tr>
        <tr>
            <td>X-Url-Scheme</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Block insecure requests in production mode.</td>
        </tr>
        <tr>
            <td>X-Urlscheme</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Block insecure requests in production mode.</td>
        </tr>
        <tr>
            <td>X-Https</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>boolean</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Block insecure requests in production mode.</td>
        </tr>
        <tr>
            <td colspan="8"><h3>Apache HTTPS Requests</h3></td>
        </tr>
        <tr>
            <td>HTTPS</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Block insecure requests in production mode.</td>
        </tr>
        <tr>
            <td>REDIRECT_HTTPS</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Block insecure requests in production mode.</td>
        </tr>
        <tr>
            <td>REQUEST_SCHEME</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Block insecure requests in production mode.</td>
        </tr>
        <tr>
            <td colspan="8"><h3>Port Number X-Headers</h3></td>
        </tr>
        <tr>
            <td>X-Firewall-Port</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>int</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Block non 443 ports in production mode.</td>
        </tr>
        <tr>
            <td>X-Forwarded-Port</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>int</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Block non 443 ports in production mode.</td>
        </tr>
        <tr>
            <td colspan="8"><h3>Apache Port Number</h3></td>
        </tr>
        <tr>
            <td>SERVER_PORT</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>int</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Block non 443 ports in production mode.</td>
        </tr>
        <tr>
            <td colspan="8"><h3>HTTP Responses</h3></td>
        </tr>
        <tr>
            <td>Response URL/URI</td>
            <td>❌</td>
            <td>✔️</td>
            <td>1000</td>
            <td>string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Using Laravel API, cleaned from Firewall API and block evil paths.</td>
        </tr>
        <tr>
            <td colspan="8"><h3>Referer Type API</h3></td>
        </tr>
        <tr>
            <td>Referer Type</td>
            <td>❌</td>
            <td>✔️</td>
            <td>100</td>
            <td>string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td colspan="8"><h3>Operating Systems Details</h3></td>
        </tr>
        <tr>
            <td>Name</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Full Name</td>
            <td>❌</td>
            <td>✔️</td>
            <td>200</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Version</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>(object) string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Full Version</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>(object) string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td colspan="8"><h3>Device Details</h3></td>
        </tr>
        <tr>
            <td>Manufacturer</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Using normalize.</td>
        </tr>
        <tr>
            <td>Model</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Using normalize.</td>
        </tr>
        <tr>
            <td>Series</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Using normalize.</td>
        </tr>
        <tr>
            <td>Carrier</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Identifier</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Type</td>
            <td>❌</td>
            <td>✔️</td>
            <td>25</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Subtype</td>
            <td>❌</td>
            <td>✔️</td>
            <td>25</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Identified</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>int</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Generic</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>boolean</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Hidden</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>boolean</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td colspan="8"><h3>Browser Details</h3></td>
        </tr>
        <tr>
            <td>Type</td>
            <td>❌</td>
            <td>✔️</td>
            <td>25</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Name</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API (external). Using normalize.</td>
        </tr>
        <tr>
            <td>Channel</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Info</td>
            <td>❌</td>
            <td>✔️</td>
            <td>250</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Full Version</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Using semantic versioning spec (external).</td>
        </tr>
        <tr>
            <td>Major Version</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Using semantic versioning spec.</td>
        </tr>
        <tr>
            <td>Minor Version</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Using semantic versioning spec.</td>
        </tr>
        <tr>
            <td>Patch Version</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Using semantic versioning spec.</td>
        </tr>
        <tr>
            <td>Build Version</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Using semantic versioning spec.</td>
        </tr>
        <tr>
            <td>Using Name</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>(object) string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Example Yandex using Chromium, cleaned from firewall API (internal). Using normalize.</td>
        </tr>
        <tr>
            <td>Using Version</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>(object) string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Example Yandex using Chromium version, cleaned from firewall API (internal).</td>
        </tr>
        <tr>
            <td>Family Name</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>(object) string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Example Yandex using Chrome, cleaned from firewall API (internal). Using normalize.</td>
        </tr>
        <tr>
            <td>Family Version</td>
            <td>❌</td>
            <td>✔️</td>
            <td>50</td>
            <td>(object) int</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Example Yandex using Chrome version, cleaned from firewall API (internal).</td>
        </tr>
        <tr>
            <td colspan="8"><h3>App Details</h3></td>
        </tr>
        <tr>
            <td>Browser App Types</td>
            <td>❌</td>
            <td>✔️</td>
            <td>25</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Parser Module API.</td>
        </tr>
        <tr>
            <td>App Types</td>
            <td>❌</td>
            <td>✔️</td>
            <td>25</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td colspan="8"><h3>Client Hints User Agent API</h3></td>
        </tr>
        <tr>
            <td>User Agent</td>
            <td>❌</td>
            <td>✔️</td>
            <td>1000</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API and contains a custom parser.</td>
        </tr>
        <tr>
            <td>User Agent Full Version</td>
            <td>❌</td>
            <td>✔️</td>
            <td>200</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Platform Architecture</td>
            <td>❌</td>
            <td>✔️</td>
            <td>250</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Model</td>
            <td>❌</td>
            <td>✔️</td>
            <td>250</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Platform Brand</td>
            <td>❌</td>
            <td>✔️</td>
            <td>250</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Platform Version</td>
            <td>❌</td>
            <td>✔️</td>
            <td>200</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Mobileness</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>boolean</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td colspan="8"><h3>Client Hints API</h3></td>
        </tr>
        <tr>
            <td>Device Memory</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Downlink</td>
            <td>❌</td>
            <td>✔️</td>
            <td>25</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>DPR</td>
            <td>❌</td>
            <td>✔️</td>
            <td>25</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>ECT</td>
            <td>❌️</td>
            <td>✔️</td>
            <td>25</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>RTT</td>
            <td>❌</td>
            <td>✔️</td>
            <td>25</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Viewport Width</td>
            <td>❌</td>
            <td>✔️</td>
            <td>25</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
         <tr>
            <td>Save Data</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td colspan="8"><h3>Fetch Metadata Request API</h3></td>
        </tr>
        <tr>
            <td>Sec-Fetch-Dest</td>
            <td>❌</td>
            <td>✔️</td>
            <td>25</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Sec-Fetch-Mode</td>
            <td>❌</td>
            <td>✔️</td>
            <td>25</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Sec-Fetch-Site</td>
            <td>❌</td>
            <td>✔️</td>
            <td>25</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Sec-Fetch-Site</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>boolean</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td colspan="8"><h3>Upgrade Insecure Requests API</h3></td>
        </tr>
        <tr>
            <td>Upgrade Insecure Requests</td>
            <td>❌</td>
            <td>✔️</td>
            <td>25</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td colspan="8"><h3>CDN</h3></td>
        </tr>
        <tr>
            <td>Name</td>
            <td>❌</td>
            <td>✔️</td>
            <td>100</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td colspan="8"><h3>Cloudflare Status</h3></td>
        </tr>
        <tr>
            <td>Cloudflare Request ID</td>
            <td>❌</td>
            <td>✔️</td>
            <td>100</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Cloudflare Railgun Connection ID</td>
            <td>❌</td>
            <td>✔️</td>
            <td>100</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Cloudflare Connecting IP Address</td>
            <td>❌</td>
            <td>✔️</td>
            <td>100</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Cloudflare Cache Status</td>
            <td>❌</td>
            <td>✔️</td>
            <td>100</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Cloudflare Connecting County of Origin</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Cloudflare Origin HTTPS Status</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Cloudflare HTTP Scheme</td>
            <td>❌</td>
            <td>✔️</td>
            <td>50</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td colspan="8"><h3>Main HTTP User-Agent</h3></td>
        </tr>
        <tr>
            <td>User Agent</td>
            <td>✔️</td>
            <td>✔️</td>
            <td>1000</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Multiple checks</td>
        </tr>
        <tr>
            <td colspan="8"><h3>Secondary HTTP User-Agents</h3></td>
        </tr>
        <tr>
            <td><strong>Common Browser Proxies</strong><br>X-Original-User-Agent</td>
            <td>✔️</td>
            <td>✔️</td>
            <td>1000</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Multiple checks</td>
        </tr>
        <tr>
            <td><strong>Web Forms</strong><br>X-Device-User-Agent</td>
            <td>✔️</td>
            <td>✔️</td>
            <td>1000</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Multiple checks</td>
        </tr>
        <tr>
            <td><strong>Opera Mobile</strong><br>Device-Stock-UA</td>
            <td>✔️</td>
            <td>✔️</td>
            <td>1000</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Multiple checks</td>
        </tr>
        <tr>
            <td><strong>Opera Mini</strong><br>X-OperaMini-Phone-UA</td>
            <td>✔️</td>
            <td>✔️</td>
            <td>1000</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Multiple checks</td>
        </tr>
        <tr>
            <td><strong>UC Browser</strong><br>X-UCBrowser-Device-UA</td>
            <td>✔️</td>
            <td>✔️</td>
            <td>1000</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Multiple checks</td>
        </tr>
        <tr>
            <td colspan="8"><h3>Browser Specific HTTP User-Agents</h3></td>
        </tr>
        <tr>
            <td><strong>Opera Mini Browser</strong><br>X-OperaMini-Phone</td>
            <td>✔️</td>
            <td>✔️</td>
            <td>1000</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Multiple checks</td>
        </tr>
        <tr>
            <td><strong>UC Browser</strong><br>X-UCBrowser-Phone-UA</td>
            <td>✔️</td>
            <td>✔️</td>
            <td>1000</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Multiple checks</td>
        </tr>
        <tr>
            <td><strong>UC Browser</strong><br>X-UCBrowser-UA</td>
            <td>✔️</td>
            <td>✔️</td>
            <td>1000</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Multiple checks</td>
        </tr>
        <tr>
            <td><strong>Puffin Browser</strong><br>X-Puffin-UA</td>
            <td>✔️</td>
            <td>✔️</td>
            <td>1000</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Multiple checks</td>
        </tr>
        <tr>
            <td><strong>Baidu Browser</strong><br>Baidu-FlyFlow</td>
            <td>✔️</td>
            <td>✔️</td>
            <td>1000</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Multiple checks</td>
        </tr>
        <tr>
            <td><strong>SkyFire Browser</strong><br>X-Skyfire-Phone</td>
            <td>✔️</td>
            <td>✔️</td>
            <td>1000</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Multiple checks</td>
        </tr>
        <tr>
            <td><strong>Bolt Browser</strong><br>X-Bolt-Phone-UA</td>
            <td>✔️</td>
            <td>✔️</td>
            <td>1000</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Multiple checks</td>
        </tr>
        <tr>
            <td colspan="8"><h3>Language HTTP Headers</h3></td>
        </tr>
        <tr>
            <td>Accept-Language</td>
            <td>✔️</td>
            <td>✔️</td>
            <td>100</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Multiple checks and converted to lowercase iso standard codes.</td>
        </tr>
        <tr>
            <td>x</td>
            <td>x</td>
            <td>x</td>
            <td>x</td>
            <td>x</td>
            <td>x</td>
            <td>x</td>
            <td>x</td>
        </tr>
        <tr>
            <td>Ban Score API</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>int</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td colspan="8"><h3>Logger API</h3></td>
        </tr>
        <tr>
            <td>Ajax</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>boolean</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Date</td>
            <td>❌</td>
            <td>✔️</td>
            <td>50</td>
            <td>(object) date</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API. Date created using Carbon.</td>
        </tr>
        <tr>
            <td>Email</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>boolean</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Ip Address</td>
            <td>❌</td>
            <td>✔️</td>
            <td>100</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Json</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>boolean</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Level</td>
            <td>❌</td>
            <td>✔️</td>
            <td>50</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Location</td>
            <td>❌</td>
            <td>✔️</td>
            <td>50</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Message</td>
            <td>❌</td>
            <td>✔️</td>
            <td>1000</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Method</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Notification</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>boolean</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Pjax</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>boolean</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Prefetch</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>boolean</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Request URL</td>
            <td>❌</td>
            <td>✔️</td>
            <td>1000</td>
            <td>string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Secure</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>boolean</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Status Code</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>int</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>User Agent</td>
            <td>❌</td>
            <td>✔️</td>
            <td>1000</td>
            <td>string</td>
            <td>✔️</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
    </tbody>
</table>
