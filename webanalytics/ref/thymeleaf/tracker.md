---
layout: webanalytics
menu: thymeleaf
level1: ref
level2:
  url: thymelead
  name: Thymeleaf
level3:
  url: tracker
  name: Tracker attributes
---


### Tracker attributes

#### Description
Describes how the tracker attributes should setup your webanalytics.

#### Usage

    <html xmlns:wa="http://www.thymeleaf.org/dandelion/webanalytics"
       wa:provider="google" wa:token="UA-33818546-8">
          ...
    </html>

or

    <html xmlns:wa="http://www.thymeleaf.org/dandelion/webanalytics"
       wa:tracker="token" wa:token="UA-33818546-8">
	  ...
    </html>

or

    <html xmlns:wa="http://www.thymeleaf.org/dandelion/webanalytics"
       wa:tracker="all">
	  ...
    </html>

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
    <td>wa:provider</td>
    <td><strong>(optional)</strong> name of the provider</td>
    <td><a href="/webanalytics/features/providers/">a provider key</a></td>
    <td>google</td>
  </tr>
  <tr>
    <td>wa:token</td>
    <td><strong>(optional)</strong> a valid token depending on your provider</td>
    <td>String</td>
    <td></td>
  </tr>
  <tr>
    <td>wa:tracker</td>
    <td><strong>(optional)</strong> a valid token depending on your provider</td>
    <td>String</td>
    <td>token|all</td>
  </tr>
  </tbody>
</table>

<link rel="stylesheet" href="//ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css" />
<script src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
<script src="/assets/js/site_reference.js"></script>