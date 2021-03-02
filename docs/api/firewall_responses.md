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
            <td>badAsn</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Block fake traffic including bots from hosting company locations, real users come from isp's etc.</td>
        </tr>
        <tr>
            <td>badHeader</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Block oversized, malformed, bad or missing http headers.</td>
        </tr>
        <tr>
            <td>badHost</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Block the hosts that don't match the trusted host whitelist.</td>
        </tr>
        <tr>
            <td>badIp</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Block oversized, malformed, bad or missing ip headers.</td>
        </tr>
        <tr>
            <td>badMethod</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Block oversized, malformed, bad or missing request method headers.</td>
        </tr>
        <tr>
            <td>badPort</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Block non 443 ports when http secure is activated in 'production' mode.</td>
        </tr>
        <tr>
            <td>badProxy</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Block oversized, malformed, bad or missing proxy headers.</td>
        </tr>
        <tr>
            <td>badScheme</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Block trying to convert https into http headers.</td>
        </tr>
        <tr>
            <td>badUrl</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Block oversized, malformed, bad, overriding request url x-headers.</td>
        </tr>
        <tr>
            <td>badUserAgent</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Block oversized, malformed, bad or missing user agent headers.</td>
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
            <td>bad<br>dead<br>good<br>headLess<br>malware<br>noVersion<br>old</td>
            <td>
                <ul>
                    <li>Bad browsers are any junk user agent that can't be found with the parser module.</li>
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
            <td>oldOs</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>The operating system is very old and no longer maintained, old operating systems are less secure and make it easier for pen testing and bots.</td>
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
            <td>portScan</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Scanning for open ports and vulnerable services.</td>
        </tr>
        <tr>
            <td>probing</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Site scanning and probing is the main technique attackers use to gather as much information as possible about a web application and the supporting infrastructure.</td>
        </tr>
        <tr>
            <td>refererUrl</td>
            <td>string</td>
            <td>evilPath<br>urlMalformed</td>
            <td>
                <ul>
                    <li>File inclusion strings that can allow users to pull in files that should not be a part of a web server.</li>
                    <li>Malformed request url.</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>requestUrl</td>
            <td>string</td>
            <td>evilPath<br>urlMalformed</td>
            <td>
                <ul>
                    <li>File inclusion strings that can allow users to pull in files that should not be a part of a web server.</li>
                    <li>Malformed request url.</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>refererTool</td>
            <td>string</td>
            <td>archive<br>cache<br>translator<br>proxy</td>
            <td>
                <ul>
                    <li>The referer url came from an archival source.</li>
                    <li>The referer url came from a search engine cached page.</li>
                    <li>The referer url came from a translation service.</li>
                    <li>The referer url came from a proxy service.</li>
                </ul>
            </td>
        </tr>
        <tr>
            <td>repeatAttack</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>When a bot uses the same user agent, but switches to a new ip address and tries to do another attack, the firewall blocks the repeated attacks.</td>
        </tr>
        <tr>
            <td>scanningTool</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Developer, seo and pen testing tools should be used on a 'developer' mode website and the access limited in a 'production' mode environment.</td>
        </tr>
        <tr>
            <td>seoPoisoning</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Also known as search poisoning, is an attack method by hijacking websites, creating malicious content on them and using seo tactics to make them show up prominently in search results. The real purpose, is to infect the visitors with malware or fraudulently access their sensitive information to be used for identity theft.</td>
        </tr>
        <tr>
            <td>socialMedia</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Indicate when a referer has come from a known social media platform.</td>
        </tr>
        <tr>
            <td>spoofing</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>A spoofing attack is a situation in which a person or program successfully identifies as another by falsifying data.</td>
        </tr>
        <tr>
            <td>sqlInjection</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Is a web security vulnerability that allows an attacker to interfere with the queries that an application makes to its database.</td>
        </tr>
        <tr>
            <td>ssh</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Secure Shell (SSH) abuse.</td>
        </tr>
        <tr>
            <td>webSpam</td>
            <td>boolean</td>
            <td>true<br>false</td>
            <td>Techniques to trick the ranking algorithms of web search engines to rank higher in the search results. Usually causing low quality content to be injected into the website.</td>
        </tr>
    </tbody>
</table>

(*) Subject to adding more values and firewall modules being created, to add more features to the cms.
