---
layout: datatables-thymeleaf
menu: taglib
level1: ref
level2:
  url: thymeleaf
  name: Thymeleaf
level3:
  url: td
  name: Td attributes
---

<h3>Td attributes</h3>
<hr />

<h4>Description</h4>
<br />

The <code>&lt;tbody&gt;</code> attributes allow you to configure the export.

<br />
<h4>Usage</h4>

    <table dt:table="true" ...>
        ...
        <tbody>
            <tr>
                ...
                <td dt:csv="${bean.mail}">
                    <a th:href="${'mailto:' + bean.mail}" th:text="${bean.mail}">john@doe.com</a>
                </td>
                ...
            </tr>
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
    <td>dt:csv</td>
    <td>Processed Thymeleaf expression that will appear in the CSV export</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:xml</td>
    <td>Processed Thymeleaf expression that will appear in the XML export</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:pdf</td>
    <td>Processed Thymeleaf expression that will appear in the PDF export</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:xls</td>
    <td>Processed Thymeleaf expression that will appear in the XLS export</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  <tr>
    <td>dt:xlsx</td>
    <td>Processed Thymeleaf expression that will appear in the XLSX export</td>
    <td></td>
    <td></td>
    <td>DOM</td>
  </tr>
  </tbody>
</table>

<link rel="stylesheet" href="//ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css" />
<script src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js">
</script>
<script src="/assets/js/site_reference.js">
</script>