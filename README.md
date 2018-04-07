# HEAD

[![CC0](https://img.shields.io/badge/license-CC0-green.svg)](https://creativecommons.org/publicdomain/zero/1.0/)
[![Contributors](https://img.shields.io/github/contributors/joshbuchea/head.svg)](https://github.com/joshbuchea/HEAD/graphs/contributors)

Una lista de todo lo que \*podría\* entrar en el `<head>` de tu documento

## Tabla de Contenidos

- [Mínimos Recomendados](#mínimos-recomendados)
- [Elementos](#elementos)
- [Meta](#meta)
- [Enlaces](#enlaces)
- [Iconos](#iconos)
- [Social](#social)
  - [Facebook Open Graph](#facebook-open-graph)
  - [Tarjetas de Twitter](#tarjetas-de-twitter)
  - [Privacidad de Twitter](#privacidad-de-twitter)
  - [Google+ / Schema.org](#google--schemaorg)
  - [Pinterest](#pinterest)
  - [Artículos Instantáneos de Facebook](#artículos-instantáneos-de-facebook)
  - [OEmbed](#oembed)
- [Navegadores / Plataformas](#navegadores--plataformas)
  - [Apple iOS](#apple-ios)
  - [Google Android](#google-android)
  - [Google Chrome](#google-chrome)
  - [Microsoft Internet Explorer](#microsoft-internet-explorer)
- [Nevgadores (Chino)](#navegadores-chino)
  - [360 Browser](#360-browser)
  - [QQ Mobile Browser](#qq-mobile-browser)
  - [UC Mobile Browser](#uc-mobile-browser)
- [Enlaces a una App](#enlaces-a-una-app)
- [Otros Recursos](#otros-recursos)
- [Proyectos Relacionados](#related-projects)
- [Otros Formatos](#oros-formatos)
- [Traducciones](#traducciones)
- [Contribuye](#contribuye)
  - [Colaboradores](#colaboradores)
- [Autor](#autor)
- [Licencia](#licencia)

## Mínimos Recomendados

A continuación se muestran los elementos esenciales para cualquier página web (páginas web / aplicaciones):

```html
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!--
  Las 2 meta etiquetas anteriores *deben* ser lo primerno en el <head>
  para garantizar de manera consistente la representación adecuada de documentos.
  Cualquier otro elemento principal debe venir *despues* de estas etiquetas.
 -->
<title>Título de la Página</title>
```

**[⬆ volver a arriba](#tabla-de-contenidos)**

## Elementos

Los elementos Validos `<head>` son: `meta`, `link`, `title`, `style`, `script`, `noscript`, y `base`.

Estos elementos proporcionan información sobre cómo un documento debe ser percibido y representado por las tecnologías web. p.ej. navegadores, motores de búsqueda, bots, etc.

```html
<!--
  Establezca la codificación de caracteres para este documento, de modo que
  todos los personajes dentro del espacio UTF-8 (como emoji)
  se renderizan correctamente.
-->
<meta charset="utf-8">

<!-- Establece el título del documento -->
<title>Título de la Página</title>

<!-- Establece la URL base para todas las URL relativas dentro del documento -->
<base href="http://example.com/page.html">

<!-- Enlace a un archivo CSS externo -->
<link rel="stylesheet" href="styles.css">

<!-- Se usa para agregar CSS en el documento -->
<style>
  /* ... */
</style>

<!-- Etiquetas JavaScript y No-JavaScript -->
<script src="script.js"></script>
<script>
  // function(s) go here
</script>
<noscript>
  <!-- Alternativa No JS -->
</noscript>
```

**[⬆ volver a arriba](#tabla-de-contenidos)**

## Meta

```html
<!--
  Las 2 meta etiquetas anteriores *deben* ser lo primerno en el <head>
  para garantizar de manera consistente la representación adecuada de documentos.
  Cualquier otro elemento principal debe venir *despues* de estas etiquetas.
-->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!--
  Permite el control sobre dónde se cargan los recursos.
  Colocalo lo más arriba posible en el <head>, ya que la etiqueta  
  solo se aplica a los recursos declarados después.
-->
<meta http-equiv="Content-Security-Policy" content="default-src 'self'">

<!-- Nombre de la aplicación web (solo debe usarse si página web se usa como una aplicación) -->
<meta name="application-name" content="Application Name">

<!-- Tema de Color para Chrome, Firefox OS y Opera -->
<meta name="theme-color" content="#4285f4">

<!-- Breve descripción del documento (límite de 150 caracteres) -->
<!-- Este contenido *puede* usarse como parte de los resultados del motor de búsqueda. -->
<meta name="description" content="A description of the page">

<!-- Controla el comportamiento del rastreo e indexación del motor de búsqueda -->
<meta name="robots" content="index,follow"><!-- Todos los Motores de Búsqueda -->
<meta name="googlebot" content="index,follow"><!-- Específico de Google -->

<!-- Le dice a Google que no muestre el cuadro de búsqueda de enlaces de sitio -->
<meta name="google" content="nositelinkssearchbox">

<!-- Le dice a Google que no proporcione una traducción para este documento -->
<meta name="google" content="notranslate">

<!-- Verifica la propiedad del sitio web -->
<meta name="google-site-verification" content="verification_token"><!-- Google Search Console -->
<meta name="yandex-verification" content="verification_token"><!-- Yandex Webmasters -->
<meta name="msvalidate.01" content="verification_token"><!-- Bing Webmaster Center -->
<meta name="alexaVerifyID" content="verification_token"><!-- Alexa Console -->
<meta name="p:domain_verify" content="code_from_pinterest"><!-- Pinterest Console-->
<meta name="norton-safeweb-site-verification" content="norton_code"><!-- Norton Safe Web -->

<!-- Identifica el software utilizado para compilar el documento (es decir, WordPress, Dreamweaver) -->
<meta name="generator" content="program">

<!-- Breve descripción del asunto de su documento -->
<meta name="subject" content="your document's subject">

<!-- Da una clasificación general de edad basada en el contenido del documento -->
<meta name="rating" content="General">

<!-- Permite el control sobre cómo se pasa la información de referencia -->
<meta name="referrer" content="no-referrer">

<!-- Desactiva la detección automática y el formateo de posibles números de teléfono -->
<meta name="format-detection" content="telephone=no">

<!-- Desactiva completamente la búsqueda previa de DNS configurandolo como "off" -->
<meta http-equiv="x-dns-prefetch-control" content="off">

<!-- Almacena una cookie en el navegador web del cliente con fines de identificación -->
<meta http-equiv="set-cookie" content="name=value; expires=date; path=url">

<!-- Especifica el documento para que aparezca en un marco específico -->
<meta http-equiv="Window-Target" content="_value">

<!-- Geo etiquetas -->
<meta name="ICBM" content="latitude, longitude">
<meta name="geo.position" content="latitude;longitude">
<meta name="geo.region" content="country[-state]"><!-- Código de país (ISO 3166-1): obligatorio, código de estado (ISO 3166-2): opcional; p.ej. content = "ES" / content = "ES-MAD" -->
<meta name="geo.placename" content="city/town"><!-- p.ej. content="Madrid" -->
```

- 📖 [Meta etiquetas que Google entiende](https://support.google.com/webmasters/answer/79812?hl=en)
- 📖 [WHATWG Wiki: MetaExtensiones](https://wiki.whatwg.org/wiki/MetaExtensions)
- 📖 [ICBM en Wikipedia](https://en.wikipedia.org/wiki/ICBM_address#Modern_use)
- 📖 [Geotagging en Wikipedia](https://en.wikipedia.org/wiki/Geotagging#HTML_pages)

**[⬆ volver a arriba](#tabla-de-contenidos)**

## Enlaces

```html
<!-- Apunta a una hoja de estilo externa -->
<link rel="stylesheet" href="http://example.com/styles.css">

<!-- Ayuda a prevenir problemas de contenido duplicado -->
<link rel="canonical" href="http://example.com/article/?page=2">

<!-- Enlaces a una versión AMP HTML del documento actual -->
<link rel="amphtml" href="http://example.com/path/to/amp-version.html">

<!-- Enlaces a un archivo JSON que especifica las credenciales de "instalación" para las aplicaciones web -->
<link rel="manifest" href="manifest.json">

<!-- Enlaces a información sobre el autor (es) del documento-->
<link rel="author" href="humans.txt">

<!-- Refiere a una declaración de derechos de autor que se aplica al contexto del enlace -->
<link rel="license" href="copyright.html">

<!-- Da una referencia a una ubicación en su documento que puede estar en otro idioma -->
<link rel="alternate" href="https://es.example.com/" hreflang="es">

<!-- Proporciona información sobre un autor u otra persona -->
<link rel="me" href="https://google.com/profiles/thenextweb" type="text/html">
<link rel="me" href="mailto:nombre@example.com">
<link rel="me" href="sms:+34612345678">

<!-- Enlaces a un documento que describe una colección de registros, documentos u otros materiales de interés histórico -->
<link rel="archives" href="http://example.com/archives/">

<!-- Enlaces a recursos de nivel superior en una estructura jerárquica -->
<link rel="index" href="http://example.com/article/">

<!-- Proporciona una autorreferencia: útil cuando el documento tiene múltiples referencias posibles -->
<link rel="self" type="application/atom+xml" href="http://example.com/atom.xml">

<!-- Los documentos primero, último, anterior y siguiente en una serie de documentos, respectivamente -->
<link rel="first" href="http://example.com/article/">
<link rel="last" href="http://example.com/article/?page=42">
<link rel="prev" href="http://example.com/article/?page=1">
<link rel="next" href="http://example.com/article/?page=3">

<!-- Se usa cuando se utiliza un servicio de terceros para mantener un blog -->
<link rel="EditURI" href="http://example.com/xmlrpc.php?rsd" type="application/rsd+xml" title="RSD">

<!-- Forma un comentario automático cuando otro blog de WordPress se vincula a su blog o publicación de WordPress -->
<link rel="pingback" href="http://example.com/xmlrpc.php">

<!-- Notifica una URL cuando la vincula a su documento -->
<link rel="webmention" href="http://example.com/webmention">

<!-- Permite publicar en su propio dominio usando un cliente Micropub -->
<link rel="micropub" href="http://example.com/micropub">

<!-- Open Search -->
<link rel="search" href="/open-search.xml" type="application/opensearchdescription+xml" title="Search Title">

<!-- Feeds -->
<link rel="alternate" href="https://feeds.feedburner.com/example" type="application/rss+xml" title="RSS">
<link rel="alternate" href="http://example.com/feed.atom" type="application/atom+xml" title="Atom 0.3">

<!-- Prefetching, preloading, prebrowsing -->
<!-- Más info: https://css-tricks.com/prefetching-preloading-prebrowsing/ -->
<link rel="dns-prefetch" href="//example.com/">
<link rel="preconnect" href="https://www.example.com/">
<link rel="prefetch" href="https://www.example.com/">
<link rel="prerender" href="http://example.com/">
<link rel="preload" href="image.png" as="image">
```

- 📖 [Relaciones de Enlace](https://www.iana.org/assignments/link-relations/link-relations.xhtml)

**[⬆ volver a arriba](#tabla-de-contenidos)**

## Iconos

```html
<!-- Para IE 10 y versiones inferiores -->
<!-- Coloca el 'favicon.ico' en el directorio raíz; no es necesario etiquetar -->

<!-- Ícono en la resolución más alta que necesitamos para -->
<link rel="icon" sizes="192x192" href="/path/to/icon.png">

<!-- Apple Touch Icon (reutilizar 192px icon.png) -->
<link rel="apple-touch-icon" href="/path/to/apple-touch-icon.png">

<!-- Icono de la pestaña fijada en Safari -->
<link rel="mask-icon" href="/path/to/icon.svg" color="blue">
```

- 📖 [Todo Sobre los Favicons (Y los Iconos Táctiles))](https://bitsofco.de/all-about-favicons-and-touch-icons/)
- 📖 [Cómo Crear Iconos de Pestañas Fijas](https://developer.apple.com/library/content/documentation/AppleApplications/Reference/SafariWebContent/pinnedTabs/pinnedTabs.html)
- 📖 [Favicon Cheat Sheet](https://github.com/audreyr/favicon-cheat-sheet)
- 📖 [Iconos y Colores del Navegador](https://developers.google.com/web/fundamentals/design-and-ux/browser-customization/)

**[⬆ volver a arriba](#tabla-de-contenidos)**

## Social

### Facebook Open Graph

```html
<meta property="fb:app_id" content="123456789">
<meta property="og:url" content="http://example.com/page.html">
<meta property="og:type" content="website">
<meta property="og:title" content="Título del Contenido">
<meta property="og:image" content="http://example.com/image.jpg">
<meta property="og:description" content="Descripción Aquí">
<meta property="og:site_name" content="Nombre del Sitio">
<meta property="og:locale" content="es_ES">
<meta property="article:author" content="">
```

- 📖 [Markup de Facebook Open Graph](https://developers.facebook.com/docs/sharing/webmasters#markup)
- 📖 [Protocolo Open Graph](http://ogp.me/)
- 🛠 Pon a prueba tu página con el [Facebook Sharing Debugger](https://developers.facebook.com/tools/debug/)

### Tarjetas de Twitter

```html
<meta name="twitter:card" content="summary">
<meta name="twitter:site" content="@cuenta_de_la_web">
<meta name="twitter:creator" content="@cuenta_individual">
<meta name="twitter:url" content="http://example.com/page.html">
<meta name="twitter:title" content="Título del Contenido">
<meta name="twitter:description" content="Descripción del contenido (menos de 200 caracteres)">
<meta name="twitter:image" content="http://example.com/image.jpg">
```

- 📖 [Comenzar con las tarjetas — Twitter Developers](https://dev.twitter.com/cards/getting-started)
- 🛠 Pon a prueba tu página con el [Twitter Card Validator](https://cards-dev.twitter.com/validator)

### Privacidad de Twitter
Si incorpora los tweets en su sitio web, Twitter puede usar información de su sitio para adaptar el contenido y las sugerencias a los usuarios de Twitter. [Más sobre las opciones de privacidad de Twitter](https://dev.twitter.com/web/overview/privacy#what-privacy-options-do-website-publishers-have).
```html
<!-- no permitir que Twitter use la información de su sitio para fines de personalización -->
<meta name="twitter:dnt" content="on">
```

### Google+ / Schema.org

```html
<html lang="" itemscope itemtype="http://schema.org/Article">
    <head>
      <link rel="author" href="">
      <link rel="publisher" href="">
      <meta itemprop="name" content="Título del Contenido">
      <meta itemprop="description" content="Descripción del contenido (menos de 200 caracteres)">
      <meta itemprop="image" content="http://example.com/image.jpg">
```

**Nota:** Este marcado requiere que los atributos se agreguen a su etiqueta html superior

- 🛠 Pon a prueba tu página con la [Herramienta de Prueba de Datos Estructurados](https://developers.google.com/structured-data/testing-tool/)

### Pinterest

Pinterest le permite evitar que las personas guarden cosas de su sitio web, de acuerdo a [su centro de ayuda](https://help.pinterest.com/en/articles/prevent-people-saving-things-pinterest-your-site). La `description` es opcional.

```html
<meta name="pinterest" content="nopin" description="Lo siento, ¡no puedes guardar desde mi sitio web!">
```

### Artículos Instantáneos de Facebook

```html
<meta charset="utf-8">
<meta property="op:markup_version" content="v1.0">

<!-- La URL de la versión web de tu artículo -->
<link rel="canonical" href="http://example.com/article.html">

<!-- El estilo que se utilizará para este artículo -->
<meta property="fb:article_style" content="myarticlestyle">
```

- 📖 [Creando Artículos - Artículos Instantáneos](https://developers.facebook.com/docs/instant-articles/guides/articlecreate)
- 📖 [Ejemplos de Código: Artículos Instantáneos](https://developers.facebook.com/docs/instant-articles/reference)

### OEmbed

```html
<link rel="alternate" type="application/json+oembed"
  href="http://example.com/services/oembed?url=http%3A%2F%2Fexample.com%2Ffoo%2F&amp;format=json"
  title="oEmbed Profile: JSON">
<link rel="alternate" type="text/xml+oembed"
  href="http://example.com/services/oembed?url=http%3A%2F%2Fexample.com%2Ffoo%2F&amp;format=xml"
  title="oEmbed Profile: XML">
```

- 📖 [Formato oEmbed](http://oembed.com/)

**[⬆ volver a arriba](#tabla-de-contenidos)**

## Navegadores / Plataformas

### Apple iOS

```html
<!-- Smart App Banner -->
<meta name="apple-itunes-app" content="app-id=APP_ID,affiliate-data=AFFILIATE_ID,app-argument=SOME_TEXT">

<!-- Disable automatic detection and formatting of possible phone numbers -->
<meta name="format-detection" content="telephone=no">

<!-- Launch Icon (180x180px or larger) -->
<link rel="apple-touch-icon" href="/path/to/apple-touch-icon.png">

<!-- Launch Screen Image -->
<link rel="apple-touch-startup-image" href="/path/to/launch.png">

<!-- Launch Icon Title -->
<meta name="apple-mobile-web-app-title" content="App Title">

<!-- Enable standalone (full-screen) mode -->
<meta name="apple-mobile-web-app-capable" content="yes">

<!-- Status bar appearance (has no effect unless standalone mode is enabled) -->
<meta name="apple-mobile-web-app-status-bar-style" content="black">

<!-- iOS app deep linking -->
<meta name="apple-itunes-app" content="app-id=APP-ID, app-argument=http/url-sample.com">
<link rel="alternate" href="ios-app://APP-ID/http/url-sample.com">
```

- 📖 [Configurando Aplicaciones Web](https://developer.apple.com/library/content/documentation/AppleApplications/Reference/SafariWebContent/ConfiguringWebApplications/ConfiguringWebApplications.html)

### Google Android

```html
<meta name="theme-color" content="#E64545">

<!-- Añadir a la pantalla principal -->
<meta name="mobile-web-app-capable" content="yes">
<!-- Más info: https://developer.chrome.com/multidevice/android/installtohomescreen -->

<!-- Android app deep linking -->
<meta name="google-play-app" content="app-id=package-name">
<link rel="alternate" href="android-app://package-name/http/url-sample.com">
```

### Google Chrome

```html
<link rel="chrome-webstore-item" href="https://chrome.google.com/webstore/detail/APP_ID">

<!-- Desactiva la solicitud de traducción -->
<meta name="google" content="notranslate">
```

### Microsoft Internet Explorer

```html
<!-- Fuerza a IE 8/9/10 a utilizar su último motor de renderizado -->
<meta http-equiv="x-ua-compatible" content="ie=edge">

<!-- Deshabilite la detección automática y el formateo de posibles números de teléfono mediante la extensión del navegador Skype Toolbar -->
<meta name="skype_toolbar" content="skype_toolbar_parser_compatible">

<!-- Windows Tiles -->
<meta name="msapplication-config" content="/browserconfig.xml">
```

Marcado XML mínimo requerido para `browserconfig.xml`:

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

- 📖 [Referencia de esquema de configuración del navegador](https://msdn.microsoft.com/en-us/library/dn320426.aspx)

**[⬆ volver a arriba](#tabla-de-contenidos)**

## Navegadores (Chino)

### 360 Browser

```html
<!-- Seleccione el orden del motor de renderizado -->
<meta name="renderer" content="webkit|ie-comp|ie-stand">
```

### QQ Mobile Browser

```html
<!-- Bloquea la pantalla en la orientación especificada -->
<meta name="x5-orientation" content="landscape/portrait">

<!-- Mostrar este documento en pantalla completa -->
<meta name="x5-fullscreen" content="true">

<!-- El documento se mostrará en "modo aplicación" (pantalla completa, etc.) -->
<meta name="x5-page-mode" content="app">
```

### UC Mobile Browser

```html
<!-- Bloquea la pantalla en la orientación especificada -->
<meta name="screen-orientation" content="landscape/portrait">

<!-- Mostrar este documento en pantalla completa -->
<meta name="full-screen" content="yes">

<!-- El buscador UC mostrará imágenes incluso si está en "modo texto" -->
<meta name="imagemode" content="force">

<!-- El documento se mostrará en "modo aplicación" (pantalla completa, gesto prohibido, etc.) -->
<meta name="browsermode" content="application">

<!-- Desactivado el "modo nocturno" de UC Browser para este documento -->
<meta name="nightmode" content="disable">

<!-- Simplifica el documento para reducir la transferencia de datos -->
<meta name="layoutmode" content="fitscreen">

<!-- Desactive la función de UC Browser de "escalar la fuente cuando hay muchas palabras en este documento" -->
<meta name="wap-font-scale" content="no">
```

- 📖 [Documentación de UC Browser](http://www.uc.cn/download/UCBrowser_U3_API.doc)

**[⬆ volver a arriba](#tabla-de-contenidos)**

## Enlaces a una App

```html
<!-- iOS -->
<meta property="al:ios:url" content="applinks://docs">
<meta property="al:ios:app_store_id" content="12345">
<meta property="al:ios:app_name" content="Nombre de la App">

<!-- Android -->
<meta property="al:android:url" content="applinks://docs">
<meta property="al:android:app_name" content="Nombre de la App">
<meta property="al:android:package" content="org.applinks">

<!-- Web fall back -->
<meta property="al:web:url" content="http://applinks.org/documentation">
```

- 📖 [Enlaces de la Aplicación](http://applinks.org/documentation/)

**[⬆ volver a arriba](#tabla-de-contenidos)**

## Otros Recursos

- 📖 [Documentación de HTML5 Boilerplate: El HTML](https://github.com/h5bp/html5-boilerplate/blob/master/dist/doc/html.md)
- 📖 [Documentación de HTML5 Boilerplate: Extender y personalizar](https://github.com/h5bp/html5-boilerplate/blob/master/dist/doc/extend.md)

**[⬆ volver a arriba](#tabla-de-contenidos)**

## Proyectos Relacionados

- [Atom HTML Head Snippets](https://github.com/joshbuchea/atom-html-head-snippets) - Paquete para Atom de snippets del `HEAD`
- [Sublime Text HTML Head Snippets](https://github.com/marcobiedermann/sublime-head-snippets) - Paqeuete para Sublime Text de snippets del `HEAD`
- [head-it](https://github.com/hemanth/head-it) - CLI interface para snippets del `HEAD`
- [vue-head](https://github.com/ktquez/vue-head) - Manipulando la metai nformación de la etiqueta `HEAD` para Vue.js

**[⬆ volver a arriba](#tabla-de-contenidos)**

## Otros Formatos

- 📄 [PDF](https://gitprint.com/alvaroadlf/HEAD/edit/master/README.md)

**[⬆ volver a arriba](#tabla-de-contenidos)**

## Traducciones

- 🇬🇧 [English](https://github.com/joshbuchea/HEAD)
- 🇪🇸 [Castellano/Español](https://github.com/alvaroadlf/HEAD)
- 🇧🇷 [Brazilian Portuguese](https://github.com/Webschool-io/HEAD)
- 🇨🇳 [Chinese (Simplified)](https://github.com/Amery2010/HEAD)
- 🇮🇹 [Italian](https://github.com/Fakkio/HEAD)
- 🇯🇵 [Japanese](http://coliss.com/articles/build-websites/operation/work/collection-of-html-head-elements.html)
- 🇰🇷 [Korean](https://github.com/Lutece/HEAD)
- 🇷🇺 [Russian/Русский](https://github.com/Konfuze/HEAD)
- 🇹🇷 [Turkish/Türkçe](https://github.com/mkg0/HEAD)

**[⬆ volver a arriba](#tabla-de-contenidos)**

## Contribuye

**Abra un problema o una solicitud de extracción para sugerir cambios o adiciones.**

### Colaboradores

Echa un vistazo a todos los geniales [colaboradores](https://github.com/joshbuchea/HEAD/graphs/contributors).

## Autor

**[Josh Buchea](https://joshbuchea.com/)**
Traducido por: **[Álvaro Araoz](https://imalvaro.com/)**

## Licencía

[![CC0](https://i.creativecommons.org/p/zero/1.0/88x31.png)](https://creativecommons.org/publicdomain/zero/1.0/)

**[⬆ volver a arriba](#tabla-de-contenidos)**
