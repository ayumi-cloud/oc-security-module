## Summer CMS Firewall Logging API

Below lists the firewall logging api:

<table>
    <thead>
        <tr>
            <th>Property</th>
            <th>Type</th>
            <th>Values</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>logAjax</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Determine if the request was the result of an AJAX call.</td>
        </tr>
        <tr>
            <td>logEmail</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>When set to <strong>true</strong> the firewall will send the log details to the Summer CMS admin/webmaster's email address.</td>
        </tr>
        <tr>
            <td>logIpAddress</td>
            <td>string</td>
            <td>IPv4 or IPv6 address e.g.<br><strong>123.123.123.123</strong></td>
            <td>Get the request client's IP address.</td>
        </tr>
        <tr>
            <td>logJson</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Determine if the request is sending JSON.</td>
        </tr>
        <tr>
            <td>logLevel</td>
            <td>string</td>
            <td>alert<br>critical<br>debug<br>emergency<br>error<br>info<br>notice<br>warning</td>
            <td>The logger provides the eight logging levels defined in <a href="https://datatracker.ietf.org/doc/html/rfc5424">RFC 5424</a>.</td>
        </tr>
        <tr>
            <td>logLocation</td>
            <td>string</td>
            <td>frontend<br>backend</td>
            <td>Determines the firewall location where the log took place.</td>
        </tr>
        <tr>
            <td>logMessage</td>
            <td>string</td>
            <td>Log message e.g.<br><strong>Firewall settings are missing please install</strong></td>
            <td>A log message in general is a text string with an abundance of contextual information.</td>
        </tr>
        <tr>
            <td>logMethod</td>
            <td>string</td>
            <td>Http request method e.g.<br><strong>GET</strong></td>
            <td>Get the http request method.</td>
        </tr>
        <tr>
            <td>logNotification</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>When set to <strong>true</strong> the firewall will indicate the notification in the side panel.</td>
        </tr>
        <tr>
            <td>logPjax</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Determine if the request is the result of an PJAX call.</td>
        </tr>
        <tr>
            <td>logPrefetch</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Determine if the request is the result of an prefetch call.</td>
        </tr>
        <tr>
            <td>logRequestUrl</td>
            <td>string</td>
            <td>xxx<br>false</td>
            <td>Get the full URL for the request with the added query string parameters.</td>
        </tr>
        
        
        
        
        
        
        
    </tbody>
</table>

(*) Subject to adding more values and firewall modules being created, to add more features to the cms.
