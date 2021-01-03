## Summer CMS Firewall Escaping API

### Input Validation and Data Sanitization

Below are details for the level of escaping carried out by the firewall in certain specific requests, please note this list will continue to grow over time and not intended to be a complete list!

Value | Server Protection | Client-Side Protection | Long-task Limits | Letter case | Allowed/Blocked | Notes
---|---|---|---|---|---|---
Request Method HTTP Header | ✔️ | ✔️ | 25 | Uppercase | Both | Server blocks bad verbs only.
X-HTTP-Method | ✔️ | ❌ | n/a | n/a | Blocked | Blocked by default, can turn on in settings.
X-HTTP-Method-Override | ✔️ | ❌ | n/a | n/a | Blocked | Blocked by default, can turn on in settings.
X-Method-Override | ✔️ | ❌ | n/a | n/a | Blocked | Blocked by default, can turn on in settings.
x | x | x | x | x | x | x





### Sanitization Methods

- Add default using `??`.

- Limit long task `longStrings`.

- Remove whitespace `trim()`.

- Standardized letter case `strtolower()` or `strtoupper()`.

- Prevent illegal characters `preg_replace`.

- Escape `htmlentities`.

- Corrections `str_replace`.

- Special characters `normalize`.

### Validation Methods

- Using standard Laravel validation rules and custom Summer CMS rule sets.
