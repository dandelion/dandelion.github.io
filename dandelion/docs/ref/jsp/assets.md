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

#### Description
Describes how the Assets feature should generate the assets.

#### Usage


	<%@ taglib prefix="dandelion" uri="http://github.com/dandelion" %>
    <dandelion:assets
		renderer="false"
		scopes="scope1,scope2,..."
		excludedScopes="scope4,scope5,..."
		excludedAssets="asset1,asset2,..." />


Always add in your page's footer the following tag (needed to render the assets) :


    <dandelion:assets />


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
    <td><strong>(optional)</strong> render the assets</td>
    <td>true|false</td>
    <td>true</td>
  </tr>
  <tr>
    <td>scopes</td>
    <td><strong>(optional)</strong> Scope or list of scopes to add in your page</td>
    <td>Value or comma-separated values</td>
    <td></td>
  </tr>
  <tr>
    <td>excludedScopes</td>
    <td><strong>(optional)</strong> Scope or list of scopes to exclude from your page</td>
    <td>Value or comma-separated values</td>
    <td></td>
  </tr>
  <tr>
    <td>excludedAssets</td>
    <td><strong>(optional)</strong> Asset or list of assets to exclude from your page</td>
    <td>Value or comma-separated values</td>
    <td></td>
  </tr>
  </tbody>
</table>

<link rel="stylesheet" href="//ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css" />
<script src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
<script src="/assets/js/site_reference.js"></script>