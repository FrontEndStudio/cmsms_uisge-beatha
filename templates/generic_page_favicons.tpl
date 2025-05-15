<link rel="icon" type="image/x-icon" href="{$theme_relative_url}/favicons/favicon.ico">
<link rel="icon" type="image/png" sizes="16x16" href="{$theme_relative_url}/favicons/favicon-16x16.png">
<link rel="icon" type="image/png" sizes="32x32" href="{$theme_relative_url}/favicons/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="48x48" href="{$theme_relative_url}/favicons/favicon-48x48.png">
<link rel="manifest" href="{$theme_relative_url}/favicons/manifest.webmanifest">
<meta name="mobile-web-app-capable" content="yes">
<meta name="theme-color" content="#fff">
<meta name="application-name" content="cmsms_uisge-beatha">
<link rel="apple-touch-icon" sizes="57x57" href="{$theme_relative_url}/favicons/apple-touch-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="{$theme_relative_url}/favicons/apple-touch-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="{$theme_relative_url}/favicons/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="{$theme_relative_url}/favicons/apple-touch-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="{$theme_relative_url}/favicons/apple-touch-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="{$theme_relative_url}/favicons/apple-touch-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="{$theme_relative_url}/favicons/apple-touch-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="{$theme_relative_url}/favicons/apple-touch-icon-152x152.png">
<link rel="apple-touch-icon" sizes="167x167" href="{$theme_relative_url}/favicons/apple-touch-icon-167x167.png">
<link rel="apple-touch-icon" sizes="180x180" href="{$theme_relative_url}/favicons/apple-touch-icon-180x180.png">
<link rel="apple-touch-icon" sizes="1024x1024" href="{$theme_relative_url}/favicons/apple-touch-icon-1024x1024.png">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
<meta name="apple-mobile-web-app-title" content="cmsms_themes_optimizer">
<meta name="msapplication-TileColor" content="#fff">
<meta name="msapplication-TileImage" content="{$theme_relative_url}/favicons/mstile-144x144.png">
<meta name="msapplication-config" content="{$theme_relative_url}/favicons/browserconfig.xml">

{capture}
<h1>@todo clean up: I don't think this is needed anymore!</h1>
{strip}
{* favicons *}
{* <link rel="icon" type="image/png" href="{$theme_relative_url}/favicons/favicon.ico">
<link rel="icon" type="image/png" href="{$theme_relative_url}/favicons/favicon-16x16.png" sizes="16x16">  
<link rel="icon" type="image/png" href="{$theme_relative_url}/favicons/favicon-32x32.png" sizes="32x32">  
<link rel="icon" type="image/png" href="{$theme_relative_url}/favicons/android-chrome-192x192.png" sizes="192x192"> *}

<link rel="icon" type="image/png" href="{CGSmartImage src="{$theme_relative_url}/favicons/favicon.ico" noresponsive=1 notag=1 force_ext=1 noembed={$noembed}}">
<link rel="icon" type="image/png" href="{CGSmartImage src="{$theme_relative_url}/favicons/favicon-16x16.png" noresponsive=1 notag=1 force_ext=1 noembed={$noembed} filter_resizetofit='16,16,#ff000,126'}" sizes="16x16">
<link rel="icon" type="image/png" href="{CGSmartImage src="{$theme_relative_url}/favicons/favicon-32x32.png" noresponsive=1 notag=1 force_ext=1 noembed={$noembed} filter_resizetofit='32,32,#ff000,126'}">
<link rel="icon" type="image/png" href="{CGSmartImage src="{$theme_relative_url}/favicons/android-chrome-192x192.png" noresponsive=1 notag=1 force_ext=1 noembed={$noembed} filter_resizetofit='192,192,#ff000,126'}" sizes="192x192">

{* disable tap highlight on IE *}
<meta name="msapplication-tap-highlight" content="no">

{* web application manifest *}
<link rel="manifest" href="{$theme_relative_url}/favicons/manifest.json">

{* add to homescreen for chrome on android *}
<meta name="mobile-web-app-capable" content="yes">
<meta name="application-name" content="{$sitename}">
<link rel="icon" type="image/png" sizes="192x192" href="{CGSmartImage src="{$theme_relative_url}/favicons/android-chrome-192x192.png" noresponsive=1 notag=1 force_ext=1 noembed={$noembed} filter_resizetofit='192,192,#ff000,126'}">
{*<link rel="apple-touch-icon" href="{CGSmartImage src="{$theme_relative_url}/favicons/android-icon-192x192.png" noresponsive=1 notag=1 force_ext=1 noembed={$noembed} filter_resizetofit='192,192,#ff000,126'}">*}
{* add to homescreen for safari on ios *}
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="apple-mobile-web-app-title" content="{$sitename}">
{* <meta name="application-name" content="{$sitename}"> *}
{* <link rel="apple-touch-icon" href="{$theme_relative_url}/favicons/apple-touch-icon-120x120.png">
<link rel="apple-touch-icon" sizes="57x57" href="{$theme_relative_url}/favicons/apple-touch-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="{$theme_relative_url}/favicons/apple-touch-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="{$theme_relative_url}/favicons/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="{$theme_relative_url}/favicons/apple-touch-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="{$theme_relative_url}/favicons/apple-touch-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="{$theme_relative_url}/favicons/apple-touch-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="{$theme_relative_url}/favicons/apple-touch-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="{$theme_relative_url}/favicons/apple-touch-icon-152x152.png">
<link rel="apple-touch-icon" sizes="167x167" href="{$theme_relative_url}/favicons/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="180x180" href="{$theme_relative_url}/favicons/apple-touch-icon-180x180.png">
<link rel="mask-icon" href="{$theme_relative_url}/favicons/safari-pinned-tab.svg" color="#ffffff"> *}

