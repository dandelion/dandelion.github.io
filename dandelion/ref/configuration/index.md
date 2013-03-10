---
layout: dandelion
menu: properties
level1: ref
level2:
  url: configuration
  name: Configuration
---

### Configuration properties
<hr />

#### Description
<br />

In **Dandelion**, you can configure all features on your application by configure some properties files.

If you decide to create your own configuration files, just ensure that :

 * All files are properties files start with <strong>dandelion</strong>
 * All files are properties files ends with <strong>.properties</strong>
 * All files are located at the folder `dandelion` on the root of the application classpath (e.g. under `src/main/resources` if you use Maven)
 * The main properties file is named <strong>dandelion.properties</strong>

You can access easily to the loaded configuration by :

    com.github.dandelion.core.config.Configuration.getProperties();

<br />
<h4>Reference</h4>

<table id="reference" class="table table-striped table-bordered">
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
        <td>com.github.dandelion.core.asset.<br/>loader.AssetsJsonLoader</td>
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
        <td>none</td>
      </tr>
      <tr>
        <td>assets.excluded.assets</td>
        <td>Define the excluded assets on load</td>
        <td>List of String separated by comma</td>
        <td>none</td>
      </tr>
      <tr>
        <td>assets.excluded.assets</td>
        <td>Define the excluded assets on load</td>
        <td>List of String separated by comma</td>
        <td>none</td>
      </tr>
      <tr>
        <td>assets.location.wrapper.{location}</td>
        <td>Define the wrapper for an asset {location}</td>
        <td>implements <i>AssetsLocationWrapper</i></td>
        <td>
            <ul>
                <li><b>classpath :</b><br/>com.github.dandelion.core.asset.<br/>classpath.ClasspathLocationWrapper</li>
                <li><b>template :</b><br/>com.github.dandelion.core.asset.<br/>delegate.DelegateLocationWrapper</li>
                <li><b>delegate :</b><br/>com.github.dandelion.core.asset.<br/>template.TemplateLocationWrapper</li>
                <li><b>webjars :</b><br/>com.github.dandelion.extras.<br/>webjars.asset.WebjarsLocatorWrapper</li>
            </ul>
        </td>
      </tr>
  </tbody>
</table>

<link rel="stylesheet" href="//ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css" />
<script src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js">
</script>
<script src="/assets/js/site_reference.js">
</script>