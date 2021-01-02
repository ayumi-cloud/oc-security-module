## Common Plugin Security Issues

Below are three of the most common security issues with plugins in the marketplace.

### 1. XSS attack using `trans`

Take the following example:

```php
trans('acme.example::lang.something.example');
```

Above: This would allow an XSS attack as it's **not** escaped.

```php
e(trans('acme.example::lang.something.example'));
```

Above: This would block an XSS attack, you need to wrap `|trans` with `e()` and escape it.

For more info see here: https://github.com/octobercms/october/issues/4452

### 2. XSS attack direct from the database

Take the following example:

```php
Example::value('something');
```

Then gets displayed through `twig` or an `echo` and is also not **escaped**,  allowing an XSS attack.

The solution is to `sanitize` the data from the database, for example:

```php
htmlentities(Example::value('something'), ENT_QUOTES, 'UTF-8', true);
```

Or escaping through `twig` using [HtmlPurifier](https://octobercms.com/plugin/vdlp-htmlpurifier) or [html_clean()](https://octobercms.com/docs/markup/function-html).

### 3. Regular expression Denial of Service - ReDoS attack

Take the following example:

```php
preg_match('/^(a+)+$/',$input, $output);
```

Above: Allows a ReDoS attack.

Many times the solution would be to clean your regex and also use `preg_replace` instead to clean the `$input` beforehand.

For more info: [Regular expression Denial of Service - ReDoS](https://owasp.org/www-community/attacks/Regular_expression_Denial_of_Service_-_ReDoS)
