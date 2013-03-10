---
layout: dandelion
menu: jsp
level1: ref
level2:
  url: jsp
  name: JSP
level3:
  url: assets
  name: Assets tag
---

### Assets tag
<br />

#### Description
Decribes how the Assets feature should generate the assets.

<br />
#### Usage

    <dandelion:assets ... />

<br />
#### Reference

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
    <td>renderer</td>
    <td><strong>(optional)</strong> renderer the assets</td>
    <td>true|false</td>
    <td>true</td>
  </tr>
  <tr>
    <td>scopes</td>
    <td><strong>(optional)</strong> add assets by scope</td>
    <td>values separated by comma</td>
    <td></td>
  </tr>
  <tr>
    <td>excludedScopes</td>
    <td><strong>(optional)</strong> exclude assets by scope</td>
    <td>values separated by comma</td>
    <td></td>
  </tr>
  <tr>
    <td>excludedAssets</td>
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