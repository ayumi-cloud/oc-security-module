## Validating multiple languages

Below is an example:

### Backend Contact form (YAML)

```yaml
fname:
    label: acme.example::lang.contactForm.firstName
    type: text
    span: left
lname:
    label: acme.example::lang.contactForm.lastName
    type: text
    span: right
```

### Validation models (Laravel)

```php
public $rules = [
    'fname' => [ 'nullable', 'regex:/(^[a-zA-Z\s\']+$)+/', 'max:100' ],
    'lname' => [ 'nullable', 'regex:/(^[a-zA-Z\s\']+$)+/', 'max:100' ],
];
```

In the above example let's say we want to validation an `english` first and last name.

It also links to the lang file: `lang/en/lang.php`

Now let's say I want to create a chinese lang file as well, e.g. `lang/cn/lang.php`

I don't want to Validate the contact form using a `Latin` character set, instead now I want to validate it using a `Chinese` character set.

### If Statement (PHP)

```php
$lang = App::locale();

// English
if ($lang === 'en') {
    public $rules = [
        'fname' => [ 'nullable', 'regex:/(^[a-zA-Z\s\']+$)+/u', 'max:100' ],
        'lname' => [ 'nullable', 'regex:/(^[a-zA-Z\s\']+$)+/u', 'max:100' ],
    ];

// Chinese
} elseif ($lang === 'cn') {
    public $rules = [
        'fname' => [ 'nullable', 'regex:/(^[\p{Han}+\s]+$)+/u', 'max:100' ],
        'lname' => [ 'nullable', 'regex:/(^[\p{Han}+\s]+$)+/u', 'max:100' ],
    ];
}
```
