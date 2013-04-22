---
layout: datatables-jsp
menu: taglib
level1: ref
level2:
  url: jsp
  name: JSP
level3:
  url: extraconf
  name: ExtraConf tag
---

### ExtraConf Tag
<br />

#### Description
<br />

Specify the location of a file containing a JSON-formatted DataTables configuration to merge with the generated one.

<br />
#### Usage

    <datatables:table>
       ...
       <datatables:extraConf src="..." />
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
    <td>src</td>
    <td>(<strong>required</strong>) Location of the file containing the extra DataTables configuration</td>
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