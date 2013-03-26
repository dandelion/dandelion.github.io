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

#### How to build your own implementation?


Your implementation must implement [AssetsLocationWrapper](/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/AssetsLocationWrapper.html).
A wrapper is link to a unique location key.

Now, you can setup your class with configuration property [assets.location.wrapper.{location}](/dandelion/features/assets/configuration.html#assets.location.wrapper)
with `{location}` as your location key.

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
        <td>This wrapper extract the asset content for classpath
        and store it in <a href="/dandelion/features/assets/cache.html">Dandelion Assets Cache</a>.<br/>
        The wrapped location is the access url to <a href="/dandelion/features/assets/cache.html">Dandelion Assets Cache</a>.</td>
      </tr>
      <tr>
        <td>delegate</td>
        <td><a href="/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/delegate/DelegateLocationWrapper.html">DelegateLocationWrapper</a></td>
        <td>This wrapper extract the asset content for classpath,
        replace template parameters by set-up values
        and store it in <a href="/dandelion/features/assets/cache.html">Dandelion Assets Cache</a>.<br/>
        The wrapped location is the access url to <a href="/dandelion/features/assets/cache.html">Dandelion Assets Cache</a>.</td>
      </tr>
      <tr>
        <td>template</td>
        <td><a href="/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/template/TemplateLocationWrapper.html">TemplateLocationWrapper</a></td>
        <td>This wrapper delegate the content generation to the set-up object
        and store it in <a href="/dandelion/features/assets/cache.html">Dandelion Assets Cache</a>.<br/>
        The wrapped location is the access url to <a href="/dandelion/features/assets/cache.html">Dandelion Assets Cache</a>.</td>
      </tr>
      <tr>
        <td>webjars</td>
        <td><a href="/dandelion/ref/javadoc/dandelion-webjars/com/github/dandelion/extras/webjars/asset/WebjarsLocatorWrapper.html">WebjarsLocatorWrapper</a></td>
        <td>This wrapper delegate the location url creation to <a href="http://github.com/webjars/webjars-locator">webjars locator</a> based on <a href="http://webjars.org">webjars</a>.</td>
      </tr>
  </tbody>
</table>

<link rel="stylesheet" href="//ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css" />
<script src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
<script src="/assets/js/site_reference.js"></script>