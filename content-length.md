## Laravel content-length header

As an optimization process from server side responses, we use gzip compression which compresses the response before sending it to the client. Compressing responses as a result significantly reduces the size of data being transmitted.

As you can imagine any type of compression requires certain amount of memory and processing power. Considering the gzip compression happens at runtime, it consumes considerable processing resources. Which is why it is important to configure the compression for the responses which really need it.

### Configuring compression

An application web server has different types of responses, some might be extremely small having size of 10byte or some with very large data having size more than 1MB. It is fairly good to consider that the 10byte response does not need compression as it's already very very tiny in size. If your server is attempting to compresses such smal responses as well, its consuming unnccessary resources in response compression.

To avoid this, we use `gzip directives` to notify gzip compression mechanism that only compress the responses which have size greater then the defined directive value. We use `gzip_min_length` directive for it which takes numeric value representing `bytes`.

```
gzip_min_length 1000;
```

As per above gzip configuration, any response having size less than 1000 bytes will be transmitted to the client as it is without any compression. Any response having size greater than 1000 bytes will be compressed first at runtime and then transmitted to the client.

Note: The value of `1000` bytes is taken just as an example for this article. Please change it as per your requirements.

### Now here is the catch

Even if you have the `gzip_min_length` directive value set, it under the hood relies on `Content-Length` header present in response.

The gzip module during the compression determines the length only from the "Content-Length" response header field

So, if your app server is NOT having `Content-Length` header, `gzip_min_length` directive is not going to determine the response size and hence it will default to all responses being compressed before their transmittion to client.

This is pretty bad for a server which is serving lot of requests as nginx gzip is utilizing unneccessary resources for compression of responses very tiny in size.

### The solution

The solution is fairly simple, we need to add `Content-Length` in each of our response so that gzip can determine the response size and decide if compression is to be done or not.

As we are focusing on laravel in this article, we can add content length using a simple middleware. Let's call it `ContentLegthMiddleware`.

```php
<?php

namespace App\Http\Middleware;

use Closure;

class ContentLegthMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $response = $next($request);

        // Get response length
        $responseLength = strlen($response->getOriginalContent());

        // Add the header
        $response->header('Content-Length', $responseLength);

        // Return the response
        return $response;
    }
}
```

Last but not the least, you need to add the middleware in `app/Http/Kernel.php`.

Now you will be able to see `Content-Length: xxx` in your dev tools under response headers.

### Benchmarking

It is important to see if these changes have made any difference. I used Siege load testing framework to test my server before and after the above changes were done. I could definitely see quicker response times and less CPU utilization. Please note that, this will be significantly seen on a high workload. If you have couple of requests on your server, the difference in performance will be negligible.

### Quick note on gzip_comp_level

The gzip compression as another directive called `gzip_comp_level` which receives values from 1 to 9, where compression increases from 1 to 9. This is another vital directive. If you have comression level, it is going to consume more resources for compressing the response. For most servers value of 2 or 3 is enough as difference between compression from level to level is not significant.
