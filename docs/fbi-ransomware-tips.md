## FBI offers tips on ransomware defense

As part of his RSA talk, DeCapua also offered recommended tips on how companies can defend themselves against ransomware.

### 1\. RDP accounts for 70-80% of network breaches

DeCapua stated that the Windows Remote Desktop Protocol (RDP) is the most common method that ransomware attackers are gaining access to a network before deploying ransomware.

"RDP is still 70-80% of the initial foothold that ransomware actors use," DeCapua stated in his talk.

Therefore, if you use RDP in your organization it is recommended that you use Network Level Authentication (NLA), which requires clients to authenticate themselves with the network before actually connecting to the remote desktop server.

This offer increased security as it does not give the attacker access to an RDP server until they are authenticated and thus offers better protection against preauthentication exploits.

It is also suggested that you use unique and complex passwords for your RDP accounts.

BleepingComputer also suggests that you place all RDP services behind a VPN so that they are not publicly accessible on the Internet.

### 2\. Be careful of phishing attacks

While not shown on his slide, DeCapua also mentioned that if its not RDP attacks that allow bad actors access to a network, its either phishing, following by remote code execution vulnerabilities.

All users must be wary of strange emails with attachments asking you to enable content or enable editing, which you should never do without speaking to an IT staff or system administrator.

Phishing is getting harder and more complex to detect, especially now that actors are compromising coworker's accounts and using them to phish other employees.

Always be wary of any email with attachments and if you are not 100% sure if they legitimate, reach out to the sender via phone or speak to a system admin before opening them.

### 3\. Install software and operating system updates

Make sure to install operating system and software updates as quickly as possible after being released.

Every second Tuesday of the month, Microsoft releases security updates for its software and Windows as part of the Microsoft Patch Tuesday.

It is very common to find proof-of-concept exploits being published soon after updates are released, which are useful for administrators and researchers, but also for attackers to use in attacks.

Therefore, it is important to get those updates installed as soon as possible. This is especially true for public-facing services such as RDP, Exchange, etc.

### 4\. Use complex passwords

Everyone knows you need to use complex passwords that are unique for every login that you have.

Unfortunately, many people do not heed this advice and just use the same password at every site.

This means if one of those sites gets hacked, your exposed credentials can then be used in credential stuffing attacks at other sites and possibly even network logins.

Use a password manager to keep track of your unique passwords and you will be far greater protected.

### 5\. Monitor your network

DeCapua stated that invariably someone at your company is going to get phished, hacked, or compromised in some way so it is important to always monitor a network for suspicious activity.

"You're not going to prevent an intrusion, but actors get really really noisy when they are moving laterally and trying to escalate their privileges," stated DeCapua.

Invest in network monitoring tools and intrusion detection systems to detect suspicious activity and traffic in your network.

### 6\. Have a contingency plan and backups

To be technical, things just happen. So have a contingency plan and good backups.

No matter how hard you try to protect your computers and network, someone invariably clicks on the wrong thing or a server is exposed in some manner.

So always make sure to have a tested and working nightly backup routine with file versioning. This includes offline backups that are not accessible via the cloud.

BleepingComputer routinely sees ransomware actors targeting a victim's cloud-based backup service and deleting all backups before encrypting the network.

Therefore, it is important to retain offline backups that cannot be wiped by bad actors.

You can watch FBI Special Agent Joel DeCapua's full talk below:

[![Feds Fighting Ransomware](https://github.com/ayumi-cloud/oc-security-module/blob/master/src/assets/images/ransomeware-talk.jpg)](https://www.youtube.com/watch?v=LUxOcpIRxmg)
