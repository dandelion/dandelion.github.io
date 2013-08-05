---
layout: datatables
menu: jsp
level1: ref
level2:
  url: jsp
  name: JSP
level3:
  url: extrafile
  name: ExtraFile tag
---

### ExtraFile Tag
<br />

#### Description
<br />

Specify the location of an extra file containing Javascript code which will be merged with the main Javascript generated file.

<br />
#### Usage

    <datatables:table>
       ...
       <datatables:extraFile src="..." />
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
    <td>(<strong>required</strong>) Location of the file containing Javascript code</td>
    <td></td>
    <td></td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>insert</td>
    <td>Specify where the extra file content must be inserted in the main Javascript generated file</td>
    <td>BEFOREALL : at the beginning of the main Javascript generated file<br/>AFTERSTARTDOCUMENTREADY : just after the jQuery <a href="http://api.jquery.com/ready/">.ready() function</a><br />BEFORENDDOCUMENTREADY : just before the end of the jQuery <a href="http://api.jquery.com/ready/">.ready() function</a><br />AFTERALL : at the end of the main Javascript file</td>
    <td>BEFOREALL</td>
    <td>DOM/AJAX</td>
  </tr>
  </tbody>
</table>

<link rel="stylesheet" href="//ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css" />
<script src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js">
</script>
<script src="/assets/js/site_reference.js">
</script>