<link rel="apple-touch-icon" href="{CGSmartImage src="{$theme_relative_url}/favicons/apple-touch-icon-120x120.png" noresponsive=1 notag=1 force_ext=1 noembed={$noembed} filter_resizetofit='120,120,#ff000,126'}">
<link rel="apple-touch-icon" sizes="57x57" href="{CGSmartImage src="{$theme_relative_url}/favicons/apple-touch-icon-57x57.png" noresponsive=1 notag=1 force_ext=1 noembed={$noembed} filter_resizetofit='57,57,#ff000,126'}">
<link rel="apple-touch-icon" sizes="60x60" href="{CGSmartImage src="{$theme_relative_url}/favicons/apple-touch-icon-60x60.png" noresponsive=1 notag=1 force_ext=1 noembed={$noembed} filter_resizetofit='60,60,#ff000,126'}">
<link rel="apple-touch-icon" sizes="72x72" href="{CGSmartImage src="{$theme_relative_url}/favicons/apple-touch-icon-72x72.png" noresponsive=1 notag=1 force_ext=1 noembed={$noembed} filter_resizetofit='72,72,#ff000,126'}">
<link rel="apple-touch-icon" sizes="76x76" href="{CGSmartImage src="{$theme_relative_url}/favicons/apple-touch-icon-76x76.png" noresponsive=1 notag=1 force_ext=1 noembed={$noembed} filter_resizetofit='76,76,#ff000,126'}">
<link rel="apple-touch-icon" sizes="114x114" href="{CGSmartImage src="{$theme_relative_url}/favicons/apple-touch-icon-114x114.png" noresponsive=1 notag=1 force_ext=1 noembed={$noembed} filter_resizetofit='114,114,#ff000,126'}">
<link rel="apple-touch-icon" sizes="120x120" href="{CGSmartImage src="{$theme_relative_url}/favicons/apple-touch-icon-120x120.png" noresponsive=1 notag=1 force_ext=1 noembed={$noembed} filter_resizetofit='120,120,#ff000,126'}">
<link rel="apple-touch-icon" sizes="144x144" href="{CGSmartImage src="{$theme_relative_url}/favicons/apple-touch-icon-144x144.png" noresponsive=1 notag=1 force_ext=1 noembed={$noembed} filter_resizetofit='144,144,#ff000,126'}">
<link rel="apple-touch-icon" sizes="152x152" href="{CGSmartImage src="{$theme_relative_url}/favicons/apple-touch-icon-152x152.png" noresponsive=1 notag=1 force_ext=1 noembed={$noembed} filter_resizetofit='152,152,#ff000,126'}">
<link rel="apple-touch-icon" sizes="167x167" href="{CGSmartImage src="{$theme_relative_url}/favicons/apple-touch-icon.png" noresponsive=1 notag=1 force_ext=1 noembed={$noembed} filter_resizetofit='167,167,#ff000,126'}">
<link rel="apple-touch-icon" sizes="180x180" href="{CGSmartImage src="{$theme_relative_url}/favicons/apple-touch-icon-180x180.png" noresponsive=1 notag=1 force_ext=1 noembed={$noembed} filter_resizetofit='180,180,#ff000,126'}">
{*<link rel="mask-icon" href="{CGSmartImage src="{$theme_relative_url}/favicons/safari-pinned-tab.svg" force_ext=1 noresponsive=1 notag=1 noembed={$noembed}}" color="#ffffff"> *}
<link rel="mask-icon" href="{$theme_relative_url}/favicons/safari-pinned-tab.svg" color="#ffffff">

{* 
 tile icon for win8 (144x144 + tile color)
 Note: the 270x will be scaled to 150x on low-density screens.
*}
<meta name="msapplication-config" content="{$theme_relative_url}/favicons/browserconfig.xml">
<meta name="msapplication-TileImage" content="{$theme_relative_url}/favicons/mstile-144x144.png">
<meta name="msapplication-TileColor" content="#ffffff">

{* color the status bar on mobile devices *}
<meta name="theme-color" content="#5f8bb2">
{/strip}
{/capture}