## Port blocking

To determine whether fetching a [request](https://fetch.spec.whatwg.org/#concept-request) request **should be blocked due to a bad port**, run these steps:

1. Let url be request's [current URL](https://fetch.spec.whatwg.org/#concept-request-current-url).

2. If url's [scheme](https://url.spec.whatwg.org/#concept-url-scheme) is an [HTTP(S) scheme](https://fetch.spec.whatwg.org/#http-scheme) and url's [port](https://url.spec.whatwg.org/#concept-url-port) is a [bad port](https://fetch.spec.whatwg.org/#bad-port), then return **blocked**.

Return **allowed**.

A port is a **bad port** if it is listed in the first column of the following table.

<table>
 <tbody><tr><th>Port<th>Typical service
 <tr><td>1<td>tcpmux
 <tr><td>7<td>echo
 <tr><td>9<td>discard
 <tr><td>11<td>systat
 <tr><td>13<td>daytime
 <tr><td>15<td>netstat
 <tr><td>17<td>qotd
 <tr><td>19<td>chargen
 <tr><td>20<td>ftp-data
 <tr><td>21<td>ftp
 <tr><td>22<td>ssh
 <tr><td>23<td>telnet
 <tr><td>25<td>smtp
 <tr><td>37<td>time
 <tr><td>42<td>name
 <tr><td>43<td>nicname
 <tr><td>53<td>domain
 <tr><td>69<td>tftp
 <tr><td>77<td>—
 <tr><td>79<td>finger
 <tr><td>87<td>—
 <tr><td>95<td>supdup
 <tr><td>101<td>hostname
 <tr><td>102<td>iso-tsap
 <tr><td>103<td>gppitnp
 <tr><td>104<td>acr-nema
 <tr><td>109<td>pop2
 <tr><td>110<td>pop3
 <tr><td>111<td>sunrpc
 <tr><td>113<td>auth
 <tr><td>115<td>sftp
 <tr><td>117<td>uucp-path
 <tr><td>119<td>nntp
 <tr><td>123<td>ntp
 <tr><td>135<td>epmap
 <tr><td>137<td>netbios-ns
 <tr><td>139<td>netbios-ssn
 <tr><td>143<td>imap
 <tr><td>161<td>snmp
 <tr><td>179<td>bgp
 <tr><td>389<td>ldap
 <tr><td>427<td>svrloc
 <tr><td>465<td>submissions
 <tr><td>512<td>exec
 <tr><td>513<td>login
 <tr><td>514<td>shell
 <tr><td>515<td>printer
 <tr><td>526<td>tempo
 <tr><td>530<td>courier
 <tr><td>531<td>chat
 <tr><td>532<td>netnews
 <tr><td>540<td>uucp
 <tr><td>548<td>afp
 <tr><td>554<td>rtsp
 <tr><td>556<td>remotefs
 <tr><td>563<td>nntps
 <tr><td>587<td>submission
 <tr><td>601<td>syslog-conn
 <tr><td>636<td>ldaps
 <tr><td>993<td>imaps
 <tr><td>995<td>pop3s
 <tr><td>1719<td>h323gatestat
 <tr><td>1720<td>h323hostcall
 <tr><td>1723<td>pptp
 <tr><td>2049<td>nfs
 <tr><td>3659<td>apple-sasl
 <tr><td>4045<td>npp
 <tr><td>5060<td>sip
 <tr><td>5061<td>sips
 <tr><td>6000<td>x11
 <tr><td>6566<td>sane-port
 <tr><td>6665<td>ircu
 <tr><td>6666<td>ircu
 <tr><td>6667<td>ircu
 <tr><td>6668<td>ircu
 <tr><td>6669<td>ircu
 <tr><td>6697<td>ircs-u
</table>
<!-- Service names per
     https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.txt -->
   
