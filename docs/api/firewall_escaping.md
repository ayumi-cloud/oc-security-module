## Summer CMS Firewall Escaping API

### Input Validation and Data Sanitization

Below are details for the level of escaping carried out by the firewall in certain specific requests, please note this list will continue to grow over time and not intended to be a complete list!

<table>
    <thead>
        <tr>
            <th>Value</th>
            <th>Server Protection</th>
            <th>Client-Side Protection</th>
            <th>Long-task Limits</th>
            <th>Data type</th>
            <th>Extra</th>
            <th>Allowed or Blocked</th>
            <th>Notes</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td colspan="8"><h3>HTTP Request Methods</h3></td>
        </tr>
        <tr>
            <td>Request Method HTTP Header</td>
            <td>✔️</td>
            <td>✔️</td>
            <td>25</td>
            <td>string</td>
            <td>uppercase</td>
            <td>both</td>
            <td>Server blocks bad verbs only.</td>
        </tr>
        <tr>
            <td>X-HTTP-Method</td>
            <td>✔️</td>
            <td>❌</td>
            <td>n/a</td>
            <td>string</td>
            <td>n/a</td>
            <td>blocked</td>
            <td>Blocked by default, can turn on in settings.</td>
        </tr>
        <tr>
            <td>X-HTTP-Method-Override</td>
            <td>✔️</td>
            <td>❌</td>
            <td>n/a</td>
            <td>string</td>
            <td>n/a</td>
            <td>blocked</td>
            <td>Blocked by default, can turn on in settings.</td>
        </tr>
        <tr>
            <td>X-Method-Override</td>
            <td>✔️</td>
            <td>❌</td>
            <td>n/a</td>
            <td>string</td>
            <td>n/a</td>
            <td>blocked</td>
            <td>Blocked by default, can turn on in settings.</td>
        </tr>
        <tr>
            <td colspan="8"><h3>HTTP Requests</h3></td>
        </tr>
        <tr>
            <td>Request URL/URI</td>
            <td>❌</td>
            <td>✔️</td>
            <td>1000</td>
            <td>string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Using Laravel API.</td>
        </tr>
        <tr>
            <td colspan="8"><h3>HTTP Responses</h3></td>
        </tr>
        <tr>
            <td>Response URL/URI</td>
            <td>❌</td>
            <td>✔️</td>
            <td>1000</td>
            <td>string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Using Laravel API.</td>
        </tr>
        <tr>
            <td colspan="8"><h3>Operating Systems Details</h3></td>
        </tr>
        <tr>
            <td>Name</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Full Name</td>
            <td>❌</td>
            <td>✔️</td>
            <td>200</td>
            <td>string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Version</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>(object) string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Full Version</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>(object) string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td colspan="8"><h3>Device Details</h3></td>
        </tr>
        <tr>
            <td>Manufacturer</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Model</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Series</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Carrier</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Identifier</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Type</td>
            <td>❌</td>
            <td>✔️</td>
            <td>25</td>
            <td>string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Subtype</td>
            <td>❌</td>
            <td>✔️</td>
            <td>25</td>
            <td>string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Identified</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>int</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Generic</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>boolean</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Hidden</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>boolean</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td colspan="8"><h3>Browser Details</h3></td>
        </tr>
        <tr>
            <td>Type</td>
            <td>❌</td>
            <td>✔️</td>
            <td>25</td>
            <td>string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Name</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>normalize</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API (external).</td>
        </tr>
        <tr>
            <td>Channel</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Info</td>
            <td>❌</td>
            <td>✔️</td>
            <td>250</td>
            <td>string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Full Version</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Using semantic versioning spec (external).</td>
        </tr>
        <tr>
            <td>Major Version</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Using semantic versioning spec.</td>
        </tr>
        <tr>
            <td>Minor Version</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Using semantic versioning spec.</td>
        </tr>
        <tr>
            <td>Patch Version</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Using semantic versioning spec.</td>
        </tr>
        <tr>
            <td>Build Version</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Using semantic versioning spec.</td>
        </tr>
        <tr>
            <td>Using Name</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>(object) string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Example Yandex using Chromium, cleaned from firewall API (internal).</td>
        </tr>
        <tr>
            <td>Using Version</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>(object) string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Example Yandex using Chromium version, cleaned from firewall API (internal).</td>
        </tr>
        <tr>
            <td colspan="8"><h3>App Details</h3></td>
        </tr>
        <tr>
            <td>App Types</td>
            <td>❌</td>
            <td>✔️</td>
            <td>25</td>
            <td>string</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td colspan="8"><h3>HTTP User-Agent</h3></td>
        </tr>
        <tr>
            <td>User Agent</td>
            <td>✔️</td>
            <td>✔️</td>
            <td>1000</td>
            <td>string</td>
            <td>n/a</td>
            <td>both</td>
            <td>Multiple checks</td>
        </tr>
        <tr>
            <td>x</td>
            <td>x</td>
            <td>x</td>
            <td>x</td>
            <td>x</td>
            <td>x</td>
            <td>x</td>
            <td>x</td>
        </tr>
        <tr>
            <td>Ban Score API</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>int</td>
            <td>n/a</td>
            <td>allowed</td>
            <td>Using numbers only and cleaned leaving database only.</td>
        </tr>
    </tbody>
</table>

=== TO DO (put in alphabetical order later) ===
