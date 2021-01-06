## Common Plugin Security Issues

Below are three of the most common security issues with plugins in the marketplace.

### 1. XSS attack using `trans`

You should always escape user provided input, even in cases where it might not be obvious. For example, the `trans()` function used in PHP backend views doesn't escape it's output by default, meaning that doing something like the following could lead to an XSS attack:

```php
trans('acme.example::lang.something', ['value' => $userProvidedInput])
```

Whenever you are outputting user provided input, you should ensure that it is properly escaped. The previous example would be make secure by wrapping it in the `e()` function:

```php
e(trans('acme.example::lang.something', ''value' => $userProvidedInput]);
```

This also applies to the `| trans()` filter available in Twig, although the method of escaping it differs slightly:

```twig
{{ 'acme.example::lang.something' | trans({'value': record.userProvidedInput}) | escape }}
```

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

Or escaping through `twig` using `HtmlPurifier` or `html_clean()`.

Never trust the data going in and out of the database, `sanitize` everything coming out of it and `validate` everything going into it.

Many plugins are grabbing data from the database and not filtering the data!

This creates two major security issues, either hackers inject bad code through the database or users using the plugin adds bad code through backend forms etc.

Either way, this can screw up your plugin code and cause errors which can be taken advantage of and allow attackers to do bad things!

Never trust the data coming in or out of the database and filter all data going through the database in **both** directions!

Likewise with `config` files. A hacker can easily inject and change the code in a config file, so raw data being grabbed from a config file should always be filtered as well.

### 3. Regular expression Denial of Service - ReDoS attack

Take the following example:

```php
preg_match('/^(a+)+$/',$input, $output);
```

Above: Allows a ReDoS attack.

Many times the solution would be to clean your regex and also use `preg_replace` instead to clean the `$input` beforehand.

For more info: [Regular expression Denial of Service - ReDoS](https://owasp.org/www-community/attacks/Regular_expression_Denial_of_Service_-_ReDoS)
