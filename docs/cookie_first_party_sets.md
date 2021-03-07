# Cookie First-Party Sets

This document proposes a new web platform mechanism to declare a collection of related domains as
being in a First-Party Set.

A [Work Item](https://privacycg.github.io/charter.html#work-items)
of the [Privacy Community Group](https://privacycg.github.io/).

## Participate
- https://github.com/privacycg/first-party-sets/issues

# Table of Contents

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
- [Introduction](#introduction)
- [Goals](#goals)
- [Non-goals](#non-goals)
- [Declaring a First Party Set](#declaring-a-first-party-set)
- [Discovering First Party Sets](#discovering-first-party-sets)
- [Applications](#applications)
- [Design details](#design-details)
   - [UA Policy](#ua-policy)
      - [Defining acceptable sets](#defining-acceptable-sets)
      - [Static lists](#static-lists)
      - [Signed assertions](#signed-assertions)
      - [Open questions](#open-questions)
      - [Administrative controls](#administrative-controls)
   - [Cross-site tracking vectors](#cross-site-tracking-vectors)
   - [Service workers](#service-workers)
   - [UI Treatment](#ui-treatment)
- [Alternative designs](#alternative-designs)
   - [Origins instead of registrable domains](#origins-instead-of-registrable-domains)
- [Prior Art](#prior-art)
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

# Introduction

Browsers have proposed a variety of tracking policies and privacy models
([Chromium](https://github.com/michaelkleber/privacy-model/blob/master/README.md),
[Edge](https://blogs.windows.com/msedgedev/2019/06/27/tracking-prevention-microsoft-edge-preview/),
[Mozilla](https://wiki.mozilla.org/Security/Anti_tracking_policy),
[WebKit](https://webkit.org/tracking-prevention-policy/)) which scope access to user identity to
some notion of first-party. In defining this scope, we must balance two goals: the scope should be
small enough to meet the user's privacy expectations, yet large enough to provide the user's desired
functionality on the site they are interacting with.

One natural scope is the domain name in the top-level origin. However, the website the user is
interacting with may be deployed across multiple domain names. For example, `https://google.com`,
`https://google.co.uk`, and `https://youtube.com` are owned by the same entity, as are `https://apple.com`
and `https://icloud.com`, or `https://amazon.com` and `https://amazon.de`.

We may wish to allow user identity to span related origins, where consistent with privacy requirements. For
example, Firefox ships an [entity list](https://github.com/mozilla-services/shavar-prod-lists#entity-list)
that defines lists of domains belonging to the same organization. This explainer
discusses a mechanism to allow organizations to each declare their own list of domains, which is 
then accepted by a browser if the set conforms to its policy.


# Goals

-  Allow related domain names to declare themselves as the same first-party.
-  Define a framework for browser policy on which declared names will be treated as the same site 
   in privacy mechanisms.


# Non-goals

-  Third-party sign-in between unrelated sites.
-  Information exchange between unrelated sites for ad targeting or conversion measurement.
-  Other use cases which involve unrelated sites.

(Some of these use cases are covered by [other
explainers](https://www.chromium.org/Home/chromium-privacy/privacy-sandbox) from the Privacy
Sandbox.)

# Declaring a First Party Set

A first-party set is identified by one _owner_ registered domain and a list of _secondary_
registered domains. (See [alternative designs](#alternative-designs) for a discussion of origins
vs registered domains.)

An origin is in the first-party set if:

-  Its scheme is https; and
-  Its registered domain is either the owner or is one of the secondary domains.

The browser will consider domains to be members of a set if the domains opt in and the set meets 
[UA policy](#ua-policy), to incorporate both [user and site needs](https://www.w3.org/TR/html-design-principles/#priority-of-constituencies). Domains opt in by hosting a JSON
manifest at `https://<domain>/.well-known/first-party-set`. The secondary domains point to the 
owning domain while the owning domain lists the members of the set, a version number to trigger 
updates, and a set of signed assertions to inform UA policy ([details below](#ua-policy)).

Suppose `a.example`, `b.example`, and `c.example` wish to form a first-party set, owned by `a.example`. The
sites would then serve the following resources:

```
https://a.example/.well-known/first-party-set
{
  "owner": "a.example",
  "version": 1,
  "members": ["b.example", "c.example"],
  "assertions": { 
    "chrome-fps-v1" : "<base64 contents...>",
    "firefox-fps-v1" : "<base64 contents...>",
    "safari-fps-v1": "<base64 contents...>"
  }
}

https://b.example/.well-known/first-party-set
{ "owner": "a.example" }

https://c.example/.well-known/first-party-set
{ "owner": "a.example" }
```

The browser then imposes additional constraints on the owner's manifest:

-  Entries in `members` that are not registrable domains are ignored.
-  Only entries in `members` that meet [UA policy](#ua-policy) will be accepted. The others will be ignored.
   If the owner is not covered by UA policy, the entire set is rejected.

# Discovering First Party Sets

By default, every registrable domain is implicitly owned by itself. The browser discovers
first-party sets as it makes network requests and stores the first-party set owner for each domain.
On a top-level navigation, websites may send a `Sec-First-Party-Set` response header to inform the
browser of its first-party set owner. For example `https://b.example/some/page` may send the following
header:

```
  Sec-First-Party-Set: owner="a.example", minVersion=1
```

If this header does not match the browser's current information for `b.example` (either the owner does
not match, or its saved first-party set manifest is too old), the browser pauses navigation to fetch
the two manifest resources. Here, it would fetch `https://a.example/.well-known/first-party-set` and
`https://b.example/.well-known/first-party-set`.

These requests must be uncredentialed and with suitably partitioned network caches to not leak
cross-site information. In particular, the fetch must not share caches with browsing activity under
`a.example`. See also discussion on [cross-site tracking vectors](#cross-site-tracking-vectors).

If the manifests show the domain is in the set, the browser records `a.example` as the owner of
`b.example` (but not `c.example`) in its first-party-set storage. It evicts all domains currently
recorded as owned by `a.example` that no longer match the new manifest. Then it clears all state for
domains whose owners changed, including reloading all active documents. This should behave like
[`Clear-Site-Data: *`](https://www.w3.org/TR/clear-site-data/). This is needed to unlink any site
identities that should no longer be linked. Note this also means that execution contexts (documents,
workers, etc.) are scoped to a particular first-party set throughout their lifetime. If the
first-party owner changes, existing ones are destroyed.

The browser then retries the request (state has since been cleared) and completes navigation. As
retrying POSTs is undesirable, we should ignore the `Sec-First-Party-Set` header directives on POST
navigations. Sites that require a first-party set to be picked up on POST navigations should perform
a redirect (as is already common), and have the `Sec-First-Party-Set` directive apply on the
redirect.

Subresource requests and subframe navigations are simpler as they cannot introduce a new first-party
context. If the request matches the first-party URL's owner's manifest but is not currently recorded
as being in that first-party set, the browser validates membership as above before making the
request. Any Sec-First-Party-Set headers are ignored and, in particular, the browser should never
read or write state for a first-party set other than the current one. This simpler process also
avoids questions of retrying requests. The minVersion parameter in the header ensures that the
browser's view of the owner's manifest is up-to-date enough for this logic.

# Applications

In support of the various browser privacy models, web platform features can use first-party sets to
determine whether embedded content may or may not access its own state. For instance,
sites may annotate individual cookies to be sent across same-party, cross-domain contexts by using
the proposed [`SameParty` cookie attribute](https://github.com/cfredric/sameparty). It may also be reasonable to 
use first-party sets to partition network caches, in cases where the tighter origin-based isolation
is too expensive.

Web platform features should _not_ use first-party sets to make one origin's state directly accessible
to another origin in the set. First-party sets should only control when embedded content can access its own state.
That is, if `a.example` and `b.example` are in the same first-party set, the same-origin policy
should still prevent `https://a.example` from accessing `https://b.example`'s IndexedDB databases.
However, it may be reasonable to allow a `https://b.example` iframe within `https://a.example` to
access the `https://b.example` databases.

# Design details

## UA Policy

### Defining acceptable sets

We should have some notion of what sets are acceptable or unacceptable. For instance, a set
containing the entire web, or a collection of completely unrelated sites, seems clearly
unacceptable. Conversely, a set containing `https://acme-corp-landing-page.example` and
`https://acme-corp-online-store.example` seems reasonable. There is a wide spectrum between these
two scenarios. We should define where to draw the line.

Browsers implementing First-Party Sets will specify UA policy for which domains may be in the same set. While 
not required, it is desirable to have some consistency across UA policies. For a set of guiding principles in 
defining UA policy, we can look to how the various browser proposals describe first parties (emphasis
added):

-  [A Potential Privacy Model for the Web (Chromium Privacy Sandbox)](https://github.com/michaelkleber/privacy-model/blob/master/README.md):
   "The notion of "First Party" may expand beyond eTLD+1, e.g. as proposed in First Party Sets. It
   is _reasonable for the browser to relax its identity-sharing controls_ within that expanded
   notion, provided that the resulting identity scope is _not too large_ and _can be understood by
   the user_."
-  [Edge Tracking Protection Preview](https://blogs.windows.com/msedgedev/2019/06/27/tracking-prevention-microsoft-edge-preview/):
   "Not all organizations do business on the internet using just one domain name. In order to help
   keep sites working smoothly, we group domains _owned and operated by the same organization_
   together."
-  [Mozilla Anti-Tracking Policy](https://wiki.mozilla.org/Security/Anti_tracking_policy): "A
   first party is a resource or a set of resources on the web _operated by the same organization_,
   which is both _easily discoverable by the user_ and _with which the user intends to interact_."
-  [WebKit Tracking Prevention Policy](https://webkit.org/tracking-prevention-policy/): "A first
   party is a website that a user is intentionally and knowingly visiting, as displayed by the URL
   field of the browser, and the set of resources on the web _operated by the same organization_."
   and, under "Unintended Impact", "Single sign-on to multiple websites _controlled by the same
   organization_."

We expect the UA policies to evolve over time as use cases and abuse scenarios come up. For instance, 
otherwise unrelated sites forming a consortium in order to expand the scope of their site identities 
would be considered abuse. 

Given the UA policy, policy decisions must be delivered to the user’s browser. 
This can use either static lists or signed assertions. Note first-party set membership requires being 
listed in the manifest in addition to meeting UA policy. This allows sites to quickly remove domains from 
their first-party set.

### Static lists

The browser vendor could maintain a list of domains which meet its UA policy, and ship it in the browser. 
This is analogous to the list of [domains owned by the same entity](https://github.com/disconnectme/disconnect-tracking-protection/blob/master/entities.json) used by Edge and Firefox to control 
cross-site tracking mitigations.

A browser using such a list would then intersect first-party set manifests with the list. It would ignore 
the assertions field in the manifest. Note fetching the manifest is still necessary to ensure the site opts 
into being a set. This avoids problems if, say, a domain was transferred to another entity and the static list 
is out of date.

Static lists are easy to reason about and easy for others to inspect. At the same time, they can develop 
deployment and scalability issues. Changes to the list must be pushed to each user's browser via some update 
mechanism. This complicates sites' ability to deploy new related domains, particularly in markets where 
network connectivity limits update frequency. They also scale poorly if the list gets too large.

### Signed assertions

Alternatively, the browser vendor, or some entities it designates, can sign assertions for domains which meet 
UA policy, using some private key. A signed assertion has the same meaning as membership in a static list: 
these domains meet the signer’s policy. The browser would trust the signers’ public key and, as above, only 
accept domains covered by suitable assertions.

Assertions are delivered in the `assertions` field, which contains a dictionary mapping from signer name to signed 
assertion. Browsers ignore unused assertions. This format allows sites to serve assertions from multiple signers, 
so they can handle policy variations more smoothly. In particular, we expect policies to evolve over time, so 
browser vendors may wish to run their own signers. Note these assertions solve a different problem from the Web 
PKI and are delivered differently. However, many of the lessons are analogous.

As with a static list, signers maintain a full list of currently checked domains. They should publish this list 
at a well-known location, such as `https://fps-signer.example/first-party-sets.json`. Although browsers will not 
consume the list directly, this allows others to audit the list. The signer may wish to incorporate a 
[Certificate-Transparency-like](https://tools.ietf.org/html/rfc6962) mechanism for stronger guarantees.

The signer then regularly produces fresh signed assertions for the current list state. For extensibility, the 
exact format and contents of this assertion are signer-specific (browsers completely ignore unknown signers, 
so there is no need for a common format). However, there should be a recommended format to avoid common 
mistakes. Each signed assertion must contain:

- The domains that have been checked against the signer’s policy
- An expiration time for the signature
- A signature over the above, made by the signer’s private key

Assertion lifetimes should be kept short, say two weeks. This reduces the lifetime of any mistakes. The browser 
vendor may also maintain a blocklist of revoked assertions to react more quickly, but the reduced lifetime reduces 
the size of such a list.

To avoid operational challenges for sites, the signer makes the latest assertions available at a well-known 
location, such as `https://fps-signer.example/assertions/<owner-domain>`. We will provide automated tooling to 
refresh the manifest from these assertions, and sites with more specialized needs can build their own. To support
such automation, the URL patterns must be standard across signers.

Note any duplicate domains in the assertions and members attribute should compress well with gzip.

### Open questions

- Should the recommended format include intermediate certificates? X.509 certificates are typically issued 
  from a shorter-lived intermediate certificate signed by the root. This allows keeping the more sensitive 
  root key offline.
- Should the recommended format include extensions? Too many extension points, particularly around cryptographic 
  algorithms, can introduce complexity and security risks.
- Should the assertions treat the owner as distinct from the member domains, or is a flat list sufficient? That 
  is, is the signer’s policy likely to treat the owner distinct from other members?

Extensibility by signer names means formats can always be extended by updating browsers to expect new signers. 
But we must ensure that this does not increase operational burden on sites by designing the tooling correctly. 
For instance, the `chrome-fps-v1` and `chrome-fps-v2` signers could share an assertion URL, which provides a set of 
assertions. The tooling would then automatically include each in the manifest.

### Administrative controls

For enterprise usages, browsers typically offer administrators options to control web platform behavior. UA policy 
is unlikely to cover private domains, so browsers might expose administrative options for locally-defined 
first-party sets.


## Cross-site tracking vectors

This design requires the browser remember state about first-party sets, and use that state to
influence site behavior. We must ensure this state does not introduce a cross-site tracking vector
for two sites _not_ in the same first-party set. For instance, a site may be able to somehow encode
a user identifier into the first-party set and have that identifier be readable in another site.
Additionally, first-party sets are discovered and validated on-demand, so this could leak
information about which sites have been visited.

Our primary mitigation for these attacks is to treat first-party sets as first-party-only state. We
heavily restrict how first-party set state interacts with subresources. Thus we never query or write
to first-party set information for any set other than the current one. Even if first-party set
membership were personalized, that membership should only influence the set itself.

We can further mitigate personalized first-party sets, as well as information leaks during
validation, by fetching manifests without credentials and from appropriate network partitions
(double-keyed HTTP cache, etc.).

Finally, first-party set state must be cleared whenever other state for some first-party is cleared,
such as if the user cleared cookies from the browser UI.

Some additional scenarios to keep in mind:

-  The decision to validate a first-party set must not be based on not-yet-readable data,
   otherwise side channel attacks are feasible. For instance, we cannot optimize the subresource
   logic to only validate sets if a `SameParty` cookie exists.
-  When validating a first-party set from a top-level navigation, it is important to fetch _both_
   manifests unconditionally, rather than use the cached version of the owner manifest. Otherwise
   one site can learn if the user has visited the other by claiming to be in a first-party set and
   measuring how long the browser took to reject it.
-  If two first-party sets jointly own a set of "throwaway" domains (so state clearing does not
   matter), they can communicate a user identifier in which throwaway domains one set grabs from
   the other. This can be prevented if UA policy includes each domain in at most one entity. 
   However note that, immediately after a domain changes ownership, policies using signed assertions 
   may briefly accept either of two entities while the old assertions expire. The browser can push a 
   revocation list to clear old assertions faster. Mitigating personalized sets also partially 
   addresses this attack (if not personalized, the sites must coordinate via a global signal like 
   time).


## Service workers

Service workers complicate first-party sets. We must consider network requests made from a service
worker, subresource fetches made from a document with a service worker attached, as well as how a
site which uses a service worker may adopt first-party sets.

Changing a domain's first-party owner clears all state, including service worker registrations. This
means service workers, like documents, are scoped to a given first-party set. Network requests from
a service worker then behave like subresources.

If a document has a service worker attached, its subresource fetches go through the service worker.
This does _not_ trigger first-party set logic as this fetch is, at this point, a funny IPC. If the
service worker makes a request in response, the first-party set logic will fire as above.

Finally, if a site already has a service worker, it should still be able to deploy first-party sets.
However that service worker effectively translates navigation fetches into subresource fetches, and
only top-level navigations discover new sets. We resolve this by moving `Sec-Fetch-Party-Set` header
processing to the navigation logic. If the header is present, whether it came from the network
directly or the service worker, we attempt to validate the set. This is fine because the header is
not directly trusted.

## UI Treatment

In order to provide transparency to users regarding the First-Party Set that a web page’s top-level 
domain belongs to, browsers may choose to present UI with information about the First-Party Set owner 
and the members list. One potential location in Chrome is the [Origin/Page Info Bubble](https://www.chromium.org/Home/chromium-security/enamel/goals-for-the-origin-info-bubble) - this 
provides requisite information to discerning users, while avoiding the use of valuable screen 
real-estate or presenting confusing permission prompts. However, browsers are free to choose different
presentation based on their UI patterns, or adjust as informed by user research.

Note that First-Party Sets also gives browsers the opportunity to group per-site controls (such as 
those at `chrome://settings/content/all`) by the “first-party” boundary instead of eTLD+1, which is 
not always the correct site boundary.

# Alternative designs

## Origins instead of registrable domains

A first-party set is a collection of origins, but it is specified by registrable domains, which
carries a dependency on the [public suffix list](https://publicsuffix.org). While this is consistent
with the various proposed privacy models as well as cookie handling, the security boundary on the
web is the origin, not registrable domain.

An alternate design would be to instead specify sets by origins directly. In this model, any https
origin would be a possible first-party set owner, and each origin must individually join a set,
rather than relying on the root as we do here. For continuity with the existing behavior, we would
then define the registrable domain as the default first-party set for each origin. That is, by
default, `https://foo.example.com`, `https://bar.example.com`, and `https://example.com:444` would all be
in a set owned by `https://example.com`. Defining a set explicitly would override this default set.

This would reduce the web's dependency on the public suffix list, which would mitigate [various
problems](https://github.com/sleevi/psl-problems). For instance, a university may allow students to register arbitrary subdomains at
`https://foo.university.example`, but did not place `university.example` on the public suffix list,
either due to compatibility concerns or oversight. With an origin-specified first-party set,
individual origins could then detach themselves from the default set to avoid security problems with
non-origin-based features such as cookies. (Note the
[\_\_Host- cookie prefix](https://tools.ietf.org/html/draft-ietf-httpbis-rfc6265bis-03#section-4.1.3.2)
also addresses this issue.)

This origin-defined approach has additional complications to resolve:

-  There are a handful of features (cookies, document.domain) which are scoped to registrable
   domains, not origins. Those features should not transitively join two different sets. For
   instance, we must account for one set containing `https://foo.bar.example.com` and
   `https://example.com`, but not `https://bar.example.com`. For cookies, we can say that cookies
   remember the set which created them and we match both the Domain attribute and the first-party
   set. Thus if `https://foo.bar.example.com` sets a Domain=example.com cookie, `https://example.com`
   can read it, but not `https://bar.example.com`. Other features would need similar updates.
-  The implicit state should be expressible explicitly, to simplify rollback and deployment,
   which means first-party set manifests must describe patterns of origins, rather than a simple
   bounded list of domains. In particular, we should support subtree patterns.
-  `https://foo.example.com`'s implicit owner is `https://example.com`. If `https://example.com` then
   forms an explicit set which does not include `https://foo.example.com`, we need to change
   `https://foo.example.com`'s implicit state, perhaps to a singleton set.
-  This complex set of patterns and implicit behaviors must be reevaluated against existing
   origins every time a first-party set is updated.
-  Certificate wildcards (which themselves depend on the public suffix list) don't match an
   entire subtree. This conflicts with wanting to express implicit states above.

These complexities are likely solvable while keeping most of this design, should browsers believe
this is worthwhile.

## Motivation

In order to increase privacy on the web, browser vendors are either planning or already shipping restrictions on cross-site tracking, such as [phasing out third-party cookies](https://blog.chromium.org/2020/01/building-more-private-web-path-towards.html). Third-party cookies are currently [defined](https://developer.mozilla.org/en-US/docs/Web/HTTP/Cookies#Tracking_and_privacy) as those associated with a [site](https://html.spec.whatwg.org/multipage/origin.html#sites) that is different from the site of the top-level page. However, modern websites are typically served over multiple domains/sites, many of which are owned by the same organization. For example, websites that host user-uploaded content often choose to host it on a different domain for enhanced security. [First-Party Sets](https://github.com/privacycg/first-party-sets) provides a mechanism to group domains/sites belonging to the same organization as being _same-party_ with each other, and thus defines a _privacy boundary_ for websites.

The `SameParty` cookie attribute provides web developers a means to annotate cookies that are allowed to be set or sent in same-party, cross-site contexts; and hence should not be subject to obsoletion. In addition, `SameParty` cookies are blocked in cross-party, cross-site contexts.

Introducing `SameParty` now, early in the process of phasing out third-party cookies, provides a means for sites to test out the First-Party Set behavior. While third-party cookies are still around today, we want to provide ample opportunities for web developers to test that their sites work with `SameParty` and to migrate their cookies to the new model far in advance of third-party cookies' obsoletion.


### Why support SameSite=Lax and SameSite=None in conjunction with SameParty?

Allowing for both `SameSite=Lax` and `SameSite=None` lets developers decide the fallback behavior of a cookie if `SameParty` is not supported by a user’s browser. This helps smooth out the transition period before `SameParty` is widely supported.

A developer who is more interested in protecting a particular cookie’s content than having it sent may opt for `SameSite=Lax; SameParty` which will fallback to `SameSite=Lax` and protect the cookie from being sent from other sites.

On the other hand, a developer who is more interested in preserving the behavior of their site(s) which need a particular cookie may opt for `SameSite=None; SameParty` which will fallback to `SameSite=None` and allow for the cookie to continue to be sent.


### Why is SameSite=Strict not supported?

First-Party Sets is intended to define a privacy boundary for websites, while continuing to treat [site](https://html.spec.whatwg.org/multipage/origin.html#sites) (and [progressively](https://github.com/mikewest/scheming-cookies), the origin) as the security boundary for cookies. `SameSite=Strict` provides CSRF protections in cross-site contexts that should not be loosened even when the sites in question are same-party.


### Why introduce a new SameParty attribute? Why not treat SameSite=None as cross-site same-party cookies?

`SameSite=None` cookies without the `SameParty` attribute will be treated as cross-site cross-party cookies, which are on the path to obsoletion. In the long-term, browsers may choose to deprecate the `SameSite=None` attribute specification.


## Setting SameParty cookies: Set-Cookie header syntax

The `SameParty` cookie attribute can be applied to a cookie by appending it to the semicolon-delimited list of attributes in a `Set-Cookie` header, such as:

```
Set-Cookie: cookie=tasty; SameSite=Lax; Secure; SameParty
```

The `SameParty` attribute is specified without a value (as are `Secure` and `HttpOnly`). The `Secure` attribute is required in order to use the `SameParty` attribute. **Any cookie specifying `SameParty` without `Secure` will be rejected as invalid. Additionally, any cookie specifying `SameParty` in the presence of `SameSite=Strict` will be rejected as invalid.**

A browser that does not yet support the `SameParty` attribute [should](https://tools.ietf.org/html/draft-ietf-httpbis-rfc6265bis-05#section-4.1.2) ignore the `SameParty` cookie attribute, but should not reject the cookie. However, Chrome installations where First-Party Sets are supported but have been disabled **will still reject** invalid `SameParty` cookies.


## SameParty and SameSite

A cookie with `SameParty` may have `SameSite=None` or `SameSite=Lax`, or not specify a valid `SameSite` attribute. For such a cookie, **any cookie access rules associated with the `SameSite` attribute will be ignored, and the `SameParty` rules (described below) will be enforced instead**.

Table cells below give the effective enforcement mode for a cookie with a combination of the specified `SameSite` and/or `SameParty` attributes:


<table>
  <tr>
   <td>
   </td>
   <td><strong><code>SameSite=None</code></strong>
   </td>
   <td><strong><code>SameSite=Lax</code></strong>
   </td>
   <td><strong><code>SameSite=Strict</code></strong>
   </td>
   <td><strong>Unspecified <code>SameSite</code> (<a href="https://www.chromestatus.com/feature/5088147346030592">treated as Lax</a>)</strong>
   </td>
  </tr>
  <tr>
   <td><strong>Has <code>SameParty</code></strong>
   </td>
   <td><code>SameParty</code>
   </td>
   <td><code>SameParty</code>
   </td>
   <td>Cookie not valid, will be rejected
   </td>
   <td><code>SameParty</code>
   </td>
  </tr>
  <tr>
   <td><strong>No <code>SameParty</code></strong>
   </td>
   <td><code>SameSite=None</code>
   </td>
   <td><code>SameSite=Lax</code>
   </td>
   <td><code>SameSite=Strict</code>
   </td>
   <td><code>SameSite=Lax<sup>1</sup></code>
   </td>
  </tr>
</table>


<sup>1</sup> Cookies specifying neither `SameSite` nor `SameParty` attributes that are defaulted into `SameSite=Lax` mode will also be sent with non-idempotent (e.g. POST) top-level cross-site requests for a certain amount of time after their creation. Support for this temporary intervention (creation-time-based "Lax + POST") will be removed in the future.

A `SameParty` attribute overrides `SameSite=None`, such that browser interventions applying to `SameSite=None` cookies will not apply to cookies with a `SameParty` attribute (even if they also carry `SameSite=None`).


## SameParty cookies on HTTP requests: Cookie header rules

**A `SameParty` cookie is included in an HTTP request if the origins of the requested URL and all of the ancestor frames in the target browsing context belong to the same First-Party Set.** For example, a top-level navigation will always send `SameParty` cookies. Note that requests are treated the same regardless of the HTTP method (GET, POST, etc.), and the origin of the request initiator does not factor into whether the `SameParty` cookie should be allowed.

For example, suppose that owner.example owns a First-Party Set containing {member1.example, member2.example}. Then a `SameParty` cookie set by member1.example **would be sent** to https://member1.example in the following contexts:

![SameParty Contexts](https://github.com/ayumi-cloud/sc-security-module/blob/master/src/assets/images/same_party_table.jpg)

1. Main frame request
2. Embedded in owner
3. Embedded in different member of the same set
4. Nested, ancestor frames all belong to same set
5. Top-level navigation from unrelated site, regardless of HTTP method (GET, POST, etc.)

A `SameParty` cookie set by member1.example **would not be sent** to https://member1.example in the following contexts:

6. Embedded in unrelated site
7. Nested on owner site, but ancestor frames include unrelated site
8. Nested on unrelated site, even if immediate parent frame is part of the same set


## SameParty cookies in HTTP responses: Set-Cookie header rules

A `SameParty` cookie in a `Set-Cookie` response header is stored if and only if the corresponding request would have sent `SameParty` cookies in its request headers.

This means that the same rules (described above) apply to the contexts in which `SameParty` cookies may be set.


## Reading SameParty cookies from JavaScript

`SameParty` cookies can be used with JavaScript APIs such as <code>[document.cookie](https://developer.mozilla.org/en-US/docs/Web/API/Document/cookie)</code> and the [CookieStore API](https://wicg.github.io/cookie-store/). A `SameParty` cookie is accessible from JavaScript if the script is running in the context of a frame for which `SameParty` cookies were accessible when the frame was loaded.


## SameParty vs SameSite enforcement modes

Adding `SameParty` to a cookie that would otherwise be subject to the "[Lax](https://tools.ietf.org/html/draft-ietf-httpbis-rfc6265bis-05#section-5.3.7.1)" or "[Lax-allowing-unsafe](https://tools.ietf.org/html/draft-west-cookie-incrementalism-01#section-3.1.1)" enforcement modes of `SameSite` weakens security properties by expanding the set of contexts in which the cookie may be accessed. A site that chooses to use `SameParty` cookies must accept the increased risk from CSRF and other cross-site attacks, and should have a commensurate level of trust in the other members of its First-Party Set. Ideally, [other security measures](https://cheatsheetseries.owasp.org/cheatsheets/Cross-Site_Request_Forgery_Prevention_Cheat_Sheet.html) should be in place, in particular, to protect against malicious cross-site top-level POST requests.

A site may use a `SameParty` attribute without being in a First-Party Set, in which case the same `SameParty` rules apply over a single registrable domain (i.e. the site's eTLD+1) rather than over a set of registrable domains contained in a First-Party Set. (Since, by default, a registrable domain that is not in any specified First-Party Set is treated as first-party with only itself.) Note that the `SameParty` access rules are equivalent to the [Lax-allowing-unsafe](https://tools.ietf.org/html/draft-west-cookie-incrementalism-01#section-3.1.1) enforcement mode of the `SameSite` attribute (a.k.a. "Lax+POST"), if the cookie's domain has a registrable domain not in a First-Party Set.

However, **only for the initial prototype in Chrome, a cookie that specifies `SameParty` while the site is not in a First-Party Set will be subject to `SameSite` enforcement rules, rather than `SameParty` rules**. This is because the First-Party Sets are to be delivered via Component Updater, and there may be a gap between when the First-Party Sets are updated and when the `SameParty` cookies are deployed, during which the cookies should not be subject to Lax-allowing-unsafe enforcement to avoid site breakage.


## For initial prototype only: SameParty and third-party cookie settings in Chrome

`SameParty` cookies are subject to the same user-controlled third-party cookie blocking settings as other cookies, during this initial prototype phase in Chrome. If a user has third-party cookie blocking enabled globally or for a specific site, cookies will not be sent in a cross-site context, regardless of the presence of `SameParty`. This behavior is intended for the initial prototype because we believe it aligns with users’ current expectations with respect to their privacy controls. For the eventual launch, we intend to treat members of the same First-Party Set as being within a first-party context (and thus not subject to third-party cookie blocking within that first-party context). However, we would like to make improvements upon this prototype in preparation for that launch. Specifically: (a) The UI surface to expose First-Party Set membership information to users is not part of this prototype; and (b) We hope to evolve UA Policy on acceptable sets during this period.
