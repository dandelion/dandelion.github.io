---
layout: webanalytics
menu: jsp
level1: ref
level2:
  url: jsp
  name: JSP
level3:
  url: tracker
  name: Tracker tag
---

### Tracker tag

#### Description
Describes how the `tracker` tag should setup your web analytics provider.

#### Usage


    <webanalytics:tracker provider="google" token="UA-33818546-8"/>
    ...
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
    <td>provider</td>
    <td><strong>(mandatory)</strong> name of the provider</td>
    <td><a href="/webanalytics/features/providers/">a provider key</a></td>
    <td></td>
  </tr>
  <tr>
    <td>token</td>
    <td><strong>(mandatory)</strong> a valid token depending on your provider</td>
    <td>String</td>
    <td></td>
  </tr>
  </tbody>
</table>

<link rel="stylesheet" href="//ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css" />
<script src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
<script src="/assets/js/site_reference.js"></script>