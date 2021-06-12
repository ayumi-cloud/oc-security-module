## Summer CMS Firewall Logging API

Below lists the firewall logging api:

<table>
    <thead>
        <tr>
            <th>Property</th>
            <th>Type</th>
            <th>Values</th>
            <th>Required or Recommended</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>logAjax</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Recommended</td>
            <td>Determine if the request was the result of an AJAX call.</td>
        </tr>
        <tr>
            <td>logCookie</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Recommended</td>
            <td>Checks to see if the firewall cookie is present (only runs on HTTPS secure servers).<br><strong>Note:</strong>The firewall encrypted cookie is only installed on secure server connections and will not be installed on a HTTP server.</td>
        </tr>
        <tr>
            <td>logDate</td>
            <td>object</td>
            <td>Date and time e.g.<br><strong>2021-06-12 16:31:28</strong></td>
            <td>Recommended</td>
            <td>The date and time when the log was created or updated (the <strong>logDate</strong> is set to <strong>Y-m-d H:i:s</strong> format as the default for backwards compatibility).</td>
        </tr>
        <tr>
            <td>logEmail</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Recommended</td>
            <td>When set to <strong>true</strong> the firewall will send the log details to the Summer CMS admin/webmaster's email address.</td>
        </tr>
        <tr>
            <td>logIpAddress</td>
            <td>string</td>
            <td>IPv4 or IPv6 address e.g.<br><strong>123.123.123.123</strong></td>
            <td>Recommended</td>
            <td>Get the request client's IP address.</td>
        </tr>
        <tr>
            <td>logJson</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Recommended</td>
            <td>Determine if the request is sending JSON.</td>
        </tr>
        <tr>
            <td>logLevel</td>
            <td>string</td>
            <td>alert<br>critical<br>debug<br>emergency<br>error<br>info<br>notice<br>warning</td>
            <td>Required</td>
            <td>The logger provides the eight logging levels defined in <a href="https://datatracker.ietf.org/doc/html/rfc5424">RFC 5424</a>.</td>
        </tr>
        <tr>
            <td>logLocation</td>
            <td>string</td>
            <td>frontend<br>backend<br>other</td>
            <td>Required</td>
            <td>Determines the firewall location where the log took place.</td>
        </tr>
        <tr>
            <td>logMessage</td>
            <td>string</td>
            <td>Log message e.g.<br><strong>Firewall settings are missing please install</strong></td>
            <td>Required</td>
            <td>A log message in general is a text string with an abundance of contextual information.</td>
        </tr>
        <tr>
            <td>logMethod</td>
            <td>string</td>
            <td>Http request method e.g.<br><strong>GET</strong></td>
            <td>Recommended</td>
            <td>Get the http request method.</td>
        </tr>
        <tr>
            <td>logNotification</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Recommended</td>
            <td>When set to <strong>true</strong> the firewall will indicate the notification in the side panel.</td>
        </tr>
        <tr>
            <td>logPjax</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Recommended</td>
            <td>Determine if the request is the result of an PJAX call.</td>
        </tr>
        <tr>
            <td>logPrefetch</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Recommended</td>
            <td>Determine if the request is the result of an prefetch call.</td>
        </tr>
        <tr>
            <td>logRequestUrl</td>
            <td>string</td>
            <td>Full request url e.g.<br><strong>https://www.example.com/somthing</strong></td>
            <td>Recommended</td>
            <td>Get the full URL for the request with the added query string parameters.</td>
        </tr>
        <tr>
            <td>logSecure</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Recommended</td>
            <td>Determine if the request is over HTTPS.</td>
        </tr>
        <tr>
            <td>logUserAgent</td>
            <td>string</td>
            <td>User agent e.g.<br><strong>Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Safari/605.1.15</strong></td>
            <td>Recommended</td>
            <td>Get the client user agent.</td>
        </tr>
    </tbody>
</table>

(*) Subject to adding more values and firewall modules being created, to add more features to the cms.
