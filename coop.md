# `Cross-Origin-Opener-Policy` response header (also known as COOP)

## Introduction

This is a semi-formal definition of the `Cross-Origin-Opener-Policy` response header, to be merged into the HTML Standard pending various refactoring efforts. (See also [the open issues](https://github.com/whatwg/html/labels/topic%3A%20cross-origin-opener-policy).)

COOP can be used to prevent a site from opening a site with COOP in an auxiliary browsing context. The site attempting to do so will hold a reference to a closed browsing context and the site using COOP will be in a fresh top-level browsing context with its own browsing context group. A site using COOP can open auxiliary browsing contexts itself, if they are same-origin and also use COOP, or if it uses the `same-origin-allow-popups` COOP policy.

## Goal

Integrate this into the HTML Standard.

## Model

This should only work over a [secure context](https://w3c.github.io/webappsec-secure-contexts/).

To ensure robust isolation the processing model also needs to account for the [`Cross-Origin-Embedder-Policy` response header (also known as COEP)](https://mikewest.github.io/corpp/) to some extent. This document only defines how it augments COOP.

Document's have an associated **cross-origin opener-policy**, which is "`same-origin + COEP`", "`same-origin`", "`same-origin-allow-popups`", or "`unsafe-none`". It's initially "`unsafe-none`". (XXX: document creation needs to use "obtaining a cross-origin opener-policy".)

Note: "`same-origin + COEP`" is a special value that cannot be directly set, but is the result of setting COOP and COEP for a top-level document at the same time.

about\:blank documents inherit cross-origin opener-policy from their creator's top-level browsing context's active document at the time of creation, if there is a creator and if the creator's origin is same origin with the creator's top-level origin.

<hr>

To **obtain a cross-origin opener-policy** from a response _response_:

1. Let _value_ be the result of getting `Cross-Origin-Opener-Policy` from _response_'s header list.
1. If _value_ is null, then return "`unsafe-none`".
1. Let _decodedValue_ be _value_, isomorphic decoded. (XXX: we should change Fetch so we can merge this into step 1.)
1. If _decodedValue_ is not "`same-origin`" or "`same-origin-allow-popups`", then return "`unsafe-none`".
1. If _decodedValue_ is "`same-origin`", then:
   1. Let _coep_ be the result of obtaining a cross-origin embedder-policy from _response_. (XXX: the integration probably needs some slight adjustments as even if COOP ends up being "`unsafe-none`", we'd still want to respect COEP for non-COOP purposes. If we process COEP before COOP we could pass COEP into this algorithm instead.)
   1. If _coep_ is "`require-corp`", then return "`same-origin + COEP`".
1. Return _decodedValue_.

Note: the `Cross-Origin-Opener-Policy` header part is roughly equivalent to this non-normative ABNF:
```abnf
Cross-Origin-Opener-Policy = %s"same-origin" / %s"same-origin-allow-popups" / %s"unsafe-none"; case-sensitive
```

To **match cross-origin opener-policies**, given _A_, _originA_, _B_, and _originB_:

1. If _A_ is "`unsafe-none`" and _B_ is "`unsafe-none`", then return true.
1. If _A_ or _B_ is "`unsafe-none`", then return false.
1. If _A_ is _B_ and _originA_ is same origin with _originB_, then return true.
1. Return false.

### Changes to navigation

Then, when navigating from a document _doc_ in a top-level browsing context _bc_ to a response _response_:

1. Let _currentCOOP_ be _doc_'s cross-origin opener-policy.
1. Let _currentOrigin_ be _doc_'s origin.
1. Let _potentialCOOP_ be the result of obtaining a cross-origin opener-policy from _response_.
1. Let _potentialOrigin_ be _response_'s URL's origin. TODO: this should take CSP into account as that can make it an opaque origin (and future policies that can do similar things).
1. If _bc_'s popup sandboxing flag set is not empty and _potentialCOOP_ is not "`unsafe-none`", then navigate _bc_ to a network error and abort these steps.
   
   Note: This results in a network error as one cannot simultaneously provide a clean slate to a response using cross-origin opener policy and sandbox the result of navigating to that response.
1. If the result of matching _currentCOOP_, _currentOrigin_, _potentialCOOP_, and _potentialOrigin_ is false and one of the following is false

   * _doc_ is the initial about:blank document
   * _currentCOOP_ is "`same-origin-allow-popups`"
   * _potentialCOOP_ is "`unsafe-none`"

   then:

   1. Let _bcg_ be the result of creating a new browsing context group.
   1. If _potentialCOOP_ is "`same-origin + COEP`", then set _bcg_'s cross-origin isolated to true.
   1. Move loading of _response_ to a new top-level browsing context _newTLBC_ in _bcg_.
   1. If _bc_'s popup sandboxing flag set is not empty, then:
      1. Assert: _potentialCOOP_ is "`unsafe-none`".
      1. Set _newTLBC_'s popup sandboxing flag set to _bc_'s popup sandboxing flag set.
   1. Discard _bc_. \[Note: this does not close _bc_'s browsing context group, except if it was the sole top-level browsing context in which case it could be collected.]
1. Otherwise, \[do the normal thing].

Note: the intent is that this runs for each response, including redirects. User agents are expected to optimize away the many browsing context groups that would be created through a redirect chain, by keeping track as to whether it is needed at all.

### Changes to choosing a browsing context

Then, a change is needed to "If the user agent has been configured such that in this instance it will create a new browsing context", which is part of the "The rules for choosing a browsing context" algorithm. In particular before the current algorithm runs:

1. If _current_'s top-level browsing context's active document's cross-origin opener-policy is "`same-origin`" or "`same-origin + COEP`", then:
   1. Let _currentDoc_ be _current_'s active document.
   1. If _currentDoc_'s origin is not same origin with _currentDoc_'s top-level origin, then set _noopener_ to true and _name_ to "`_blank`".

## Additional implications of "`same-origin + COEP`"

* It impacts `postMessage()` and causes `window.crossOriginIsolated` to return true as detailed in [HTML PR #4734](https://github.com/whatwg/html/pull/4734).
* As described in that same PR and [proposed in issue #5122](https://github.com/whatwg/html/issues/5122) it also impacts keying of agent clusters in the newly created browsing context (using origin rather than site as the key) as well as no-opping the `document.domain` setter. This still needs some compatibility analysis.
