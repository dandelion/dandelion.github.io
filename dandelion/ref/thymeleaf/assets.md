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

<h3>Assets attributes</h3>

<h4>Description</h4>

The <code>assets</code> attributes allow to set the options for the assets, i.e. add, excludes, \...

Don\'t forget to add the prefix <code>ddl:</code> before each attribute.

<h4>Usage on any HTML element</h4>

    <html xmlns:ddl="http://github.com/dandelion"
            ddl:assets-scopes="scope1,scope2">
        <head>
            <link href="asset1.css" ddl:assets-excludedAssets="asset1" rel="stylesheet">
        </head>
        <body ddl:assets-scopes="scope3">
            <div ddl:assets-excludedScopes="scope4,scope5"></div>
            <script src="asset2.js" ddl:assets-excludedAssets="asset2" type="text/javascript"></script>
        </body>
    </html>

The minimal usage of this dialect is

    <html xmlns:ddl="http://github.com/dandelion"
            ddl:assets-stack="enabled">
       ...
    </html>

the **ddl:assets-stack** is automaticaly enabled if you use another **assets** attribute of this dialect.


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
    <td>ddl:assets-stack</td>
    <td><strong>(optional)</strong> enable assets stack management</td>
    <td>enabled</td>
    <td></td>
  </tr>
  <tr>
    <td>ddl:assets-scopes</td>
    <td><strong>(optional)</strong> add assets by scope</td>
    <td>Value or comma-separated values</td>
    <td></td>
  </tr>
  <tr>
    <td>ddl:assets-excludedScopes</td>
    <td><strong>(optional)</strong> exclude assets by scope</td>
    <td>Value or comma-separated values</td>
    <td></td>
  </tr>
  <tr>
    <td>ddl:assets-excludedAssets</td>
    <td><strong>(optional)</strong> exclude assets by name</td>
    <td>Value or comma-separated values</td>
    <td></td>
  </tr>
  </tbody>
</table>

<link rel="stylesheet" href="//ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css" />
<script src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
<script src="/assets/js/site_reference.js"></script>