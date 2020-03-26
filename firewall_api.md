## October II Firewall API

October II security module also comes with an api that sends the following infomation:

Value | Description
---|---
n/a | Default (fallback if module can't determine value).
badBot | Bad bots to be blacklisted.
blogSpam | CMS blog comment spam.
botNet | A botnet is a number of Internet-connected devices, each of which is running one or more bots.
bruteForce | Credential brute-force attacks on webpage logins and services like SSH, FTP, SIP, SMTP, RDP, etc.
ddosAttack | Participating in distributed denial-of-service (usually part of botnet).
dnsPoisoning | Falsifying domain server cache (cache poisoning).
emailSpam | Spam email content, infected attachments and phishing emails.
exploitedHost | Host is likely infected with malware and being used for other attacks or to host malicious content.
fraudOrders | Fraudulent orders.
fraudVoip | Unauthorized use of paid communication services charged to someone who isn't expecting it.
goodBot | Good bots to be whitelisted.
hacking | Attempts to probe or exploit the cms or installed web applications.
headLess | Using a headless browser.
human | User is a human (not a robot).
iotTargeted | Abuse was targeted at an "Internet of Things" type device.
openProxy | Open proxy, open relay, vpn or Tor exit node.
phishing | Phishing websites and/or email.
pingDeath | Oversized IP packet.
portScan | Scanning for open ports and vulnerable services.
refererTool | Referer tools, see referer module.
spoofing | Email sender spoofing.
sqlInjection | Attempts at SQL injection.
ssh | Secure Shell (SSH) abuse.
toolAllow | Allow tool to bypass firewall.
toolBlock | Block tool in firewall.
webSpam | Comment/forum spam, HTTP referer spam, or other CMS spam.

(*) Subject to adding more values, with more firewall modules being created.
