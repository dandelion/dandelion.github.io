---
layout: datatables-thymeleaf
menu: taglib
level1: ref
level2:
  url: thymeleaf
  name: Thymeleaf
level3:
  url: thead
  name: Thead attributes
---

<h3>Thead attributes</h3>
<hr />

<h4>Description</h4>
<br />

The <code>&lt;thead&gt;</code> attributes are dedicated to the plugins : Scroller, FixedHeader, \...

Don\'t forget to add the prefix <code>dt:</code> before each attribute.

<br />
<h4>Usage</h4>

    <table dt:table="true" ...>
        <thead dt:scroller="true">
            ...
        </thead>
        ...
    </table>

<br />
<h4>Reference</h4>

<table id="tableReference" class="table table-striped table-bordered">
  <thead>
    <tr>
      <th>Name</th>
      <th>Description</th>
      <th>Value(s)</th>
      <th>Default</th>
      <th>Data source</th>
    </tr>
  </thead>
  <tbody>
  <tr>
    <td>dt:scroller</td>
    <td>Enable or disable the DataTables Scroller plugin</td>
    <td>true|false</td>
    <td>false</td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>dt:colreorder</td>
    <td>Enable or disable the DataTables ColReorder plugin</td>
    <td>true|false</td>
    <td>false</td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>dt:fixedheader</td>
    <td>Enable or disable the DataTables FixedHeader plugin</td>
    <td>true|false</td>
    <td>false</td>
    <td>DOM/AJAX</td>
  </tr>
  </tbody>
</table>

<link rel="stylesheet" href="//ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css" />
<script src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js">
</script>
<script src="/assets/js/site_reference.js">
</script>