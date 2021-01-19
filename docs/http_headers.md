## HTTP Headers

This contains a rough guide to many http headers and x-headers.

### User-Agent

The User-Agent header contains the browser UA string information, divided up into tokens. To start with, here is an example of an User-Agent header:

```
User-Agent: Opera/9.80 (Android; Opera Mini/8.0.1807/36.1609; U; en) Presto/2.12.423 Version/12.16
```

This is broken up into tokens, as follows:

```
User-Agent: Opera/9.80 ($PLATFORM_NAME$; $PRODUCT_NAME$/$CLIENT_VERSION$/ $SERVER_VERSION$;U; $LOCALE$) $PRESTO_VERSION$ $EQUIV_DESKTOP_VERSION$
```

### X-OperaMini-Features

This header contains a comma-separated list of features supported by the phone. This can be used for capability detection before serving content.

#### Format

```
X-OperaMini-Features: <feature> *[ , <feature> ]
```

#### Example

```
X-OperaMini-Features: advanced, camera, folding, secure
```

### X-OperaMini-Phone-UA

This header contains the user-agent string of the client that downloaded the .jad file (if available - otherwise it contains the user-agent reported to the client by the device.) If this information is not known to us at all, the value is often reported as ?.

Note that this header is only present if we have some reasonable evidence that our data is true.

#### Format

```
X-OperaMini-Phone-UA: <user-agent>
```

#### Example

```
X-OperaMini-Phone-UA: SonyEricssonK750i/R1AA Browser/SEMC-Browser/4.2 Profile/MIDP-2.0 Configuration/CLDC-1.1
```

#### Phasing out X-OperaMini-Phone-UA

Will switch over to using the `Device-Stock-UA` header.

### Device-Stock-UA


....


### X-OperaMini-Phone

This contains the manufacturer and model name/number of the device, provided the device makes this information available to Opera Mini. If this information is not known to us, the value is often reported as ?.

Note that this header is only present if we have some reasonable evidence that our data is true.

#### Format

```
X-OperaMini-Phone: <manufacturer> # <model>
```

#### Example

```
X-OperaMini-Phone: SonyEricsson # K750i
```

### X-Forwarded-For

This contains a comma-separated list of the proxy servers the request has passed on its way from the device to the Mini proxy. The first item in the list that is not an internal IP will always be the IP address that connects to the Mini proxy, hence it is the most reliable source of information about the origin of the request, and is suitable for geolocation etc.

#### Format

```
X-Forwarded-For: <IP address> *[ , <IP address> ]
```

#### Example

```
X-Forwarded-For: 127.0.0.1, 192.168.0.100, 195.189.143.147, 130.236.236.80
```

### Accept-Language

Accept-Language specifies what language(s) the browser would prefer the response to be written in. You can specify multiple languages in a comma-delimited list using standard language tags, and each language can be given a quality value that indicates the user’s ability in those languages (this value defaults to 1 if not specified, which is the highest - the values range from 0 to 1.) For example, the actual example given at the bottom of this section means “I’d prefer to be sent old (bokmal) or new Norwegian, but I am also pretty good at English… I’ll also try French if you’ve not got the other two languages available, but I’m not very good at that.” If Accept-Language is not specified, then the server should assume that all languages are acceptable to the user.

#### Format

```
Accept-Language: <language tag> [;q=<quality value>], …
```

#### Example

```
Accept-Language: no-bok, no-nyn, en;q=0.8, fr;q=0.4
```

