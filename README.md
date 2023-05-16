# 🤯 HEAD

> Простое руководство по HTML-элементам в `<head>`

[![Contributors](https://img.shields.io/github/contributors/joshbuchea/head.svg?style=for-the-badge)](https://github.com/joshbuchea/HEAD/graphs/contributors)
[![CC0](https://img.shields.io/badge/license-CC0-green.svg?style=for-the-badge)](https://creativecommons.org/publicdomain/zero/1.0/)
[![Follow @joshbuchea on Twitter](https://img.shields.io/badge/Follow_@joshbuchea-blue?logo=twitter&logoColor=white&style=for-the-badge)](https://twitter.com/joshbuchea)

## Оглавление

- [Рекомендуемый минимум](#рекомендуемый-минимум)
- [Элементы](#элементы)
- [Мета](#мета)
- [Ссылки](#ссылки)
- [Иконки](#иконки)
- [Социальные сети](#социальные-сети)
  - [Facebook Open Graph](#facebook-open-graph)
  - [Twitter Card](#twitter-card)
  - [Twitter Privacy](#twitter-privacy)
  - [Schema.org](#schemaorg)
  - [JSON-LD](#json-ld)
  - [Pinterest](#pinterest)
  - [Facebook Instant Articles](#facebook-instant-articles)
  - [OEmbed](#oembed)
  - [QQ/Wechat](#qqwechat)
- [Браузеры / Платформы](#браузеры--платформы)
  - [Apple iOS](#apple-ios)
  - [Google Android](#google-android)
  - [Google Chrome](#google-chrome)
  - [Microsoft Internet Explorer](#microsoft-internet-explorer)
- [Браузеры (китайские)](#браузеры-китайские)
  - [360 Browser](#360-browser)
  - [QQ Mobile Browser](#qq-mobile-browser)
  - [UC Mobile Browser](#uc-mobile-browser)
- [CSRF](#csrf)
- [Подсказки клиентов](#подсказки-клиентов)
- [Устаревшее](#устаревшее)
- [Другие ресурсы](#другие-ресурсы)
- [Связанные проекты](#связанные-проекты)
- [Переводы](#-переводы)
- [Contributing](#-contributing)
  - [Contributors](#-contributors)
- [Автор](#-автор)
- [Лицензия](#-лицензия)

## Рекомендуемый минимум

Ниже приведены основные элементы для любого веб-документа (веб-сайта/приложения):

```html
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!--
   Вышеуказанные 2 мета-тега *должны* стоять как можно раньше в <head>.
   Для обеспечения правильного отображения документов.
   Любой другой элемент заголовка должен идти *после* этих тегов.
  -->
  <title>Заголовок страницы</title>
</head>
```

`meta charset` - определяет кодировку веб-сайта, стандартом является `utf-8`.

`meta name="viewport"` - настройки viewport, связанные с мобильной отзывчивостью

`width=device-width` - физическая ширина устройства (отлично подходит для мобильных устройств!)

`initial-scale=1` - начальный масштаб, 1 означает отсутствие масштабирования

**[⬆ вернуться к началу](#оглавление)**.

## Элементы

Допустимые элементы `<head>` включают `base`, `link`, `meta`, `noscript`, `script`, `style`, `template` и `title`.

Эти элементы предоставляют информацию о том, как документ должен восприниматься и отображаться веб-технологиями, например, браузерами, поисковыми системами, ботами и так далее.

```html
<!--
 Установите кодировку символов для этого документа так, чтобы
 все символы в пространстве UTF-8 (например, эмодзи)
 отображались правильно.
-->
<meta charset="utf-8">

<!-- Установите заголовок документа -->
<title>Заголовок страницы</title>

<!-- Установите базовый URL для всех относительных URL в документе -->
<base href="https://example.com/page.html">

<!-- Ссылка на внешний файл CSS -->
<link rel="stylesheet" href="styles.css">
<link rel="stylesheet" href="/assets/css/print.css" media="print">

<!-- Используется для добавления CSS в документ. Используется для важной стилизации -->
<style>
/* ... */
</style>

<!-- Ссылка на внешний JavaScript файл -->
<script src="script.js"></script>

<!-- Используется для добавления JavaScript в документ-->
<script>
 // функция(и) идут здесь
</script>

<!-- Используется на случай если JavaScript отключен в браузере -->
<noscript>
 <!-- Альтернатива, когда JS отключен -->
</noscript>

<!-- Используется для объявления HTML-фрагментов, которые могут быть клонированы и вставлены в документ. Если указан в <head>, то <template> может содержать только метаданные -->
<template>
  
</template>
```

**[⬆ вернуться к началу](#оглавление)**.

## Мета

```html
<!--
 Вышеуказанные 2 мета-тега *должны* стоять как можно раньше в <head>.
 Для обеспечения правильного отображения документов.
 Любой другой элемент заголовка должен идти *после* этих тегов.
-->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
```

```html
<!-- viewport-fit для управления безопасной зоны -->
<meta name="viewport" content="width=device-width, initial-scale=1, viewport-fit=cover">
```

- `contain`: вьюпорт должен полностью вмещать веб-контент. 
- `cover`: веб-контент должен полностью покрывать вьюпорт. 
- `auto`: значение по умолчанию, работает как `contain`.

[Подробнее в блоке css-live](https://css-live.ru/articles/ponimanie-vyuporta-webview-v-ios-11.html)

```html
<!--
 Позволяет контролировать, откуда загружаются ресурсы.
 Поместите как можно раньше в <head>, так как тег 
 применяется только к ресурсам, которые объявлены после него.
-->
<meta http-equiv="Content-Security-Policy" content="default-src 'self'">

<!-- Название веб-приложения (должно использоваться только в том случае, если веб-сайт используется как приложение) -->
<meta name="application-name" content="Имя приложения">.

<!-- Цвет вкладки для Chrome на Android, Vivaldi, Safari 15 -->
<meta name="theme-color" content="#4285f4">

<!-- Список ключевых слов -->
<meta name="keywords" content="ваши, теги">

<!-- Краткое описание документа (ограничение до 150 символов) -->
<!-- Это содержимое *может* использоваться в результатах поисковых систем. -->
<meta name="description" content="Описание страницы">.
```

```html
<!-- Управление поведением поисковых машин при осмотре и индексации сайта -->
<meta name="robots" content="index,follow"><!-- Все поисковые системы -->
<meta name="googlebot" content="index,follow"><!-- Специфика Google -->
<meta name="bingbot" content="index,follow"><!-- Специфика Bing -->
```

Для роботов есть несколько значений:
* `all` - нет ограничений на индексирование и показ контента.
* `noindex` - не показывать эту страницу в результатах поиска.
* `nofollow` - не выполнять переход по ссылкам на странице.
* `none` - эквивалент noindex, nofollow.
* `noarchive` - запрещает показывать ссылку на кеш в результатах поиска.
* `nosnippet` - не показывать в результатах поиска текстовый фрагмент или видео.
* `max-snippet: [number]` - ограничение на количество символов в текстовом фрагменте
* `max-image-preview: [setting]` - определяет максимальный размер изображений, которые могут показываться в результатах поиска для этой страницы.
* `max-video-preview: [number]` - задает для фрагмента видео со страницы ограничение по длительности в секундах при показе в результатах поиска.
* `notranslate` - не предлагать перевести эту страницу в результатах поиска.
* `noimageindex` - не индексировать изображения на странице.
* `unavailable_after: [date/time]` - запрещает показывать страницу в результатах поиска после даты и времени.
* `noyaca` - запрет на использование информации из Яндекса. Каталога для описания в сниппете
* `noodp` — запрет на использование описания из dMoz для сниппета;
* `noydir` — запрет на использование описания из Yahoo! Directory для сниппета.
  
Значения можно писать через запятую `content="max-snippet:-1, max-image-preview:large, max-video-preview:-1"`. 
Подробнее в документации [Google Поиска](https://developers.google.com/search/docs/advanced/robots/robots_meta_tag)

```html
<!-- Указывает Google не показывать поисковую строку sitelinks -->
<meta name="google" content="nositelinkssearchbox">

<!-- Указывает Google не переводить документ -->
<meta name="google" content="notranslate">

<!-- Проверить право собственности сайта -->
<meta name="google-site-verification" content="verification_token"><!-- Google Search Console -->
<meta name="yandex-verification" content="verification_token"><!-- Яндекс Вебмастерам -->
<meta name="msvalidate.01" content="verification_token"><!-- Bing Webmaster Center -->
<meta name="alexaVerifyID" content="verification_token"><!-- Alexa Console -->
<meta name="p:domain_verify" content="code_from_pinterest"><!-- Pinterest Console-->
<meta name="norton-safeweb-site-verification" content="norton_code"><!-- Norton Safe Web -->

<!-- Укажите программное обеспечение, использованное для создания документа (например, WordPress, Dreamweaver) -->
<meta name="generator" content="название программного обеспечения">

<!-- Краткое описание темы вашего документа -->
<meta name="subject" content="тема вашего документа">

<!-- Дает общую возрастную оценку, основанную на содержании документа -->
<meta name="rating" content="General">

<!-- Позволяет контролировать, как передается информация о реферере -->
<meta name="referrer" content="no-referrer">
```

```html
<!-- Отключить автоматическое определение и форматирование возможных телефонных номеров -->
<meta name="format-detection" content="telephone=no">

<!-- а также можно отключить дату, адрес, url и email -->
<meta name="format-detection" content="date=no">
<meta name="format-detection" content="address=no">
<meta name="format-detection" content="url=no">
<meta name="format-detection" content="email=no">

<!-- можно комбинировать несколько значений-->
<meta name="format-detection" content="telephone=no,date=no,address=no,email=no,url=no">
```
Подробнее в:
- [Документации для разработчиков от Apple](https://developer.apple.com/library/archive/documentation/AppleApplications/Reference/SafariHTMLRef/Articles/MetaTags.html)
- [Гисте про комбинирование](https://gist.github.com/yuezk/15c5bb1370e30d0a2a60)


```html
<!-- Полностью отказаться от предварительной выборки DNS, установив значение "off" -->
<meta http-equiv="x-dns-prefetch-control" content="off">

<!-- Указывает документ, который будет отображаться в определенном фрейме -->
<meta http-equiv="Window-Target" content="_value">

<!-- Гео-теги -->
<meta name="ICBM" content="широта, долгота">.
<meta name="geo.position" content="широта;долгота">
<meta name="geo.region" content="country[-state]"><!-- Код страны (ISO 3166-1): обязательный, код штата (ISO 3166-2): необязательный; например, content="US" / content="US-NY" -->
<meta name="geo.placename" content="city/town"><!-- например, content="New York City" -->

<!-- Монетизация веб-сайтов https://webmonetization.org/docs/getting-started -->
<meta name="monetization" content="$paymentpointer.example">

<!-- Подсказывает, что сайт оптимизирован для мобильных устройств-->
<meta name="HandheldFriendly" content="true">

<!-- Указывает автора документа -->
<meta name="author" content="Nikolai Shabalin">

<!-- Принадлежность авторских прав-->
<meta name="copyright" content="Nikolai Shabalin">

<!-- Создатель документа -->
<meta name="creator" content="Nikolai Shabalin">

<!-- Владелец -->
<meta name="owner" content="">

<!-- Перезагружает страницу через указанное количество секунд -->
<meta http-equiv="Refresh" content="20">
<meta http-equiv="Refresh" content="20; URL=page4.html"> <!-- Перезагружает к указанной странице -->

<!-- Язык документа -->
<meta name="language" content="Russian">
```

```html
<!-- контролирует занесение страниц в кэш-память -->
<meta http-equiv="pragma" content="no-cache">
```
[Подробнее про pragma](https://mpbox.ru/html/meta-tags/http-equiv/pragma/).

```html
<!-- Сделать повторный сетевой запрос после указанной даты и времени -->
<meta http-equiv="Expires" content="Sun, 01 Jan 2012 00:00:01 GMT" />
```
[Подробнее про expires](https://karashchuk.com/HTML/meta_Expires/).

```html
<!-- Как часто посещать сайт роботу-->
<meta name="revisit" content="10 day">

<!-- Дата последнего изменения документа -->
<meta name="revised" content="Sunday, July 18th, 2010, 5:15 pm" />

<!-- Как часто посещать сайт роботу-->
<meta name="revisit-after" content="10 day">
```
`revisit-after` поисковыми роботами [чаще всего игнорируется](https://developers.google.com/search/blog/2007/12/answering-more-popular-picks-meta-tags).

```html
<!-- Используется как description, но для научных статей-->
<meta name="abstract" content="">
<meta name="topic" content="">
<meta name="summary" content="">

<!-- Для обратной связи -->
<meta name="reply-to" content="email@hotmail.com">
```

```html
<!-- Соль -->
<meta name="salt" content="21f157b19463e98d0e9723cf486d620a">
```

[Про соль подробнее](https://www.php.net/manual/ru/faq.passwords.php#faq.passwords.salt)

```html
<!-- Регистрация доменного имени -->
<meta name="parking" content="имя регистратора">
```

[Подробнее про парковку доменов](https://ru.wikipedia.org/wiki/%D0%9F%D0%B0%D1%80%D0%BA%D0%BE%D0%B2%D0%BA%D0%B0_%D0%B4%D0%BE%D0%BC%D0%B5%D0%BD%D0%BE%D0%B2)


```html
<!-- Отключает возможность Скайпа звонить по номерам на странице-->
<meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE" />
```

[Подробнее про отключение Скайпа](http://mpbox.ru/html-and-css-tricks/different/skype-addon.html)

- 📖 [Мета-теги, которые понимает Google](https://support.google.com/webmasters/answer/79812?hl=en)
- 📖 [WHATWG Wiki: MetaExtensions](https://wiki.whatwg.org/wiki/MetaExtensions)
- 📖 [ICBM в Википедии](https://en.wikipedia.org/wiki/ICBM_address#Modern_use)
- 📖 [Геотеги в Википедии](https://en.wikipedia.org/wiki/Geotagging#HTML_pages)

**[⬆ вернуться к началу](#оглавление)**.

## Ссылки

```html
<!-- Путь до внешней таблицы стилей -->
<link rel="stylesheet" href="https://example.com/styles.css">.

<!-- Помогает предотвратить проблемы дублированного контента -->
<link rel="canonical" href="https://example.com/article/?page=2">

<!-- Ссылки на AMP HTML версию текущего документа -->
<link rel="amphtml" href="https://example.com/path/to/amp-version.html">

<!-- Ссылка на JSON-файл, в котором указаны данные для "установки" веб-приложения -->
<link rel="manifest" href="manifest.json">
<link rel="manifest" href="manifest.webmanifest">
```

```html
<!-- Ссылки на информацию об авторе (авторах) документа -->
<link rel="author" href="humans.txt">
```

[О human.txt подробнее](https://humanstxt.org/RU)

```html
<!-- Ссылается на заявление об авторском праве, применимое к контексту ссылки -->
<link rel="license" href="copyright.html">

<!-- Дает ссылку на место в вашем документе, который может быть на другом языке -->
<link rel="alternate" href="https://es.example.com/" hreflang="es">

<!-- Предоставляет информацию об авторе или другом человеке. 
Используется для RelMeAuth, распределённой формы проверки личности. Смотри https://microformats.org/wiki/RelMeAuth, чтобы узнать больше -->
<link rel="me" href="https://google.com/profiles/thenextweb" type="text/html">
<link rel="me" href="mailto:name@example.com">.
<link rel="me" href="sms:+15035550125">

<!-- Ссылки на документ, описывающий коллекцию записей, документов или других материалов, представляющих исторический интерес -->
<link rel="archives" href="https://example.com/archives/">

<!-- Ссылки на ресурс верхнего уровня в иерархической структуре -->
<link rel="index" href="https://example.com/article/">

<!-- Обеспечивает самостоятельную ссылку - полезно, когда документ имеет несколько возможных ссылок -->
<link rel="self" type="application/atom+xml" href="https://example.com/atom.xml">

<!-- Предыдущий и следующий документы в серии документов, соответственно -->
<link rel="prev" href="https://example.com/article/?page=1">
<link rel="next" href="https://example.com/article/?page=3">

<!-- Используется, когда для ведения блога используется сторонний сервис -->
<link rel="EditURI" href="https://example.com/xmlrpc.php?rsd" type="application/rsd+xml" title="RSD">

<!-- Формирует автоматический комментарий, когда другой блог WordPress ссылается на ваш блог WordPress или пост -->
<link rel="pingback" href="https://example.com/xmlrpc.php">

<!-- Уведомляет URL, когда вы ссылаетесь на него в вашем документе. Дополнительная информация на https://webmention.net -->
<link rel="webmention" href="https://example.com/webmention">

<!-- Позволяет размещать сообщения на вашем собственном домене с помощью клиента Micropub. Более подробная информация на https://indieweb.org/Micropub  -->
<link rel="micropub" href="https://example.com/micropub">

<!-- Позволяет использовать ваш сайт с [социальным ридером](https://indieweb.org/social_reader) на базе Microsub. Более подробная информация на https://indieweb.org/Microsub -->
<link rel="microsub" href="https://example.com/microsub">

<!-- Позволяет использовать ваш сайт с IndieAuth, для проверки личности с помощью вашего доменного имени. Подробнее на https://indieauth.net -->
<link rel="token_endpoint" href="https://example.com/token">
<link rel="authorization_endpoint" href="https://example.com/auth">

<!-- Open Search -->
<link rel="search" href="/open-search.xml" type="application/opensearchdescription+xml" title="Заголовок поиска">.

<!-- Фиды -->
<link rel="alternate" href="https://feeds.feedburner.com/example" type="application/rss+xml" title="RSS">
<link rel="alternate" href="https://example.com/feed.atom" type="application/atom+xml" title="Atom 0.3">

<!-- Prefetching, preloading, prebrowsing -->
<!-- Дополнительная информация: https://css-tricks.com/prefetching-preloading-prebrowsing/ -->
<link rel="dns-prefetch" href="//example.com/">
<link rel="preconnect" href="https://www.example.com/">
<link rel="prefetch" href="https://www.example.com/">
<link rel="prerender" href="https://example.com/">.
<link rel="preload" href="image.png" as="image">
<link rel="modulepreload" href="super-critical-stuff.js"> <!-- Предзагрузка модулей -->
```

- 📖 [Link Relations](https://www.iana.org/assignments/link-relations/link-relations.xhtml)
- 📖 [Предзагрузка модулей](https://developers.google.com/web/updates/2017/12/modulepreload)

**[⬆ вернуться к началу](#оглавление)**.

## Иконки

```html
<!-- Для IE 10 и ниже -->
<link rel="icon" href="favicon.ico"><!-- 32×32 -->
```

`<link rel="icon" href="favicon.ico">` - необязательно указывать в `<head>`. Любой сервер ищет `favicon.ico`, но для этого `favicon.ico` обязательно нужно положить в корень проекта. От `.ico` лучше не отказываться, так как могут перестать работать иконки, например в RSS-читалках. В `.ico` поддерживается прозрачность.
На данный момент в Хром есть [баг](https://bugs.chromium.org/p/chromium/issues/detail?id=1162276). Если в проекте подключены `ICO` и `SVG` версии, то всё равно предпочтение отдаётся `ICO`.

```html
<link rel="icon" href=" icon.svg" type="image/svg+xml">
```

Преимущество SVG-фавиконки в том, что, помимо того, что он векторный, он может подстраиваться под тёмную тему с помощью ` @media (prefers-color-scheme: dark)`. [Поддержка векторных фавиконок](https://caniuse.com/link-icon-svg).

```html
<!-- IOS 8+ -->
<link rel="apple-touch-icon" href="apple-touch-icon.png"><!-- 180×180 -->
```

Используется для отображения ярлыка на домашнем экране IPhone и IPad.

Выше указаны три версии для фавиконки, но можно добавить ещё 2, чтобы учесть большинство современных браузеров. Чтобы не увеличивать HTML другие фавиконки добавляют в веб-манифест

```html
<link rel="manifest" href="/manifest.webmanifest">
```

_manifest.webmanifest_
```json
{
  "icons": [
    { "src": "192.png", "type": "image/png", "sizes": "192x192" },
    { "src": "12.png", "type": "image/png", "sizes": "512x512" }
  ]
}
```

- 📖 [Все о фавиконах (и сенсорных иконках)](https://bitsofco.de/all-about-favicons-and-touch-icons/)
- 📖 [Создание прикрепленных иконок вкладок](https://developer.apple.com/library/content/documentation/AppleApplications/Reference/SafariWebContent/pinnedTabs/pinnedTabs.html)
- 📖 [Favicon Cheat Sheet](https://github.com/audreyr/favicon-cheat-sheet)
- 📖 [Иконки и цвета браузера](https://developers.google.com/web/fundamentals/design-and-ux/browser-customization/)
- 📖 [Как создать Favicon в 2021 году: шесть файлов, которые подходят большинству потребностей](https://evilmartians.com/chronicles/how-to-favicon-in-2021-six-files-that-fit-most-needs)

**[⬆ вернуться к началу](#оглавление)**.

## Социальные сети

### Facebook Open Graph
> Большинство материалов передается на Facebook в виде URL, поэтому важно, чтобы вы разметили свой сайт тегами Open Graph, чтобы взять под контроль то, как ваши материалы появляются на Facebook. [Подробнее о разметке Facebook Open Graph](https://developers.facebook.com/docs/sharing/webmasters#markup)

```html
<meta property="fb:app_id" content="123456789">
<meta property="og:url" content="https://example.com/page.html">
<meta property="og:type" content="website">
<meta property="og:title" content="Заголовок содержимого">
<meta property="og:image" content="https://example.com/image.jpg">
<meta property="og:image:alt" content="Описание того, что находится на изображении (не подпись)">
<meta property="og:description" content="Описание">
<meta property="og:site_name" content="Название сайта">
<meta property="og:locale" content="ru_RU">
<meta property="article:author" content="">
```

- 📖 [Open Graph protocol](http://ogp.me/)
- 🛠 Протестируйте свою страницу с помощью [Facebook Sharing Debugger](https://developers.facebook.com/tools/debug/)

### Twitter Card
> С помощью Twitter Cards вы можете прикреплять к твитам фотографии, видео и мультимедийные файлы, тем самым способствуя привлечению трафика на ваш сайт. [Подробнее о Twitter Cards](https://developer.twitter.com/en/docs/tweets/optimize-with-cards/overview/abouts-cards)

```html
<meta name="twitter:card" content="summary">
<meta name="twitter:site" content="@site_account">
<meta name="twitter:creator" content="@individual_account">
<meta name="twitter:url" content="https://example.com/page.html">
<meta name="twitter:title" content="Заголовок контента">.
<meta name="twitter:description" content="Описание контента менее 200 символов">.
<meta name="twitter:image" content="https://example.com/image.jpg">.
<meta name="twitter:image:alt" content="Текстовое описание изображения, передающее его суть пользователям с ослабленным зрением. Максимум 420 символов.">
```

- 📖 [Начало работы с карточками - Twitter Developers](https://dev.twitter.com/cards/getting-started)
- 🛠 Проверьте свою страницу с помощью [Twitter Card Validator](https://cards-dev.twitter.com/validator)

### Twitter Privacy
Если вы встраиваете твиты в свой сайт, Twitter может использовать информацию с вашего сайта для адаптации контента и предложений для пользователей Twitter. [Подробнее о возможностях конфиденциальности Twitter](https://dev.twitter.com/web/overview/privacy#what-privacy-options-do-website-publishers-have).
```html
<!-- запретить Twitter использовать информацию о вашем сайте в целях персонализации -->
<meta name="twitter:dnt" content="on">
```

### Schema.org

```html
<html lang="" itemscope itemtype="https://schema.org/Article">
   <head>
     <link rel="author" href="">
     <link rel="publisher" href="">
     <meta itemprop="name" content="Заголовок контента">.
     <meta itemprop="description" content="Описание содержимого менее 200 символов">.
     <meta itemprop="image" content="https://example.com/image.jpg">
```

**Примечание:** Эти мета-теги требуют добавления атрибутов `itemscope` и `itemtype` к тегу `<html>`.

- 📖 [Начало работы - schema.org](https://schema.org/docs/gs.html)
- 🛠 Протестируйте свою страницу с помощью [Rich Results Test](https://search.google.com/test/rich-results)


### JSON-LD

Может использоваться компанией для того, чтобы ваш сайт отображался в графе знаний, когда кто-то набирает ваш запрос. (это панель справа от результатов поиска, которая обычно появляется у крупных брендов.)

```
<script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@type": "Article",
    "author": {
      "@type": "Person",
      "name": "Your Name"
    },
    "publisher": {
      "@type": "Organization",
      "name": "Your Organization"
    },
    "headline": "Article Headline",
    "image": "https://example.com/image.jpg",
    "datePublished": "2020-02-05T08:00:00+08:00",
    "dateModified": "2020-03-05T09:20:00+08:00"
  }
</script>
```

- [Спецификация](https://www.w3.org/TR/json-ld11/)
- [Официальный сайт](https://json-ld.org/)
- [Документация от Google](https://developers.google.com/search/docs/data-types/article)

**[⬆ вернуться к началу](#оглавление)**.

### Pinterest

Pinterest позволяет запретить людям сохранять страницы вашего сайта, согласно [их центру помощи](https://help.pinterest.com/en/business/article/prevent-saves-to-pinterest-from-your-site). Описание `description` является необязательным.

```html
<meta name="pinterest" content="nopin" description="Извините, вы не можете сохранить с моего сайта!">.
```

### Facebook Instant Articles

```html
<meta charset="utf-8">
<meta property="op:markup_version" content="v1.0">

<!-- URL веб-версии вашей статьи -->
<link rel="canonical" href="https://example.com/article.html">

<!-- Стиль, который будет использоваться для этой статьи -->
<meta property="fb:article_style" content="myarticlestyle">
```

- 📖 [Создание статей - мгновенные статьи](https://developers.facebook.com/docs/instant-articles/guides/articlecreate)
- 📖 [Образцы кода - мгновенные статьи](https://developers.facebook.com/docs/instant-articles/reference)

### OEmbed

```html
<link rel="alternate" type="application/json+oembed"
 href="https://example.com/services/oembed?url=http%3A%2F%2Fexample.com%2Ffoo%2F&amp;format=json"
 title="Профиль oEmbed: JSON">
<link rel="alternate" type="text/xml+oembed"
 href="https://example.com/services/oembed?url=http%3A%2F%2Fexample.com%2Ffoo%2F&amp;format=xml"
 title="oEmbed Profile: XML">
```

- 📖 [oEmbed format](https://oembed.com/)

### QQ/Wechat

Пользователи обмениваются веб-страницами в qq wechat с помощью форматированного сообщения

```html
<meta itemprop="name" content="название акции">
<meta itemprop="image" content="http://imgcache.qq.com/qqshow/ac/v4/global/logo.png">
<meta name="description" itemprop="description" content="поделиться содержимым">
```
- 📖 [Code Format Docs](http://open.mobile.qq.com/api/mqq/index#api:setShareInfo)

**[⬆ вернуться к началу](#оглавление)**.

## Браузеры / Платформы

### Apple iOS

```html
<!-- Баннер умного приложения -->
<meta name="apple-itunes-app" content="app-id=APP_ID,affiliate-data=AFFILIATE_ID,app-argument=SOME_TEXT">

<!-- Отключить автоматическое определение и форматирование возможных телефонных номеров -->
<meta name="format-detection" content="telephone=no">

<!-- Иконка запуска (180x180px или больше) -->
<link rel="apple-touch-icon" href="/path/to/apple-touch-icon.png">

<!-- Изображение экрана запуска -->
<link rel="apple-touch-startup-image" href="/path/to/launch.png">

<!-- Заголовок значка запуска -->
<meta name="apple-mobile-web-app-title" content="Название приложения">.

<!-- Включить автономный (полноэкранный) режим -->
<meta name="apple-mobile-web-app-capable" content="yes">

<!-- Внешний вид строки состояния (не влияет, если не включен автономный режим) -->
<meta name="apple-mobile-web-app-status-bar-style" content="black">

<!-- Глубокое связывание приложений iOS -->
<meta name="apple-itunes-app" content="app-id=APP-ID, app-argument=http/url-sample.com">
<link rel="alternate" href="ios-app://APP-ID/http/url-sample.com">
```

- 📖 [Configuring Web Applications](https://developer.apple.com/library/content/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html)

### Google Android

```html
<!-- Цветовая тем приложения -->
<meta name="theme-color" content="#E64545">

<!-- Добавить на главный экран -->
<meta name="mobile-web-app-capable" content="yes">
<!-- Дополнительная информация: https://developer.chrome.com/multidevice/android/installtohomescreen -->

<!-- Глубокое связывание приложений Android -->
<meta name="google-play-app" content="app-id=package-name">
<link rel="alternate" href="android-app://package-name/http/url-sample.com">
```

### Google Chrome

```html
<link rel="chrome-webstore-item" href="https://chrome.google.com/webstore/detail/APP_ID">.

<!-- Отключить подсказку перевода -->
<meta name="google" content="notranslate">
```

### Microsoft Internet Explorer

```html
<!-- Заставить IE 8/9/10 использовать свой последний движок рендеринга -->
<meta http-equiv="x-ua-compatible" content="ie=edge">

<!-- Отключить автоматическое определение и форматирование возможных телефонных номеров расширением для браузера Skype Toolbar-->
<meta name="skype_toolbar" content="skype_toolbar_parser_compatible">

<!-- Плитки Windows -->
<meta name="msapplication-config" content="/browserconfig.xml">
```

Минимально необходимая разметка xml для `browserconfig.xml`:

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

- 📖 [Ссылка на схему конфигурации браузера](https://msdn.microsoft.com/en-us/library/dn320426.aspx)

**[⬆ вернуться к началу](#оглавление)**.

## Браузеры (китайские)

### 360 Browser

```html
<!-- Выбор порядка движков рендеринга -->
<meta name="renderer" content="webkit|ie-comp|ie-stand">
```

### QQ Mobile Browser

```html
<!-- Фиксирует экран в заданной ориентации -->
<meta name="x5-orientation" content="landscape/portrait">

<!-- Отображение этого документа в полноэкранном режиме -->
<meta name="x5-fullscreen" content="true">

<!-- Документ будет отображаться в "режиме приложения" (полноэкранный режим и т.д.) -->
<meta name="x5-page-mode" content="app">
```

### UC Mobile Browser

```html
<!-- Фиксация экрана в заданной ориентации -->
<meta name="screen-orientation" content="landscape/portrait">

<!-- Отображение этого документа в полноэкранном режиме -->
<meta name="full-screen" content="yes">

<!-- Браузер UC будет отображать изображения, даже если находится в "текстовом режиме" -->
<meta name="imagemode" content="force">

<!-- Документ будет отображаться в "режиме приложения" (полноэкранный режим, запрещающий жест и т.д.) -->
<meta name="browsermode" content="application">

<!-- Отключение "ночного режима" браузера UC для этого документа -->
<meta name="nightmode" content="disable">

<!-- Упростить документ, чтобы уменьшить передачу данных -->
<meta name="layoutmode" content="fitscreen">

<!-- Отключить функцию браузера UC "увеличивать масштаб шрифта, когда в документе много слов" -->
<meta name="wap-font-scale" content="no">
```

**[⬆ вернуться к началу](#оглавление)**.

## CSRF

```html
<!-- Токен для идентификации формы -->
<meta name="csrf-token" content="токен">
<meta name="csrf-param" content="csrf_token">
```

Подробнее про [CSRF-атаки](https://habr.com/ru/post/274457/)

**[⬆ вернуться к началу](#оглавление)**.

## Подсказки клиентов

``` html
<!-- Включает подсказки клиентов -->
<meta http-equiv="Accept-CH" content="DPR">
<meta http-equiv="Accept-CH" content="DPR, Width">
```

[Подробнее про подсказки клиентов](https://developer.mozilla.org/en-US/docs/Glossary/Client_hints)

**[⬆ вернуться к началу](#оглавление)**.

## Устаревшее

###  Значок прикрепленной вкладки Safari

В macOS 10.11 появились закреплённые закладки, но стандартные не подошли. Поэтому создали новый тип фавиконки. Далее эти значки использовались в тач-баре Макбуков. 

Для таких значков есть ряд [требований](https://developer.apple.com/library/archive/documentation/AppleApplications/Reference/SafariWebContent/pinnedTabs/pinnedTabs.html#//apple_ref/doc/uid/TP40002051-CH18-SW1):
- только SVG
- 100% чёрный вектор
- с помощью color менять цвет
- SVG должен быть однослойным
- `viewBox` должен быть равен `"0 0 16 16"`
- фон должен быть прозрачным

```html
<link rel="mask-icon" href="/path/to/icon.svg" color="blue">
```

Проблемой было то, что такие значки, хоть они и SVG, никак не менялись для тёмной темы. А прозрачный фон становился контрастным, но вы это не могли контролировать.

Сейчас для тач-бара и закрепленной вкладки хорошо подходят:
- Apple touch иконки `<link rel="apple-touch-icon" href="/custom_icon.png">`
- Фавиконка  `<link rel="icon" href="favicon.png">`
- Монограмма. Если никаких иконок нет, то значок создаётся из первой буквы заголовка страницы или имени домена верхнего уровня

Начиная с Safari 12 отдельный вариант иконок стал не нужен.

### Значок плитки Windows

```html
<meta name="msapplication-TileColor" content="#efefef">
```

Браузер Edge раньше поддерживал такой формат значков для меню "Пуск". Для последних версий Windows это больше не требуется

### Отображение документа в нужном режиме для IE

В зависимости от переданного значения `content` заставляет различные версии IE отображать документ в том или ином режиме.

```html
<meta http-equiv="X-UA-Compatible" content="IE=5">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
<meta http-equiv="X-UA-Compatible" content="IE=7">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8">
<meta http-equiv="X-UA-Compatible" content="IE=8">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE9">
<meta http-equiv="X-UA-Compatible" content="IE=9">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE10">
<meta http-equiv="X-UA-Compatible" content="IE=10">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
```

Но начиная с IE11 режимы документов устарели. Режим `Edge` стал предпочтительным.

### `shortcut` для фавиконок

```html
<link rel="shortcut icon" href="/favicon.ico">
```

`shortcut` - использовался исключительно IE.

[Почему не стоит использовать shortcut](https://mathiasbynens.be/notes/rel-shortcut-icon)

### Яндекс табло

```html
<link rel="yandex-tableau-widget" href="/manifest.json" />
```

_manifest.jons_
```json
{
"version": "1.0",
"api_version": 1,
"layout":
	{
	"logo": "https://webliberty.ru/wp-content/themes/lime/images/manifest.png",
	"color": "#e9ffd0",
	"show_title": false
	}
}
```

Яндекс для своего браузера, а точнее их [табло](https://browser.yandex.ru/help/personalization/tableau.html) позволяет указать дополнительную иконку. 
Сейчас Яндекс удалил техническую документацию по этой иконки и начали работать со стандартным веб-манифестом.

### Ссылки на приложения

[Поддержка прекращена](https://developers.facebook.com/docs/graph-api/changelog/2020-02-03-endpoint-deprecations#links)

```html
<!-- iOS -->
<meta property="al:ios:url" content="applinks://docs">
<meta property="al:ios:app_store_id" content="12345">
<meta property="al:ios:app_name" content="App Links">

<!-- Android -->
<meta property="al:android:url" content="applinks://docs">
<meta property="al:android:app_name" content="App Links">
<meta property="al:android:package" content="org.applinks">

<!-- Web fall back -->
<meta property="al:web:url" content="https://applinks.org/documentation">
```

**[⬆ вернуться к началу](#оглавление)**.

### Первый и последний документы в серии документов

- [Поддержка прекращена](https://developer.mozilla.org/en-US/docs/Web/HTML/Link_types)
- [Отсутствует в спецификации](https://html.spec.whatwg.org/multipage/links.html#linkTypes)
- [Обсуждение](https://stackoverflow.com/questions/42841618/what-is-the-alternative-to-rel-first)

```html
<!-- Первый и последний документы в серии документов, соответственно -->
<link rel="first" href="https://example.com/article/">
<link rel="last" href="https://example.com/article/?page=42">
```

## Другие ресурсы

- 📖 [HTML5 Boilerplate Docs: The HTML](https://github.com/h5bp/html5-boilerplate/blob/master/docs/html.md)
- 📖 [HTML5 Boilerplate Docs: Extend and customize](https://github.com/h5bp/html5-boilerplate/blob/master/docs/extend.md)

**[⬆ вернуться к началу](#оглавление)**.

## Связанные проекты

- [Atom HTML Head Snippets](https://github.com/joshbuchea/atom-html-head-snippets) - Atom пакет для `HEAD` сниппетов
- [Sublime Text HTML Head Snippets](https://github.com/marcobiedermann/sublime-head-snippets) - пакет Sublime Text для `HEAD` сниппетов
- [head-it](https://github.com/hemanth/head-it) - CLI интерфейс для `HEAD` сниппетов
- [vue-head](https://github.com/ktquez/vue-head) - Манипулирование метаинформацией тега `HEAD` для Vue.js

**[⬆ вернуться к началу](#оглавление)**.

## 🌐 Переводы

- 🇮🇩 [Индонезийский](https://github.com/rijdz/HEAD)
- 🇧🇷 [Бразильский португальский](https://github.com/Webschool-io/HEAD)
- 🇨🇳 [Китайский (упрощенный)](https://github.com/Amery2010/HEAD)
- 🇩🇪 [Немецкий](https://github.com/Shidigital/HEAD)
- 🇮🇹 [Итальянский](https://github.com/Fakkio/HEAD)
- 🇯🇵 [Японский](https://coliss.com/articles/build-websites/operation/work/collection-of-html-head-elements.html)
- 🇰🇷 [Корейский](https://github.com/Lutece/HEAD)
- 🇪🇸 [Испанский](https://github.com/alvaroadlf/HEAD)
- 🇹🇷 [Турецкий](https://github.com/mkg0/HEAD)

**[⬆ вернуться к началу](#оглавление)**.

## 🤝 Contributing

**Откройте `issue` или `PR`, чтобы предложить изменения или дополнения.**


## 🌟 Contributors

Посмотрите на всех супер классных [авторов](https://github.com/joshbuchea/HEAD/graphs/contributors) 🤩

## 👤 Автор оригинального репозитория

**Josh Buchea**

- GitHub: [@joshbuchea](https://github.com/joshbuchea)
- Twitter: [@joshbuchea](https://twitter.com/joshbuchea)

## 💛 Поддержка

Если этот проект был полезен для вас или вашей организации, пожалуйста, рассмотрите возможность прямой поддержки моей работы автора оригинального репозитория:

- 💛 [Sponsor me on GitHub](https://github.com/sponsors/joshbuchea)
- ⭐️ [Star this project on GitHub](https://github.com/joshbuchea/HEAD)
- 🐙 [Следуйте за Джошем на GitHub](https://github.com/joshbuchea)
- 🐦 [Следуйте за Джошем в Twitter](https://twitter.com/joshbuchea)

Всем кто помогает, спасибо! 🙏

— Josh

## 📝 Лицензия

[![CC0](https://i.creativecommons.org/p/zero/1.0/88x31.png)](https://creativecommons.org/publicdomain/zero/1.0/)

**[⬆ вернуться к началу](#оглавление)**.
