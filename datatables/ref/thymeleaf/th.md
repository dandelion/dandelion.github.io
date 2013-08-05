---
layout: datatables
menu: thymeleaf
level1: ref
level2:
  url: thymeleaf
  name: Thymeleaf
level3:
  url: th
  name: Th attributes
---

<h3>Th attributes</h3>
<hr />

<h4>Description</h4>
<br />

The <code>&lt;th&gt;</code> attributes allow to configure the columns.

<br />
<h4>Usage</h4>

    <table dt:table="true" ...>
        <thead ...>
            <tr>
                <th>...</th>
                <th>...</th>
                <th dt:filterable="true">...</th>
                <th>...</th>
                <th>...</th>
            </tr>
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
    <td>dt:sortable</td>
    <td>Enable or disable sorting on column</td>
    <td>true|false</td>
    <td>true</td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>dt:sortInit</td>
    <td>If <code>dt:sortable</code> is enabled, set the default sorting direction</td>
    <td>asc|desc</td>
    <td>asc</td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>dt:sortDirection</td>
    <td>If <code>dt:sortable</code> is enabled, allow to control the sorting direction(s)</td>
    <td></td>
    <td></td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>dt:filterable</td>
    <td>Enable or disable filtering on column</td>
    <td>true|false</td>
    <td>false</td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>dt:filterType</td>
    <td>If <code>dt:filterable</code> is enabled, you can choose the filter type between 'select' and 'input', adding either select box or input field in the table's footer</td>
    <td>select|input</td>
    <td>input</td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:property</td>
    <td>Property (or nested property) that must is read from the AJAX source to fill in the corresponding column</td>
    <td></td>
    <td></td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>dt:default</td>
    <td>Default value if the property's value is null</td>
    <td>java.lang.String</td>
    <td>Empty string</td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>dt:searchable</td>
    <td>Enable or disable filtering on column</td>
    <td>true|false</td>
    <td>true</td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>dt:renderFunction</td>
    <td>Name of an external Javascript function that will be used to render the column (used with AJAX sources)</td>
    <td></td>
    <td></td>
    <td>AJAX</td>
  </tr>
  <tr>
    <td>dt:visible</td>
    <td>Enable or disable the display of the column</td>
    <td>true|false</td>
    <td>true</td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>dt:selector</td>
    <td>jQuery selector used to populate a placeholder with a filtering widget</td>
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