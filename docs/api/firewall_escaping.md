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
            <th>Letter case</th>
            <th>Allowed/Blocked</th>
            <th>Notes</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td colspan="7"><h3>HTTP Request Methods</h3></td>
        </tr>
        <tr>
            <td>Request Method HTTP Header</td>
            <td>✔️</td>
            <td>✔️</td>
            <td>25</td>
            <td>Uppercase</td>
            <td>Both</td>
            <td>Server blocks bad verbs only.</td>
        </tr>
        <tr>
            <td>X-HTTP-Method</td>
            <td>✔️</td>
            <td>❌</td>
            <td>n/a</td>
            <td>n/a</td>
            <td>Blocked</td>
            <td>Blocked by default, can turn on in settings.</td>
        </tr>
        <tr>
            <td>X-HTTP-Method-Override</td>
            <td>✔️</td>
            <td>❌</td>
            <td>n/a</td>
            <td>n/a</td>
            <td>Blocked</td>
            <td>Blocked by default, can turn on in settings.</td>
        </tr>
        <tr>
            <td>X-Method-Override</td>
            <td>✔️</td>
            <td>❌</td>
            <td>n/a</td>
            <td>n/a</td>
            <td>Blocked</td>
            <td>Blocked by default, can turn on in settings.</td>
        </tr>
        <tr>
            <td colspan="7"><h3>HTTP Requests</h3></td>
        </tr>
        <tr>
            <td>Request URL/URI</td>
            <td>❌</td>
            <td>✔️</td>
            <td>1000</td>
            <td>n/a</td>
            <td>Allowed</td>
            <td>Using Laravel API.</td>
        </tr>
        <tr>
            <td colspan="7"><h3>HTTP Responses</h3></td>
        </tr>
        <tr>
            <td>Response URL/URI</td>
            <td>❌</td>
            <td>✔️</td>
            <td>1000</td>
            <td>n/a</td>
            <td>Allowed</td>
            <td>Using Laravel API.</td>
        </tr>
        <tr>
            <td colspan="7"><h3>Browser Details</h3></td>
        </tr>
        <tr>
            <td>Browser Type</td>
            <td>❌</td>
            <td>✔️</td>
            <td>25</td>
            <td>n/a</td>
            <td>Allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Browser Name</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>n/a</td>
            <td>Allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Browser Channel</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>n/a</td>
            <td>Allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Browser Info</td>
            <td>❌</td>
            <td>✔️</td>
            <td>250</td>
            <td>n/a</td>
            <td>Allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td>Browser Full Version</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>n/a</td>
            <td>Allowed</td>
            <td>Using semantic versioning spec.</td>
        </tr>
        <tr>
            <td>Browser Major Version</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>int</td>
            <td>Allowed</td>
            <td>Using semantic versioning spec.</td>
        </tr>
        <tr>
            <td>Browser Minor Version</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>int</td>
            <td>Allowed</td>
            <td>Using semantic versioning spec.</td>
        </tr>
        <tr>
            <td>Browser Patch Version</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>int</td>
            <td>Allowed</td>
            <td>Using semantic versioning spec.</td>
        </tr>
        <tr>
            <td>Browser Build Version</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>n/a</td>
            <td>Allowed</td>
            <td>Using semantic versioning spec.</td>
        </tr>
        <tr>
            <td>Browser Using Name</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>n/a</td>
            <td>Allowed</td>
            <td>Example Yandex using Chromium, cleaned from firewall API.</td>
        </tr>
        <tr>
            <td>Browser Using Version</td>
            <td>❌</td>
            <td>✔️</td>
            <td>150</td>
            <td>n/a</td>
            <td>Allowed</td>
            <td>Example Yandex using Chromium, cleaned from firewall API.</td>
        </tr>
        <tr>
            <td colspan="7"><h3>App Details</h3></td>
        </tr>
        <tr>
            <td>App Types</td>
            <td>❌</td>
            <td>✔️</td>
            <td>100</td>
            <td>n/a</td>
            <td>Allowed</td>
            <td>Cleaned from Firewall API.</td>
        </tr>
        <tr>
            <td colspan="7"><h3>HTTP User-Agent</h3></td>
        </tr>
        <tr>
            <td>User Agent</td>
            <td>✔️</td>
            <td>✔️</td>
            <td>1000</td>
            <td>n/a</td>
            <td>Both</td>
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
        </tr>
        <tr>
            <td>Ban Score API</td>
            <td>❌</td>
            <td>✔️</td>
            <td>10</td>
            <td>int</td>
            <td>Allowed</td>
            <td>Using numbers only and cleaned leaving database only.</td>
        </tr>
    </tbody>
</table>



=== TO DO (put in alphabetical order later) ===

### Sanitization Methods

- Add default using `??`.

- Limit lengths `strlen(utf8_decode())` with error message, `substr()` without error message.

- Remove whitespace `trim()`.

- Standardized letter case `strtolower()` or `strtoupper()`.

- Return the string value of different variables `strval()`.

- Prevent illegal characters `preg_replace()`.

- Escape `htmlentities()`.

- Corrections `str_replace()`.

- Special characters `normalize` class.

### Validation Methods

- Using standard Laravel validation rules and custom Summer CMS rule sets.

### Notes

Remove all **non-numeric** characters. `\D` means "anything that isn't a digit".

```php
preg_replace('/\D/', '', $a);
```

### IANA HTTP Headers

Link: https://www.iana.org/assignments/message-headers/message-headers.xml
