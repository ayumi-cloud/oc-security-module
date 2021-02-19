## Summer CMS Firewall Responses API

Below lists the firewall responses api:

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
            <td>botHuman</td>
            <td>string</td>
            <td>badBot<br>botNet<br>fakeBot<br>goodBot<br>human</td>
            <td>
                <ul>
                    <li>Bad bots to be blacklisted.</li>
                    <li>A botnet is a number of Internet-connected devices, each of which is running one or more bots.</li>
                    <li>The fake bot has a real user agent but comes from a non-official server location.</li>
                    <li>Good bots to be whitelisted.</li>
                    <li>User is a human (not a robot) set as the default until flagged by the firewall.</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>badHeader</td>
            <td>string</td>
            <td>badIp<br>badUa<br>badRequestHttps<br>badRequestPort<br>badRequestMethod<br>badRequestHost<br>x........ host, url/uri and proxy</td>
            <td>
                <ul>
                    <li>Block oversized, malformed, bad or missing ip headers.</li>
                    <li>Block oversized, malformed, bad or missing user agent headers.</li>
                    <li>Block trying to convert https into http headers.</li>
                    <li>Block non 443 ports when https is selected headers.</li>
                    <li>Block oversized, malformed, bad or missing methods headers.</li>
                    <li>Block non matching trusted host headers.</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>badHosting</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Block fake traffic including bots from hosting company locations, real users come from isp's etc.</td>
        </tr>
        <tr>
            <td>blogSpam</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Block cms blog comment spam.</td>
        </tr>
        <tr>
            <td>browserType</td>
            <td>string</td>
            <td>dead<br>good<br>headLess<br>malware<br>noVersion<br>old</td>
            <td>
                <ul>
                    <li>Dead browsers that have been discontinued.</li>
                    <li>Whitelisted good browser with a modern stable release version number.</li>
                    <li>Using a headless browser.</li>
                    <li>Bad and fake browsers containing malware or adware etc.</li>
                    <li>Request hiding their browser version, good bots bypass this mode.</li>
                    <li>Old browser versions that are several years older than the evergreen version (current stable version).</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>bruteForce</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Credential brute-force attacks on webpage logins and services like SSH, FTP, SIP, SMTP, RDP, etc.</td>
        </tr>
        <tr>
            <td>cachePoisoning</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>DNS cache poisoning, also known as DNS spoofing, is the act of placing false information in a DNS resolver cache.</td>
        </tr>
        <tr>
            <td>ddosAttack</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Participating in distributed denial-of-service.</td>
        </tr>
        <tr>
            <td>emailSpam</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Spam email content, infected attachments and phishing emails.</td>
        </tr>
        <tr>
            <td>exploitedHost</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Host is likely infected with malware and being used for other attacks or to host malicious content.</td>
        </tr>
        <tr>
            <td>fraudOrders</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Fraudulent orders.</td>
        </tr>
        <tr>
            <td>fraudVoip</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Unauthorized use of paid communication services charged to someone who isn't expecting it.</td>
        </tr>
        <tr>
            <td>hacking</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Attempts to exploit the cms or installed web applications.</td>
        </tr>
        <tr>
            <td>iotTargeted</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Abuse was targeted at an 'Internet of Things' type device.</td>
        </tr>
        <tr>
            <td>openProxy</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Open proxy, open relay, vpn or Tor exit node.</td>
        </tr>
        <tr>
            <td>phishing</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Is a fraudulent attempt to obtain sensitive information or data, by impersonating oneself as a trustworthy entity.</td>
        </tr>
        <tr>
            <td>pingDeath</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Oversized ip packet.</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        
    </tbody>
</table>





requestUrl
refererUrl



evilRefererPath | Referer file inclusion strings that can allow users to pull in files that should not be a part of a web server.
evilRequestPath | Request file inclusion strings that can allow users to pull in files that should not be a part of a web server.
urlRefererMalformed | Malformed referer url.
urlRequestMalformed | Malformed request url.




portScan | Scanning for open ports and vulnerable services.
probing | Site scanning/probing is the main technique attackers use to gather as much information as possible about a Web application and the supporting infrastructure.
refererTool | Referer tools, e.g. search engine cached pages, translation pages etc, see "referer" module for more details.
scanningTool | Known pen testing, seo tool, you can limit the access to these tools when you are not using them in the settings.
spoofing | Email sender spoofing.
sqlInjection | Attempts at SQL injection.
ssh | Secure Shell (SSH) abuse.

webSpam | Comment/forum spam, HTTP referer spam, or other CMS spam.

### Other Firewall Response Codes

Value | Description
---|---
banned | The firewall catches any other threats and labels them "banned".
repeatAttack | When a bot uses the same user agent, but switches to a new ip address and does another attack, the firewall blocks the repeated attacks and labels them "repeated attacks".

(*) Subject to adding more values and firewall modules being created, to add more features to the cms.
