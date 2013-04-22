---
layout: datatables-thymeleaf
menu: taglib
level1: ref
level2:
  url: thymeleaf
  name: Thymeleaf
level3:
  url: tbody
  name: Tbody attributes
---

<h3>Tbody attributes</h3>
<hr />

<h4>Description</h4>
<br />

The <code>&lt;tbody&gt;</code> attributes allow you to configure the export.

<br />
<h4>Usage</h4>

    <table dt:table="true" ...>
        <thead ...>
            ...
        </thead>
        <tbody dt:xml:label="my custom label">
            ...
        </tbody>
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
    <td>dt:csv:style</td>
    <td>CSS style applied on the CSV export link(s)</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:xml:style</td>
    <td>CSS style applied on the XML export link(s)</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:pdf:style</td>
    <td>CSS style applied on the PDF export link(s)</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:xls:style</td>
    <td>CSS style applied on the XLS export link(s)</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:xlsx:style</td>
    <td>CSS style applied on the XLSX export link(s)</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:csv:class</td>
    <td>CSS class applied on the CSV export link(s)</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:xml:class</td>
    <td>CSS class applied on the XML export link(s)</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:pdf:class</td>
    <td>CSS class applied on the PDF export link(s)</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:xls:class</td>
    <td>CSS class applied on the XLS export link(s)</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:xlsx:class</td>
    <td>CSS class applied on the XLSX export link(s)</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:csv:label</td>
    <td>Label of the CSV export link(s)</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:xml:label</td>
    <td>Label of the XML export link(s)</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:pdf:label</td>
    <td>Label of the PDF export link(s)</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:xls:label</td>
    <td>Label of the XLS export link(s)</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:xlsx:label</td>
    <td>Label of the XLSX export link(s)</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:csv:filename</td>
    <td>Name of the generated CSV file containing exported data</td>
    <td></td>
    <td>The export type uppercased</td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:xml:filename</td>
    <td>Name of the generated XML file containing exported data</td>
    <td></td>
    <td>The export type uppercased</td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:pdf:filename</td>
    <td>Name of the generated PDF file containing exported data</td>
    <td></td>
    <td>The export type uppercased</td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:xls:filename</td>
    <td>Name of the generated XLX file containing exported data</td>
    <td></td>
    <td>The export type uppercased</td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:xlsx:filename</td>
    <td>Name of the generated XLSX file containing exported data</td>
    <td></td>
    <td>The export type uppercased</td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:xls:autosize</td>
    <td>Indicates whether columns should be auto-sized or not (in XLS export file) (See the <a href="http://poi.apache.org/spreadsheet/quick-guide.html#Autofit">reference</a>)</td>
    <td>true|false</td>
    <td>false</td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:xlsx:autosize</td>
    <td>Indicates whether columns should be auto-sized or not (in XLSX export file) (See the <a href="http://poi.apache.org/spreadsheet/quick-guide.html#Autofit">reference</a>)</td>
    <td>true|false</td>
    <td>false</td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:csv:header</td>
    <td>Indicates whether headers should be added in the CSV export file or not</td>
    <td>true|false</td>
    <td>true</td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:xml:header</td>
    <td>Indicates whether headers should be added in the XML export file or not</td>
    <td>true|false</td>
    <td>true</td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:pdf:header</td>
    <td>Indicates whether headers should be added in the PDF export file or not</td>
    <td>true|false</td>
    <td>true</td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:xls:header</td>
    <td>Indicates whether headers should be added in the XLS export file or not</td>
    <td>true|false</td>
    <td>true</td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:xlsx:header</td>
    <td>Indicates whether headers should be added in the XLSX export file or not</td>
    <td>true|false</td>
    <td>true</td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:cbk:cookie</td>
    <td>Indicates the name of the external Javascript function that will be called as a <a href="http://datatables.net/ref#fnCookieCallback">fnCookieCallback</a></td>
    <td></td>
    <td></td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>dt:cbk:createdrow</td>
    <td>Indicates the name of the external Javascript function that will be called as a <a href="http://datatables.net/ref#fnCreatedRow">fnCreatedRow</a></td>
    <td></td>
    <td></td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>dt:cbk:draw</td>
    <td>Indicates the name of the external Javascript function that will be called as a <a href="http://datatables.net/ref#fnDrawCallback">fnDrawCallback</a></td>
    <td></td>
    <td></td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>dt:cbk:footer</td>
    <td>Indicates the name of the external Javascript function that will be called as a <a href="http://datatables.net/ref#fnFooterCallback">fnFooterCallback</a></td>
    <td></td>
    <td></td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>dt:cbk:format</td>
    <td>Indicates the name of the external Javascript function that will be called as a <a href="http://datatables.net/ref#fnFormatNumber">fnFormatNumber</a></td>
    <td></td>
    <td></td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>dt:cbk:header</td>
    <td>Indicates the name of the external Javascript function that will be called as a <a href="http://datatables.net/ref#fnHeaderCallback">fnHeaderCallback</a></td>
    <td></td>
    <td></td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>dt:cbk:info</td>
    <td>Indicates the name of the external Javascript function that will be called as a <a href="http://datatables.net/ref#fnInfoCallback">fnInfoCallback</a></td>
    <td></td>
    <td></td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>dt:cbk:init</td>
    <td>Indicates the name of the external Javascript function that will be called as a <a href="http://datatables.net/ref#fnInitComplete">fnInitComplete</a></td>
    <td></td>
    <td></td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>dt:cbk:predraw</td>
    <td>Indicates the name of the external Javascript function that will be called as a <a href="http://datatables.net/ref#fnPreDrawCallback">fnPreDrawCallback</a></td>
    <td></td>
    <td></td>
    <td>DOM/AJAX</td>
  </tr>
  <tr>
    <td>dt:cbk:row</td>
    <td>Indicates the name of the external Javascript function that will be called as a <a href="http://datatables.net/ref#fnRowCallback">fnRowCallback</a></td>
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