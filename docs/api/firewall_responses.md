## October II Firewall Responses API

### Responses

Value | Description
---|---
n/a | Default (fallback if module can't determine value).
badBot | Bad bots to be blacklisted.
badHosting | Bad bot blocked from a hosting company, real users come from isp's.
blogSpam | CMS blog comment spam.
botNet | A botnet is a number of Internet-connected devices, each of which is running one or more bots.
bruteForce | Credential brute-force attacks on webpage logins and services like SSH, FTP, SIP, SMTP, RDP, etc.
ddosAttack | Participating in distributed denial-of-service (usually part of botnet).
dnsPoisoning | Falsifying domain server cache (cache poisoning).
emailSpam | Spam email content, infected attachments and phishing emails.
exploitedHost | Host is likely infected with malware and being used for other attacks or to host malicious content.
fakeBot | The fake bot has a real user agent but comes from a non-official server location.
fraudOrders | Fraudulent orders.
fraudVoip | Unauthorized use of paid communication services charged to someone who isn't expecting it.
goodBot | Good bots to be whitelisted.
hacking | Attempts to probe or exploit the cms or installed web applications.
human | User is a human (not a robot).
iotTargeted | Abuse was targeted at an "Internet of Things" type device.
openProxy | Open proxy, open relay, vpn or Tor exit node.
phishing | Phishing websites and/or email.
pingDeath | Oversized IP packet.
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
