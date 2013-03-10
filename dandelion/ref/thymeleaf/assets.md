---
layout: dandelion
menu: thymeleaf
level1: ref
level2:
  url: thymelead
  name: Thymeleaf
level3:
  url: assets
  name: Assets attributes
---


<h3>Table attributes</h3>
<hr />

<h4>Description</h4>
<br />

The <code>assets</code> attributes allow to set the options for the assets, ie add, excludes, \...

Don\'t forget to add the prefix <code>ddl:</code> before each attribute.

<br />
<h4>Usage on any HTML element</h4>

    <html ddl:assets-scopes="...">
        ...
    </html>

<br />
<h4>Reference</h4>

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
    <td>ddl:assets-scopes</td>
    <td><strong>(optional)</strong> add assets by scope</td>
    <td>values separated by comma</td>
    <td></td>
  </tr>
  <tr>
    <td>ddl:assets-excludedScopes</td>
    <td><strong>(optional)</strong> exclude assets by scope</td>
    <td>values separated by comma</td>
    <td></td>
  </tr>
  <tr>
    <td>ddl:assets-excludedAssets</td>
    <td><strong>(optional)</strong> exclude assets by name</td>
    <td>values separated by comma</td>
    <td></td>
  </tr>
  </tbody>
</table>

<link rel="stylesheet" href="//ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css" />
<script src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js">
</script>
<script src="/assets/js/site_reference.js">
</script>