---
layout: webanalytics
menu: providers
level1: features
level2:
  url: providers
  name: Webanalytics Providers
---

### Webanalytics Providers

#### Built-in providers

<table class="table table-striped table-bordered">
  <thead>
    <tr>
      <th style="width: 20%">Provider</th>
      <th style="width: 20%">Provider Key</th>
      <th style="width: 60%">Website</th>
    </tr>
  </thead>
  <tbody>
      <tr>
        <td>Google Analytics (default)</td>
        <td>google</td>
        <td><a href="http://www.google.com/analytics/">http://www.google.com/analytics/</a></td>
      </tr>
      <tr>
        <td>Yahoo! Web Analytics</td>
        <td>yahoo</td>
        <td><a href="http://web.analytics.yahoo.com/">http://web.analytics.yahoo.com/</a></td>
      </tr>
  </tbody>
</table>

<br />
#### How to create another provider?

A _Webanalytics Provider_ is based on the [Assets Stack feature](/dandelion/features/assets) of [Dandelion Core](/dandelion/).

Let's start with an example : how to define a **Dandelion Webanalytics** provider for **Google Analytics**?

##### Step 1 : Define a template for your Webanalytics script

In the classpath, under the file **/dandelion/template/google.js**, define the template for **Google Analytics** (found [here](https://support.google.com/analytics/answer/1008080?hl=en&ref_topic=1008079))

    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', '%WEB_ANALYTICS_TOKEN%']);
    _gaq.push(['_trackPageview']);

    (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();

We just replace **UA-XXXXX-Y** (from the source) with **%WEB_ANALYTICS_TOKEN%**.

%WEB_ANALYTICS_TOKEN% is the pattern to setup your **token** from the provider ([more details](/webanalytics/features/basic/))

##### Step 2 : Define your asset in the _Dandelion Assets Stack_

In the classpath, under the file **/dandelion/google.json**, define the asset for **Google Analytics**

    {
        "scope": "google",
        "parent": "none",
        "assets": [
            {
                "name": "google-template",
                "version": "nobody_cares",
                "type": "js",
                "locations": {
                    "template": "dandelion/template/google.js"
                }
            }
        ]
    }

Here we define an asset named **${provider}-template** under a scope named **${provider}**, the asset has **only one location** named **template** ([see his location wrapper](/dandelion/features/assets/wrappers.html)).

##### Step 3 : just enjoy using it! :-)