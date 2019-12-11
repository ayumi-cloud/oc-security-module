### Laravel API

https://laravel.com/api/5.5/search.html

### Request

https://octobercms.com/docs/services/request-input#request-information

### Icons

https://octobercms.com/docs/ui/icon

### Filter Lists

https://octobercms.com/docs/backend/lists#list-filters

### PHP Operators

https://www.w3schools.com/php/php_operators.asp

### Crawler Test Tool

https://crawlerdetect.io

### ASN List

http://www.bgplookingglass.com/list-of-autonomous-system-numbers

### Validator (AMP-HTML)

https://github.com/Mixpo/amphtml/blob/master/validator/validator-main.protoascii

### Web Scrapers (Bad Bots)

https://www.distilnetworks.com/bot-directory/category/web-scraper/

### Github Emojis

https://gist.github.com/rxaviers/7360908

### October & Laravel Aliases

Below is a list of aliases October CMS uses:

#### Laravel aliases

```php
    'App'       => Illuminate\Support\Facades\App::class,
    'Artisan'   => Illuminate\Support\Facades\Artisan::class,
    'Bus'       => Illuminate\Support\Facades\Bus::class,
    'Cache'     => Illuminate\Support\Facades\Cache::class,
    'Cookie'    => Illuminate\Support\Facades\Cookie::class,
    'Crypt'     => Illuminate\Support\Facades\Crypt::class,
    'Db'        => Illuminate\Support\Facades\DB::class, // Preferred
    'DB'        => Illuminate\Support\Facades\DB::class,
    'Eloquent'  => Illuminate\Database\Eloquent\Model::class,
    'Event'     => Illuminate\Support\Facades\Event::class,
    'Hash'      => Illuminate\Support\Facades\Hash::class,
    'Input'     => Illuminate\Support\Facades\Input::class,
    'Lang'      => Illuminate\Support\Facades\Lang::class,
    'Log'       => Illuminate\Support\Facades\Log::class,
    'Mail'      => Illuminate\Support\Facades\Mail::class,
    'Queue'     => Illuminate\Support\Facades\Queue::class,
    'Redirect'  => Illuminate\Support\Facades\Redirect::class,
    'Redis'     => Illuminate\Support\Facades\Redis::class,
    'Request'   => Illuminate\Support\Facades\Request::class,
    'Response'  => Illuminate\Support\Facades\Response::class,
    'Route'     => Illuminate\Support\Facades\Route::class,
    'Session'   => Illuminate\Support\Facades\Session::class,
    'Storage'   => Illuminate\Support\Facades\Storage::class,
    'Url'       => Illuminate\Support\Facades\URL::class, // Preferred
    'URL'       => Illuminate\Support\Facades\URL::class,
    'Validator' => Illuminate\Support\Facades\Validator::class,
    'View'      => Illuminate\Support\Facades\View::class,
```
    
#### October CMS aliases

```php
    'Model'           => October\Rain\Database\Model::class,
    'Block'           => October\Rain\Support\Facades\Block::class,
    'File'            => October\Rain\Support\Facades\File::class,
    'Config'          => October\Rain\Support\Facades\Config::class,
    'Seeder'          => October\Rain\Database\Updates\Seeder::class,
    'Flash'           => October\Rain\Support\Facades\Flash::class,
    'Form'            => October\Rain\Support\Facades\Form::class,
    'Html'            => October\Rain\Support\Facades\Html::class,
    'Http'            => October\Rain\Support\Facades\Http::class,
    'Str'             => October\Rain\Support\Facades\Str::class,
    'Markdown'        => October\Rain\Support\Facades\Markdown::class,
    'Yaml'            => October\Rain\Support\Facades\Yaml::class,
    'Ini'             => October\Rain\Support\Facades\Ini::class,
    'Twig'            => October\Rain\Support\Facades\Twig::class,
    'DbDongle'        => October\Rain\Support\Facades\DbDongle::class,
    'Schema'          => October\Rain\Support\Facades\Schema::class,
    'Cms'             => Cms\Facades\Cms::class,
    'Backend'         => Backend\Facades\Backend::class,
    'BackendMenu'     => Backend\Facades\BackendMenu::class,
    'BackendAuth'     => Backend\Facades\BackendAuth::class,
    'AjaxException'        => October\Rain\Exception\AjaxException::class,
    'SystemException'      => October\Rain\Exception\SystemException::class,
    'ApplicationException' => October\Rain\Exception\ApplicationException::class,
    'ValidationException'  => October\Rain\Exception\ValidationException::class,
```

For current up to date list see here: https://github.com/octobercms/october/blob/master/modules/system/aliases.php

### Lists backend

The native `$value`, the `$column` definition object and the model `$record` object.
