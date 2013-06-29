---
layout: webanalytics
menu: basic
level1: features
level2:
  url: basic
  name: Basic Setup
---

### Basic Setup

#### Usage
Your web application use a Webanalytics provider to gather some metrics. **Dandelion-Webanalytics** will help you to set this up!

#### How to setup your webanalytics provider?
You can easily setup your webanalytics provider with a [built-in provider](/webanalytics/features/providers/).

##### In your JSP
Just use the [tracker tag](/webanalytics/ref/jsp/tracker.html) everywhere in your web pages and finalize the configuration with the [dandelion assets tag](/dandelion/features/assets/).

	<%@ taglib prefix="dandelion" uri="http://github.com/dandelion" %>
	<%@ taglib prefix="webanalytics" uri="http://github.com/dandelion/webanalytics" %>
    <html>
        <head>
        </head>
        <body>
            <webanalytics:tracker provider="google" token="UA-33818546-8"/>
            <dandelion:assets />
        </body>
    </html>

Or in Standalone version

	<%@ taglib prefix="webanalytics" uri="http://github.com/dandelion/webanalytics" %>
    <html>
        <head>
        </head>
        <body>
            <webanalytics:tracker provider="google" token="UA-33818546-8" useAssets="false"/>
        </body>
    </html>

##### In your Thymeleaf pages
Just use the [tracker attributes](/webanalytics/ref/thymeleaf/tracker.html) everywhere in your web pages (enable automatically the [dandelion assets stack](/dandelion/features/assets/).

	<html xmlns:wa="http://www.thymeleaf.org/dandelion/webanalytics"
              wa:provider="google" wa:token="UA-33818546-8">
            ...
        </html>

##### You use an unknown provider? No problem!
See in the [Providers section](/webanalytics/features/providers/) how to configure your specific provider.

#### How to setup globally your webanalytics provider?
If
* your provider is the same on all your pages?
* your token is the same on all yours pages?

You can add the [webanalytics configuration](/webanalytics/ref/configuration/) on [dandelion configuration](/dandelion/ref/configuration/).
After that, you don't need to fill the `provider` or `token` attributes in your JSP taglib or Thymeleaf Dialect.

##### In your JSP

      <webanalytics:tracker provider="google" token="UA-33818546-8"/>

Became

    <webanalytics:tracker/>

Or, if you have only setup the global provider configuration

      <webanalytics:tracker token="UA-33818546-8"/>

##### In your Thymeleaf pages

    <html wa:provider="google" wa:token="UA-33818546-8">

Became

    <html wa:tracker="all" >

Or, if you have only setup the global provider configuration

    <html wa:tracker="token" wa:token="UA-33818546-8">
