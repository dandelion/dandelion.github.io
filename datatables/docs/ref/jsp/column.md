---
layout: datatables
menu: jsp
level1: ref
level2:
  url: jsp
  name: JSP
level3:
  url: column
  name: Column tag
---

### Column tag
<br />

#### Description

Describes a column of the HTML table.

<br />
#### Usage

You can either let the <code>property</code> attribute handle the content of a cell. This attribute is used to retrieve the corresponding value of the bean of the iterated collection. As a consequence, the <code>column</code> tag doesn\'t need to have a body. 

    <datatables:column title="..." property="..." />
    
Or you can set a body and put anything you want inside (HTML, other tags\...). See the <code>row</code> table attribute which is useful in that case.

    <datatables:column title="...">
        <%-- Anything you want here ! --%>
    </datatables>

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
    <td>title</td>
    <td>Column title</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>property</td>
    <td>Name of the attribute of the current object being iterated object on, regardless the data source (DOM or AJAX)</td>
    <td></td>
    <td></td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>sortable</td>
    <td>Enable or disable sorting on column</td>
    <td>true|false</td>
    <td>true</td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>sortInit</td>
    <td>If <code>sortable</code> is enabled, set the default sorting direction</td>
    <td>asc|desc</td>
    <td>asc</td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>sortDirection</td>
    <td>If <code>sortable</code> is enabled, allow to control the sorting direction(s)</td>
    <td></td>
    <td></td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>filterable</td>
    <td>Enable or disable filtering on column</td>
    <td>true|false</td>
    <td>false</td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>filterType</td>
    <td>If <code>filterable</code> is enabled, you can choose the filter type between 'select' and 'input', adding either select box or input field in the table's footer</td>
    <td>select|input</td>
    <td>input</td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>filterPlaceholder</td>
    <td>If <code>filterable</code> is enabled and <code>filterType</code> is 'input', fill in the input field with this attribute</td>
    <td></td>
    <td>The column's title</td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>filterCssClass</td>
    <td>If <code>filterable</code> is enabled and <code>filterType</code> is 'input', you can apply a CSS class to the input field with this attribute</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>cssStyle</td>
    <td>CSS style applied on header cell (<code>th</code> tag)</td>
    <td></td>
    <td></td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>cssCellStyle</td>
    <td>CSS style applied on every table cell (<code>td</code> tag)</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>cssClass</td>
    <td>CSS class applied on header cell (<code>th</code> tag)</td>
    <td></td>
    <td></td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>cssCellClass</td>
    <td>CSS class applied on every table cell (<code>td</code> tag)</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>display</td>
    <td>Comma-separated list of string which indicates in which view(s) the column's body will be displayed</td>
    <td>all|html|xml|csv|pdf|xls|xlsx</td>
    <td>all (HTML and in all exports)</td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>uid</td>
    <td>Unique arbitrary id of the column, used in relation to the columnHead tag</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>default</td>
    <td>Default value if the property's value is null</td>
    <td></td>
    <td>Empty string</td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>searchable</td>
    <td>Enable or disable filtering on column</td>
    <td>true|false</td>
    <td>true</td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>renderFunction</td>
    <td>Name of an external Javascript function that will be used to render the column</td>
    <td></td>
    <td></td>
    <td>AJAX</td>
  </tr>
  <tr>
    <td>format</td>
    <td>A MessageFormat pattern that will be used to format the `property`</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>visible</td>
    <td>Enable or disable the display of the column</td>
    <td>true|false</td>
    <td>true</td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>selector</td>
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