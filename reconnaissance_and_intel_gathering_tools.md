## 20 Recon and Intel Gathering Tools used by InfoSec Professionals

**_Important note_** _before we start: remember that you should never use these tools on external networks/systems without previous authorization. These tools are presented here in order to help IT security researchers and private/public infosec investigators during the first phase of information gathering, which is one of the most important parts of a cybersecurity investigation._

### 1\. OSINT Framework

While [OSINT Framework](http://osintframework.com/) isn't a tool to be run on your servers, it's a very useful way to get valuable information by querying free search engines, resources, and tools publicly available on the Internet. They are focused on bringing the best links to valuable sources of OSINT data.

While this web application was originally created focused on IT security, with the time it has evolved and today you can get other kinds of information from other industries as well. Most of the websites it uses to query the information are free, but some may require paying a low fee.

![OSINT Framework](https://securitytrails.com/images/d/6/e/3/8/d6e38158e37712232c50b7fd5edfd18c01fc32a0-osint-framework.jpeg "OSINT Framework.")

<div>

### 2\. CheckUserNames

[CheckUserNames](http://checkusernames.com/) is an online tool that can help you to find usernames across over 170 social networks. This is especially useful if you are running an investigation to determine the usage of the same username on different social networks.

It can be also used to check for brand company names, not only individuals.

### 3\. HaveIbeenPwned

[HaveIbeenPwned](https://haveibeenpwned.com/) can help you to check if your account has been compromised in the past. This site was developed by Troy Hunt, one of the most respected IT security professionals of this market, and it's been serving accurate reports since years.

If you suspect your account has been compromised, or want to verify for 3rd party compromises on external accounts, this is the perfect tool. It can track down web compromise from many sources like Gmail, Hotmail, Yahoo accounts, as well as LastFM, Kickstarter, Wordpress.com, Linkedin and many other popular websites.

Once you introduce your email address, the results will be displayed, showing something like:

![HaveIbeenPwned](https://securitytrails.com/images/7/4/9/2/5/7492501519a1370479c036db943a70025b6690e0-haveibeenpwned.jpeg "HaveIbeenPwned.")

### 4\. BeenVerified

[BeenVerified](https://www.beenverified.com/) is another similar tool that is used when you need to search people on public internet records. It can be pretty useful to get more valuable information about any person in the world when you are conducting an IT security investigation and a target is an unknown person.

After done, the results page will be displayed with all the people that match the person's name, along with their details, geographic location, phone number, etc. Once found, you can build your own reports.

The amazing thing about BeenVerified it's that it also includes information about criminal records and official government information as well.

BeenVerified background reports may include information from multiple databases, bankruptcy records, career history, social media profiles and even online photos.

### 5\. Censys

[Censys](https://censys.io/) is a wonderful search engine used to get the latest and most accurate information about any device connected to the internet, it can be servers or domain names.

You will be able to find full geographic and technical details about 80 and 443 ports running on any server, as well as HTTP/S body content & GET response of the target website, Chrome TLS Handshake, full SSL Certificate Chain information, and WHOIS information.

<div>

### 6\. BuiltWith

[BuiltWith](https://builtwith.com/) is a cool way to detect which technologies are used at any website on the internet.

It includes full detailed information about CMS used like Wordpress, Joomla, Drupal, etc, as well as full depth Javascript and CSS libraries like jquery, bootstrap/foundation, external fonts, web server type (Nginx, Apache, IIS, etc), SSL provider as well as web hosting provider used.

BuiltWith also lets you find which are the most popular technologies running right now, or which ones are becoming trending.

Without any doubt, it is a very good tool to gather all the possible technical details about any website.

### 7\. Google Dorks

While investigating people or companies, a lot of IT security newbies forget the importance of using traditional search engines for recon and intel gathering.

In this case, [Google Dorks](https://securitytrails.com/blog/google-hacking-techniques) can be your best friend. They have been there since 2002 and can help you a lot in your intel reconnaissance.

Google Dorks are simply ways to query Google against certain information that may be useful for your security investigation.

Search engines index a lot of information about almost anything on the internet, including individual, companies, and their data.

Some popular operators used to perform Google Dorking:

*   Filetype: you can use this dork to find any kind of filetypes.
*   Ext: can help you to find files with specific extensions (eg. .txt, .log, etc).
*   Intext: can perform queries helps to search for specific text inside any page.
*   Intitle: it will search for any specific words inside the page title.
*   Inurl: will look out for mentioned words inside the URL of any website.

Log files aren't supposed to be indexed by search engines, however, they do, and you can get valuable information from these Google Dorks, as you see below:

![Google Dorks](https://securitytrails.com/images/5/7/1/e/5/571e5db632611a453f2f484f75fa5c76cc1a5835-google-dorks.jpeg "Google Dorks.")

Now let's focus on other more practical tools used by the most respected InfoSec professionals:

### 8\. Maltego

Is an amazing tool to track down footprints of any target you need to match. This piece of software has been developed by Paterva, and it's part of the Kali Linux distribution.

Using [Maltego](https://www.paterva.com/web7/downloads.php) will allow you to launch reconnaissance testes against specific targets.

One of the best things this software includes is what they call 'transforms'. Transforms are available for free in some cases, and on others, you will find commercial versions only. They will help you to run a different kind of tests and data integration with external applications.

In order to use Maltego you need to open a free account on their website, after that, you can launch a new machine or run transforms on the target from an existing one. Once you have chosen your transforms, Maltego app will start running all the transforms from Maltego servers.

Finally, Maltego will show you the results for the specified target, like IP, domains, AS numbers, and much more.

### 9\. Recon-Ng

[Recon-ng](https://bitbucket.org/LaNMaSteR53/recon-ng) comes already built in the Kali Linux distribution and is another great tool used to perform quickly and thoroughly reconnaissance on remote targets.

This web reconnaissance framework was written in Python and includes many modules, convenience functions and interactive help to guide you on how to use it properly.

The simple command-based interface allows you to run common operations like interacting with a database, run web requests, manage API keys or standardizing output content.

Fetching information about any target is pretty easy and can be done within seconds after installing. It includes interesting modules like google_site_web and bing_domain_web that can be used to find valuable information about the target domains.

While some recon-ng modules are pretty passive as they never hit the target network, others can launch interesting stuff right against the remote host.

![Recon-Ng](https://securitytrails.com/images/9/b/4/0/5/9b405c6bba5ff7e851b501fc193fe093c57b0534-recon-ng.png "Recon-Ng.")

### 10\. theHarvester

[theHarvester](https://github.com/laramies/theHarvester) is another great alternative to fetch valuable information about any subdomain names, virtual hosts, open ports and email address of any company/website.

This is especially useful when you are in the first steps of a penetration test against your own local network, or against 3rd party authorized networks. Same as previous tools, theHarvester is included inside [Kali Linux](https://www.kali.org/) distro.

theHarvester uses many resources to fetch the data like PGP key servers, Bing, Baidu, Yahoo and Google search engine, and also social networks like Linkedin, Twitter and Google Plus.

It can also be used to launch active penetration test like DNS brute force based on dictionary attack, DNS reverse lookups and DNS TLD expansion using dictionary brute force enumeration.

### 11\. Shodan

[Shodan](https://www.shodan.io/) is a network security monitor and search engine focused on the deep web & the internet of things. It was created by John Matherly in 2009 to keep track of publicly accessible computers inside any network.

It is often called the 'search engine for hackers', as it lets you find and explore a different kind of devices connected to a network like servers, routers, webcams, and more.

Shodan is pretty much like Google, but instead of showing you fancy images and rich content / informative websites, it will show you things that are more related to the interest of IT security researchers like SSH, FTP, SNMP, Telnet, RTSP, IMAP and HTTP server banners and public information. Results will be shown ordered by country, operating system, network, and ports.

Shodan users are not only able to reach servers, webcams, and routers. It can be used to scan almost anything that is connected to the internet, including but not limited to traffic lights systems, home heating systems, water park control panels, water plants, nuclear power plants, and much more.

### 12\. Jigsaw

[Jigsaw](https://www.jigsawsecurityenterprise.com/) is used to gather information about any company employees. This tool works perfectly for companies like Google, Linkedin, or Microsoft, where we can just pick up one of their domain names (like google.com), and then gather all their employee's emails on the different company departments.

The only drawback is that these queries are launched against Jigsaw database located at jigsaw.com, so, we depend entirely on what information they allow us to explore inside their database. You will be able to find information about big companies, but if you are exploring a not so famous startup then you may be out of luck.

### 13\. SpiderFoot

[SpiderFoot](http://www.spiderfoot.net/) is one of the best reconnaissance tools out there if you want to automate OSINT and have fast results for reconnaissance, threat intelligence, and perimeter monitoring.

It was written by our friend Steve Micallef, who did a great job building this app and writing the [SecurityTrails Addon for Splunk](https://securitytrails.com/blog/add-on-for-splunk)

This recon tool can help you to launch queries over 100 public data sources to gather intelligence on generic names, domain names, email addresses, and IP addresses.

Using Sipiderfoot is pretty much easy, just specify the target, choose which modules you want to run, and Spiderfoot will do the hard job for you collecting all the intel data from the modules.

### 14\. Creepy

[Creepy](https://www.geocreepy.com/) is a geo-location OSINT tool for infosec professionals. It offers the ability to get full geolocation data from any individuals by querying social networking platforms like Twitter, Flickr, Facebook, etc.

If anyone uploads an image to any of these social networks with geolocation feature activated, then you will be able to see a full active mal where this person has been.

You will be able to filter based on exact locations, or even by date. After that, you can export the results in CSV or KML format.

![Creepy](https://securitytrails.com/images/1/0/c/0/d/10c0d26530e73f06f6b9c4a1054d9af780a739f0-creepy.jpeg "Creepy.")

### 15\. Nmap

[Nmap](https://github.com/wereallfeds/webshag) is one of the most popular and widely used security auditing tools, its name means "Network Mapper". Is a free and open source utility utilized for security auditing and network exploration across local and remote hosts.

Some of the main features include:

*   Host detection: Nmap has the ability to identify hosts inside any network that have certain ports open, or that can send a response to ICMP and TCP packets.
*   IP and DNS information detection: including device type, Mac addresses and even reverse DNS names.
*   Port detection: Nmap can detect any port open on the target network, and let you know the possible running services on it.
*   OS detection: get full OS version detection and hardware specifications of any host connected.
*   Version detection: Nmap is also able to get application name and version number.

### 16\. WebShag

[WebShag](https://www.scrt.ch/en/attack/downloads/webshag) is a great server auditing tool used to scan HTTP and HTTPS protocols. Same as other tools, it's part of Kali Linux and can help you a lot in your IT security research & penetration testing.

You will be able to launch a simple scan, or use advanced methods like through a proxy, or over HTTP authentication.

Written in Python, it can be one of your best allies while auditing systems.

Main features include:

*   [Port Scan](https://securitytrails.com/blog/best-port-scanners)
*   URL scanning
*   File fuzzing
*   Website crawling

In order to avoid getting blocked by remote server security systems, it uses an intelligent IDS evasion system by launching random requests per HTTP proxy server, so you can keep auditing the server without being banned.

### 17\. OpenVAS

[OpenVAS](http://www.openvas.org/) (Open Vulnerability Assessment System) is a security framework that includes particular services and tools for infosec professionals.

This is an open source vulnerability scanner & security manager that was built after the famous Nessus switched from open source to private source. Then, the original developers of the Nessus vulnerability scanner decided to fork the original project and create OpenVAS.

While it is a little bit more difficult to setup than the old Nessus, it's quite effective while working with it to analyze the security of remote hosts.

The main tool included in OpenVAS is OpenVAS Scanner, a highly efficient agent that executes all the network vulnerability tests over the target machine.

On the other hand, another main component is called OpenVAS Manager, which is basically vulnerability management solution that allows you to store scanned data into an SQLite database, so then you can search, filter and order the scan results in a fancy and easy way.

### 18\. Fierce

[Fierce](https://github.com/mschwager/fierce) is an IP and DNS recon tool written in PERL, famous for helping IT sec professionals to find target IPs associated with domain names.

It was written originally by RSnake along with other members of the old http://ha.ckers.org/. It's used mostly targetting local and remote corporate networks.

Once you have defined your target network, it will launch several scans against the selected domains and then it will try to find misconfigured networks and vulnerable points that can later leak private and valuable data.

The results will be ready within a few minutes, a little bit more than when you perform any other scan with similar tools like Nessus, Nikto, Unicornscan, etc.

![Fierce](https://securitytrails.com/images/4/8/a/a/3/48aa3619396c3a44ffa8022cc04f0763d11ef384-fierce.png "Fierce.")

### 19\. Unicornscan

[Unicornscan](https://github.com/dneufeld/unicornscan) is one of the top intel gathering tools for security research. It has also a built-in correlation engine that aims to be efficient, flexible and scalable at the same time.

Main features include:

*   Full TCP/IP device/network scan.
*   Asynchronous stateless TCP scanning (including all TCP Flags variations).
*   Asynchronous TCP banner detection.
*   UDP Protocol scanning.
*   A/P OS identification.
*   Application and component detection.
*   Support for SQL Relational Output

### 20\. Foca

[FOCA](https://www.elevenpaths.com/labstools/foca/index.html) (Fingerprinting Organizations with Collected Archives) is a tool written by ElevenPaths that can be used to scan, analyze, extract and classify information from remote web servers and their hidden information.

Foca has the ability to analyze and collect valuable data from MS Office suite, OpenOffice, PDF, as well as Adobe InDesign and SVG and GIF files. This security tool also works actively with Google, Bing and DuckDuckGo search engines to collect additional data from those files. Once you have the full file list, it starts extracting information to attempt to identify more valuable data from the files.
