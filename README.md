# HEAD

A collection of HTML head elements.

## Elements

``` html
<title>Page Title</title>
<base href="https://example.com/page.html">
<style>
  body { color: red; }
</style>
<script src="script.js"></script>
```

## Meta Element

``` html
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="keywords" content="your,keywords,here,comma,separated,no,spaces">
<meta name="description" content="150 chars">
<meta name="subject" content="your website's subject">
<meta name="googlebot" content="index,follow">
<meta name="google" content="nositelinkssearchbox">
<meta name="google-site-verification" content="verification_token">
<meta name="abstract" content="">
<meta name="topic" content="">
<meta name="summary" content="">
<meta name="classification" content="business">
<meta name="url" content="https://example.com/">
<meta name="identifier-URL" content="https://example.com/">
<meta name="directory" content="submission">
<meta name="category" content="">
<meta name="coverage" content="Worldwide">
<meta name="distribution" content="Global">
<meta name="rating" content="General">
<meta name="referrer" content="never">
<meta http-equiv="Content-Security-Policy" content="default-src 'self'">
```

### Deprecated/Legacy
Below are the meta attributes which are either deprecated or not supported anymore:

```html
<!-- Deprecated because: Used to declare the document language, but not well supported. Better use <html lang=""> -->
<meta name="language" content="en">

<!-- Deprecated because: Ignored by search engines. Better use robots.txt or modify .htaccess -->
<meta name="robots" content="index,follow">

<!-- Deprecated because: No evidence of use in any search engines -->
<meta name="revised" content="Sunday, July 18th, 2010, 5:15 pm"> 

<!-- Deprecated because: Provides a easy way for bots to get emails from websites -->
<meta name="reply-to" content="email@example.com"> 

<!-- Deprecated because: Better to use <link rel="author"> or humans.txt file -->
<meta name="author" content="name, email@example.com">

<!-- Deprecated because: Better to use <link rel="author"> or humans.txt file -->
<meta name="designer" content="">

<!-- Deprecated because: Better to use <link rel="author"> or humans.txt file -->
<meta name="owner" content="">

<!-- Deprecated because: Telling the search bots to revisit the page after a period. This is not supported because most of the Search Engines nowadays have random intervals for recrawling a webpage -->
<meta name="revisit-after" content="7 days">

<!-- Google strongly advises not to use this. Better to set up Apache redirects instead -->
<meta http-equiv="refresh" content="300;url=https://example.com/"> 

<!-- Cache Control -->
<!-- Deprecated because: There's no point in doing cache control on client side. It is better to configure it on server side than in meta data -->
<meta http-equiv="Expires" content="0">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
```

## Link Element

``` html
<link rel="copyright" href="copyright.html">
<link rel="stylesheet" href="https://example.com/styles.css">
<link rel="alternate" href="https://feeds.feedburner.com/martini" type="application/rss+xml" title="RSS">
<link rel="alternate" href="https://example.com/feed.atom" type="application/atom+xml" title="Atom 0.3">
<link rel="alternate" href="https://es.example.com/" hreflang="es">
<link rel="me" href="https://google.com/profiles/thenextweb" type="text/html">
<link rel="me" href="mailto:name@example.com">
<link rel="me" href="sms:+15035550125">
<link rel="archives" href="https://example.com/2003/05/" title="May 2003">
<link rel="index" href="https://example.com/" title="DeWitt Clinton">
<link rel="start" href="https://example.com/photos/pattern_recognition_1_about/" title="Pattern Recognition 1">
<link rel="prev" href="https://example.com/opensearch/opensearch-and-openid-a-sure-way-to-get-my-attention/" title="OpenSearch and OpenID? A sure way to get my attention.">
<link rel="search" href="/open-search.xml" type="application/opensearchdescription+xml" title="Search Title">
<link rel="self" type="application/atom+xml" href="https://example.com/atomFeed.php?page=3">
<link rel="first" href="https://example.com/atomFeed.php">
<link rel="next" href="https://example.com/atomFeed.php?page=4">
<link rel="previous" href="https://example.com/atomFeed.php?page=2">
<link rel="last" href="https://example.com/atomFeed.php?page=147">
<link rel="shortlink" href="https://example.com/?p=43625">
<link rel="canonical" href="https://example.com/2010/06/9-things-to-do-before-entering-social-media.html">
<link rel="amphtml" href="https://www.example.com/url/to/amp-version.html">
<link rel="EditURI" href="https://example.com/xmlrpc.php?rsd" type="application/rsd+xml" title="RSD">
<link rel="pingback" href="https://example.com/xmlrpc.php">
<link rel="webmention" href="https://example.com/webmention">
<link rel="manifest" href="manifest.json">
<link rel="author" href="humans.txt">
<link rel="import" href="component.html">

<!-- Prefetching, preloading, prebrowsing -->
<link rel="dns-prefetch" href="//example.com/">
<link rel="preconnect" href="https://www.example.com/">
<link rel="prefetch" href="https://www.example.com/">
<link rel="prerender" href="https://example.com/">
<link rel="subresource" href="styles.css">
<link rel="preload" href="image.png">
<!-- More info: https://css-tricks.com/prefetching-preloading-prebrowsing/ -->
```

