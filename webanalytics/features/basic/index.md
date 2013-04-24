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

    <html>
        <head>
            ...
        </head>
        <body>
            ...
            <webanalytics:tracker provider="google" token="UA-33818546-8"/>
            <dandelion:assets />
        </body>
    </html>

##### In your Thymeleaf pages
Just use the [tracker attributes](/webanalytics/ref/thymeleaf/tracker.html) everywhere in your web pages and enable the [dandelion assets stack](/dandelion/features/assets/).

        <html xmlns:ddl="http://www.thymeleaf.org/dandelion"
              xmlns:wa="http://www.thymeleaf.org/dandelion/webanalytics"
              ddl:assets-stack="enabled"
              wa:provider="google" wa:token="UA-33818546-8">
            ...
        </html>

##### You use an unknown provider? No problem!
See in the [Providers section](/webanalytics/features/providers/) how to configure your specific provider.

