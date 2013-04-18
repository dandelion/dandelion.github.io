---
layout: dandelion
menu: assets
level1: features
level2:
  url: assets
  name: Assets Stack
level3:
  url: wrappers
  name: Wrapper Implementations
---

### Wrapper Implementations

<br />
#### Built-in implementations

<table id="tableReference" class="table table-striped table-bordered">
  <thead>
    <tr>
      <th style="width: 20%">Location Key</th>
      <th style="width: 20%">Class</th>
      <th style="width: 60%">Description</th>
    </tr>
  </thead>
  <tbody>
      <tr>
        <td>classpath</td>
        <td><a href="/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/classpath/ClasspathLocationWrapper.html">ClasspathLocationWrapper</a></td>
        <td>This wrapper extracts the asset content for classpath
        and stores it in the <a href="/dandelion/features/assets/cache.html">Dandelion Assets Cache</a>.<br/>
        The wrapped location is the access url to the <a href="/dandelion/features/assets/cache.html">Dandelion Assets Cache</a>.</td>
      </tr>
      <tr>
        <td>delegate</td>
        <td><a href="/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/delegate/DelegateLocationWrapper.html">DelegateLocationWrapper</a></td>
        <td>This wrapper extracts the asset content for classpath,
        replaces template parameters by set-up values
        and stores it in the <a href="/dandelion/features/assets/cache.html">Dandelion Assets Cache</a>.<br/>
        The wrapped location is the access url to the <a href="/dandelion/features/assets/cache.html">Dandelion Assets Cache</a>.</td>
      </tr>
      <tr>
        <td>template</td>
        <td><a href="/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/template/TemplateLocationWrapper.html">TemplateLocationWrapper</a></td>
        <td>This wrapper delegates the content generation to the set-up object
        and stores it in the <a href="/dandelion/features/assets/cache.html">Dandelion Assets Cache</a>.<br/>
        The wrapped location is the access url to the <a href="/dandelion/features/assets/cache.html">Dandelion Assets Cache</a>.</td>
      </tr>
      <tr>
        <td>webjars</td>
        <td><a href="/dandelion/ref/javadoc/dandelion-webjars/com/github/dandelion/extras/webjars/asset/WebjarsLocatorWrapper.html">WebjarsLocatorWrapper</a></td>
        <td>This wrapper delegates the location url creation to <a href="http://github.com/webjars/webjars-locator">webjars locator</a> based on <a href="http://webjars.org">webjars</a>.</td>
      </tr>
  </tbody>
</table>

<br />
#### How to build your own implementation?

Your custom wrapper must implement [AssetsLocationWrapper](/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/AssetsLocationWrapper.html).
A wrapper is linked to a unique location key.

Now, you can setup your class with configuration property [assets.location.wrapper.{location}](/dandelion/features/assets/configuration.html#assets.location.wrapper)
with `{location}` as your location key.


<link rel="stylesheet" href="//ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css" />
<script src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
<script src="/assets/js/site_reference.js"></script>