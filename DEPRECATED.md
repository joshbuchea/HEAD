# ⚠️ Deprecated `<head>` Elements

> Tags and elements that were once part of the [HEAD](./README.md) guide but are now deprecated, obsolete, or otherwise no longer supported by the platforms/vendors they targeted.

These are preserved here for historical reference. **Do not use them in new projects.**

## Table of Contents

- [Microsoft Internet Explorer](#microsoft-internet-explorer)
- [Apple Safari](#apple-safari)
- [Apple iOS](#apple-ios)
- [Link Relations](#link-relations)
- [Resource Hints](#resource-hints)
- [Site Verification](#site-verification)
- [Social](#social)
- [Miscellaneous](#miscellaneous)

## Microsoft Internet Explorer

Internet Explorer was [retired by Microsoft on June 15, 2022](https://learn.microsoft.com/en-us/lifecycle/announcements/internet-explorer-11-end-of-support-on-windows-10). All IE-specific tags are obsolete.

```html
<!-- Force IE 8/9/10 to use its latest rendering engine -->
<meta http-equiv="x-ua-compatible" content="ie=edge">

<!-- Disable automatic detection and formatting of possible phone numbers by Skype Toolbar browser extension -->
<meta name="skype_toolbar" content="skype_toolbar_parser_compatible">

<!-- Windows Tiles -->
<meta name="msapplication-config" content="/browserconfig.xml">
```

Minimum required xml markup for `browserconfig.xml`:

```xml
<?xml version="1.0" encoding="utf-8"?>
<browserconfig>
   <msapplication>
     <tile>
        <square70x70logo src="small.png"/>
        <square150x150logo src="medium.png"/>
        <wide310x150logo src="wide.png"/>
        <square310x310logo src="large.png"/>
     </tile>
   </msapplication>
</browserconfig>
```

Live tiles were removed from the Windows 11 Start menu and are no longer rendered by Edge.

## Apple Safari

```html
<!-- Safari Pinned Tab Icon -->
<link rel="mask-icon" href="/path/to/icon.svg" color="blue">
```

Safari Pinned Tabs were removed in Safari 17 (2023); the `mask-icon` link relation is no longer used.

## Apple iOS

```html
<!-- Enable standalone (full-screen) mode -->
<meta name="apple-mobile-web-app-capable" content="yes">
```

As of iOS 17.4, Apple [deprecated `apple-mobile-web-app-capable`](https://developer.apple.com/documentation/safari-release-notes/safari-17_4-release-notes) in favor of the standardized `mobile-web-app-capable`:

```html
<meta name="mobile-web-app-capable" content="yes">
```

## Resource Hints

```html
<!-- Prerender a full page in the background -->
<link rel="prerender" href="https://example.com/">
```

`<link rel="prerender">` was [deprecated and removed from Chrome](https://developer.chrome.com/blog/prerender-pages) in favor of the [Speculation Rules API](https://developer.mozilla.org/en-US/docs/Web/API/Speculation_Rules_API).

```html
<!-- Completely opt out of DNS prefetching by setting to "off" -->
<meta http-equiv="x-dns-prefetch-control" content="off">
```

`x-dns-prefetch-control` was a Firefox/IE-era extension that was never implemented in Chromium and is no longer meaningfully consumed by modern browsers. Use `<link rel="dns-prefetch">` for explicit prefetch hints.

## Link Relations

```html
<!-- Links to an AMP HTML version of the current document -->
<link rel="amphtml" href="https://example.com/path/to/amp-version.html">
```

Google [removed the AMP requirement from Top Stories](https://developers.google.com/search/blog/2021/04/more-details-page-experience) in 2021 and the AMP Page Experience signal was retired. The AMP Project itself is largely dormant.

```html
<!-- Used when a 3rd party service is utilized to maintain a blog -->
<link rel="EditURI" href="https://example.com/xmlrpc.php?rsd" type="application/rsd+xml" title="RSD">

<!-- Forms an automated comment when another WordPress blog links to your WordPress blog or post -->
<link rel="pingback" href="https://example.com/xmlrpc.php">
```

[RSD (Really Simple Discoverability)](https://en.wikipedia.org/wiki/Really_Simple_Discovery) was used by XML-RPC blog editors like Windows Live Writer (discontinued in 2017). XML-RPC pingbacks have been [widely disabled by default](https://make.wordpress.org/core/2015/09/30/xml-rpc-settings-in-4-4/) due to their use in DDoS amplification attacks. Use [Webmention](https://www.w3.org/TR/webmention/) instead.

```html
<!-- Links to a document that describes a collection of records, documents, or other materials of historical interest -->
<link rel="archives" href="https://example.com/archives/">

<!-- Links to top level resource in an hierarchical structure -->
<link rel="index" href="https://example.com/article/">
```

Both `archives` and `index` were [removed from the HTML living standard](https://html.spec.whatwg.org/multipage/links.html#linkTypes) and are no longer registered in the [IANA link relations registry](https://www.iana.org/assignments/link-relations/link-relations.xhtml) for HTML.

## Site Verification

```html
<meta name="alexaVerifyID" content="verification_token"><!-- Alexa Console -->
```

[Alexa Internet](https://en.wikipedia.org/wiki/Alexa_Internet) (the web traffic analytics service — unrelated to the Amazon Alexa voice assistant) was [shut down by Amazon on May 1, 2022](https://support.alexa.com/hc/en-us/articles/4410503838999).

## Social

```html
<!-- disallow Twitter from using your site's info for personalization purposes -->
<meta name="twitter:dnt" content="on">
```

Twitter's Do Not Track support was effectively dropped following the platform's transition to X. The original [Twitter privacy options documentation](https://dev.twitter.com/web/overview/privacy) is no longer accessible, and the signal is not honored in practice.

## Miscellaneous

```html
<!-- Specifies the document to appear in a specific frame -->
<meta http-equiv="Window-Target" content="_value">
```

`Window-Target` was a non-standard, IE-era extension that was never adopted by the HTML standard and is not supported by modern browsers.