### Deprecated/Legacy
Below are the link relations which are either deprecated or not supported anymore:

```html
<link rel="shortcut icon" href="path/to/favicon.ico">
```

### Favicons

``` html
<!-- For IE 10 and below -->
<!-- No link, just place a file called favicon.ico in the root directory -->

<!-- For IE 11, Chrome, Firefox, Safari, Opera -->
<link rel="icon" href="path/to/favicon-16.png" sizes="16x16" type="image/png">
<link rel="icon" href="path/to/favicon-32.png" sizes="32x32" type="image/png">
<link rel="icon" href="path/to/favicon-48.png" sizes="48x48" type="image/png">
<link rel="icon" href="path/to/favicon-62.png" sizes="62x62" type="image/png">
<!-- More info: https://bitsofco.de/all-about-favicons-and-touch-icons/ -->
```

- [All About Favicons (And Touch Icons)](https://bitsofco.de/all-about-favicons-and-touch-icons/)

## Social

### Facebook / Open Graph

``` html
<meta property="fb:app_id" content="123456789">
<meta property="og:url" content="https://example.com/page.html">
<meta property="og:type" content="website">
<meta property="og:title" content="Content Title">
<meta property="og:image" content="https://example.com/image.jpg">
<meta property="og:description" content="Description Here">
<meta property="og:site_name" content="Site Name">
<meta property="og:locale" content="en_US">
<meta property="article:author" content="">
<!-- Facebook: https://developers.facebook.com/docs/sharing/webmasters#markup -->
<!-- Open Graph: http://ogp.me/ -->
```

- [Facebook Open Graph Markup](https://developers.facebook.com/docs/sharing/webmasters#markup)
- [Open Graph protocol](http://ogp.me/)

### Twitter

``` html
<meta name="twitter:card" content="summary">
<meta name="twitter:site" content="@site_account">
<meta name="twitter:creator" content="@individual_account">
<meta name="twitter:url" content="https://example.com/page.html">
<meta name="twitter:title" content="Content Title">
<meta name="twitter:description" content="Content description less than 200 characters">
<meta name="twitter:image" content="https://example.com/image.jpg">
<!-- More info: https://dev.twitter.com/cards/getting-started -->
<!-- Validate: https://dev.twitter.com/docs/cards/validation/validator -->
```

- [Twitter Cards: Getting Started Guide](https://dev.twitter.com/cards/getting-started)
- [Twitter Card Validator](https://dev.twitter.com/docs/cards/validation/validator)

### Google+ / Schema.org

``` html
<meta itemprop="name" content="Content Title">
<meta itemprop="description" content="Content description less than 200 characters">
<meta itemprop="image" content="https://example.com/image.jpg">
```

## Browser/Platform


### Apple iOS

``` html
<!-- Smart App Banner -->
<meta name="apple-itunes-app" content="app-id=APP_ID,affiliate-data=AFFILIATE_ID,app-argument=SOME_TEXT">

<!-- Disable automatic detection and formatting of possible phone numbers -->
<meta name="format-detection" content="telephone=no">

<!-- Add to Home Screen -->
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-title" content="App Title">

<!-- Touch Icons -->
<link rel="apple-touch-icon" href="apple-touch-icon.png">
<link rel="apple-touch-icon-precomposed" href="apple-touch-icon-precomposed.png">
<!-- In most cases, one 180×180px touch icon in the head is enough -->
<!-- If you use art-direction and/or want to have different content for each device, you can add more touch icons -->

<!-- Startup Image -->
<link rel="apple-touch-startup-image" href="startup.png">

<!-- More info: https://developer.apple.com/safari/library/documentation/appleapplications/reference/safarihtmlref/articles/metatags.html -->
```

- [Apple Meta Tags](https://developer.apple.com/library/safari/documentation/AppleApplications/Reference/SafariHTMLRef/Articles/MetaTags.html)

### Apple Safari

```html
<!-- Pinned Site -->
<link rel="mask-icon" href="icon.svg" color="red">
```

### Google Android

``` html
<meta name="theme-color" content="#E64545">

<!-- Add to homescreen -->
<meta name="mobile-web-app-capable" content="yes">
<!-- More info: https://developer.chrome.com/multidevice/android/installtohomescreen -->
```

### Google Chrome

``` html
<link rel="chrome-webstore-item" href="https://chrome.google.com/webstore/detail/APP_ID">

<!-- Disable translation prompt -->
<meta name="google" value="notranslate">
```

### Microsoft Internet Explorer

``` html
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta http-equiv="cleartype" content="on">
<meta name="skype_toolbar" content="skype_toolbar_parser_compatible">

<!-- Disable link highlighting on IE 10 on Windows Phone (https://blogs.windows.com/buildingapps/2012/11/15/adapting-your-webkit-optimized-site-for-internet-explorer-10/) -->
<meta name="msapplication-tap-highlight" content="no">

<!-- Pinned sites (https://msdn.microsoft.com/en-us/library/dn255024(v=vs.85).aspx) -->
<meta name="application-name" content="Contoso Pinned Site Caption">
<meta name="msapplication-tooltip" content="Example Tooltip Text">
<meta name="msapplication-starturl" content="/">

<meta name="msapplication-config" content="http://example.com/browserconfig.xml">

<meta name="msapplication-allowDomainApiCalls" content="true">
<meta name="msapplication-allowDomainMetaTags" content="true">
<meta name="msapplication-badge" content="frequency=30; polling-uri=http://example.com/id45453245/polling.xml">
<meta name="msapplication-navbutton-color" content="#FF3300">
<meta name="msapplication-notification" content="frequency=60;polling-uri=http://example.com/livetile">
<meta name="msapplication-square150x150logo" content="images/logo.png">
<meta name="msapplication-square310x310logo" content="images/largelogo.png">
<meta name="msapplication-square70x70logo" content="images/tinylogo.png">
<meta name="msapplication-wide310x150logo" content="images/widelogo.png">
<meta name="msapplication-task" content="name=Check Order Status;action-uri=./orderStatus.aspx?src=IE9;icon-uri=./favicon.ico">
<meta name="msapplication-task-seperator" content="1">
<meta name="msapplication-TileColor" content="#FF3300">
<meta name="msapplication-TileImage" content="images/tileimage.jpg">
<meta name="msapplication-window" content="width=1024;height=768">
```

### Microsoft Internet Explorer (LEGACY DO NOT USE)

``` html
<!-- Disable the image toolbar when you mouse over images in IE 6 (https://msdn.microsoft.com/en-us/library/ms532986(v=vs.85).aspx) -->
<meta http-equiv="imagetoolbar" content="no">

<!-- Disable Windows theming to form inputs/buttons (https://support.microsoft.com/en-us/kb/322240) -->
<meta name="MSThemeCompatible" content="no">

<!-- Disable a feature that only appeared on IE 6 beta (https://stackoverflow.com/q/2167301) -->
<meta name="MSSmartTagsPreventParsing" content="true">

<!-- Interpage Transitions (https://msdn.microsoft.com/en-us/library/ms532847(v=vs.85).aspx) -->
<meta http-equiv="Page-Enter" content="revealtrans(duration=2,transition=2)">
<meta http-equiv="Page-Exit" content="revealtrans(duration=3,transition=12)">
<meta http-equiv="Site-Enter" content="revealtrans(duration=2,transition=2)">
<meta http-equiv="Site-Exit" content="revealtrans(duration=3,transition=12)">
```

### 360 Browser

``` html
<!-- select rendering engine in order -->
<meta name="renderer" content="webkit|ie-comp|ie-stand">
```

### UC Mobile Browser

``` html
<!-- Locks the screen into the specified orientation -->
<meta name="screen-orientation" content="landscape/portrait">
<!-- Display this page in fullscreen -->
<meta name="full-screen" content="yes">
<!-- UC browser will display images even if in "text mode" -->
<meta name="imagemode" content="force">
<!-- Page will be displayed in "application mode"(fullscreen,forbiding gesture, etc.) -->
<meta name="browsermode" content="application">
<!-- Disabled the UC browser's "night mode" in this page -->
<meta name="nightmode" content="disable">
<!-- Simplify the page to reduce data transfer -->
<meta name="layoutmode" content="fitscreen">
<!-- Disable the UC browser's feature of "scaling font up when there are many words in this page" -->
<meta name="wap-font-scale" content="no">
```

- [UC Browser Docs](http://www.uc.cn/download/UCBrowser_U3_API.doc)

### QQ Mobile Browser

``` html
<!-- Locks the screen into the specified orientation -->
<meta name="x5-orientation" content="landscape/portrait">
<!-- Display this page in fullscreen -->
<meta name="x5-fullscreen" content="true">
<!-- Page will be displayed in "application mode"(fullscreen,etc.) -->
<meta name="x5-page-mode" content="app">
```

## App Links

``` html
<!-- iOS -->
<meta property="al:ios:url" content="applinks://docs">
<meta property="al:ios:app_store_id" content="12345">
<meta property="al:ios:app_name" content="App Links">
<!-- Android -->
<meta property="al:android:url" content="applinks://docs">
<meta property="al:android:app_name" content="App Links">
<meta property="al:android:package" content="org.applinks">
<!-- Web Fallback -->
<meta property="al:web:url" content="http://applinks.org/documentation">
<!-- More info: http://applinks.org/documentation/ -->
```

- [App Links Docs](http://applinks.org/documentation/)

## Other Resources

- [HTML5 Boilerplate Docs: The HTML](https://github.com/h5bp/html5-boilerplate/blob/master/dist/doc/html.md)
- [HTML5 Boilerplate Docs: Extend and customize](https://github.com/h5bp/html5-boilerplate/blob/master/dist/doc/extend.md)

## Contributing

Open an issue or a pull request to suggest changes or additions.

## Author

**Josh Buchea**
- <https://github.com/joshbuchea>
- <https://twitter.com/joshbuchea>

## License

[MIT License](LICENSE)
