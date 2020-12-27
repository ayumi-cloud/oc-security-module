## Summer CMS Firewall Escaping API

### Input Validation and Data Sanitization

Below details the level of escaping carried out by the firewall in certain locations, please note this list will continue to grow over time!

Value | Server Protection | Client-Side Protection | Long-task Limits | Letter case | Allowed/Blocked | Notes
---|---|---|---|---|---|---
Request Method HTTP Header | ✔️ | ✔️ | 25 | Uppercase | Both | Server blocks bad verbs only.
X-HTTP-Method | ✔️ | ❌ | n/a | n/a | Blocked | Blocked by default, can turn on in settings.
X-HTTP-Method-Override | ✔️ | ❌ | n/a | n/a | Blocked | Blocked by default, can turn on in settings.
X-Method-Override | ✔️ | ❌ | n/a | n/a | Blocked | Blocked by default, can turn on in settings.
x | x | x | x | x | x | x
