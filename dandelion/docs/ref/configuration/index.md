---
layout: dandelion
menu: properties
level1: ref
level2:
  url: configuration
  name: Configuration
---

### Configuration properties

#### Description

In **Dandelion**, you can configure all features in your application by configuring some property files.

If you decide to create your own configuration files, just ensure that :

 * All files start with **dandelion**
 * All files end with **.properties** (e.g. _dandelion-foo.properties_)
 * All files are located in the folder `dandelion` at the root of the application classpath (e.g. under `src/main/resources` if you use Maven)
 * The main properties file is named **dandelion.properties**.

You can easily access to the loaded configuration by :

    com.github.dandelion.core.config.Configuration.getProperties();

#### Properties

<table id="tableReference" class="table table-striped table-bordered">
  <thead>
    <tr>
      <th>Name</th>
      <th>Description</th>
      <th>Value(s)</th>
      <th>Default</th>
    </tr>
  </thead>
  <tbody>
      <tr>
	<td>assets.loaders</td>
	<td>Define all loaders for assets (ordered)</td>
	<td>implements <i>AssetsLoader</i></td>
	<td><a href="/dandelion/features/assets/loaders.html">AssetsJsonLoader</a></td>
      </tr>
      <tr>
	<td>assets.locations</td>
	<td>Define possible locations on assets (ordered)</td>
	<td>List of String separated by comma</td>
	<td>remote,local</td>
      </tr>
      <tr>
	<td>assets.excluded.scopes</td>
	<td>Define the excluded scopes on load</td>
	<td>List of String separated by comma</td>
	<td></td>
      </tr>
      <tr>
	<td>assets.excluded.assets</td>
	<td>Define the excluded assets on load</td>
	<td>List of String separated by comma</td>
	<td></td>
      </tr>
      <tr>
	<td>assets.excluded.assets</td>
	<td>Define the excluded assets on load</td>
	<td>List of String separated by comma</td>
	<td></td>
      </tr>
      <tr>
	<td>assets.location.wrapper.{location}</td>
	<td>Define the wrapper for an asset {location}</td>
	<td>implements <i>AssetsLocationWrapper</i></td>
	<td><a href="/dandelion/features/assets/wrappers.html">Built-in implementations</a>
	</td>
      </tr>
      <tr>
	<td>assets.servlet.cache.control</td>
	<td>Define the value of <b>Cache-Control</b> in response header for the <a href="/dandelion/features/assets/cache.html">Dandelion Assets Cache</a></td>
	<td>String</td>
	<td>no-cache</td>
      </tr>
      <tr>
	<td>assets.cache</td>
	<td>Define the 'Assets Cache' system under the <a href="/dandelion/features/assets/cache.html">Dandelion Assets Cache</a></td>
	<td>implements <i>AssetsCache</i></td>
	<td><a href="/dandelion/features/assets/cache.html">DefaultAssetsCache</a></td>
      </tr>
  </tbody>
</table>

<link rel="stylesheet" href="//ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css" />
<script src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
<script src="/assets/js/site_reference.js"></script>