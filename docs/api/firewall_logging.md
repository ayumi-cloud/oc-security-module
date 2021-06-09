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
    </tbody>
</table>

(*) Subject to adding more values and firewall modules being created, to add more features to the cms.
