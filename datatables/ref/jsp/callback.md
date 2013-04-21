---
layout: datatables-jsp
menu: taglib
level1: ref
level2:
  url: jsp
  name: JSP
level3:
  url: callback
  name: Callback tag
---

### Callback tag
<br />

#### Description

Allows to execute a DataTables callback.

<br />
#### Usage

    <datatables:table>
       ...
       <datatables:callback type="..." function="..." />
       ...
    </datatables:table>

<br />
#### Reference

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
    <td><strong>(Required)</strong> type</td>
    <td>Type of callback</td>
    <td>cookie|<br/>createdrow|<br/>draw|<br/>footer|<br/>format|<br/>header|<br/>info|<br/>init|<br/>predraw|<br/>row</td>
    <td></td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td><strong>(Required)</strong> function</td>
    <td>Name of an external Javascript function to execute as a callback</td>
    <td></td>
    <td></td>
    <td>DOM/AJAX</td>
  </tr>
  </tbody>
</table>

<link rel="stylesheet" href="//ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css" />
<script src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js">
</script>
<script src="/assets/js/site_reference.js">
</script>