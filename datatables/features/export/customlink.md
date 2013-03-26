---
layout: datatables-export
menu: export
level1: features
level2:
  url: export
  name: Export
level3:
  url: customlink
  name: Link style and position
---

### Export :: Links style and position

By defaut, export links are a bit ugly but you can of course customize them to fit your needs.

<br />
#### Link style
##### Using JSP
You can use the [`datatables:export`](/datatables/ref/jsp/export.html) tag to customize the export links. This tag allows you to configure one type of export.

Using this tag, you can for instance add CSS classes to the links or change the link\'s label.

	<datatables:table id="myTableId" data="${persons}" export="csv,xml">
	   <datatables:column title="Id" property="id" />
	   <datatables:column title="FirstName" property="firstName" />
	   <datatables:column title="LastName" property="lastName" />
	   <datatables:column title="City" property="address.town.name" />
	   <datatables:column title="Mail" property="mail" />
	   <datatables:export type="csv" cssClass="btn btn-success" />
	   <datatables:export type="xml" cssClass="btn btn-info" label="XML export !" />
	</datatables:table>

##### Using Thymeleaf
Since 0.8.8, several Thymeleaf attributes are available, allowing you to adapt the CSS style or label of the export links.

To adapt the CSS style of export links, you can use the following `tbody` attributes :

 *	[`dt:csv:style`](/datatables/ref/thymeleaf/tbody.html#dt:csv:style) and [`dt:csv:class`](/datatables/ref/thymeleaf/tbody.html#dt:csv:class) : allowing you to set the style or class HTML attributes of the CSV export link
 *	[`dt:xml:style`](/datatables/ref/thymeleaf/tbody.html#dt:xml:style) and [`dt:xml:class`](/datatables/ref/thymeleaf/tbody.html#dt:xml:class) : allowing you to set the style or class HTML attributes of the XML export link
 *	[`dt:pdf:style`](/datatables/ref/thymeleaf/tbody.html#dt:pdf:style) and [`dt:pdf:class`](/datatables/ref/thymeleaf/tbody.html#dt:pdf:class) : allowing you to set the style or class HTML attributes of the PDF export link
 *	[`dt:xls:style`](/datatables/ref/thymeleaf/tbody.html#dt:xls:style) and [`dt:xls:class`](/datatables/ref/thymeleaf/tbody.html#dt:xls:class) : allowing you to set the style or class HTML attributes of the XLS export link
 *	[`dt:xlsx:style`](/datatables/ref/thymeleaf/tbody.html#dt:xlsx:style) and [`dt:xlxs:class`](/datatables/ref/thymeleaf/tbody.html#dt:xlxs:class) : allowing you to set the style or class HTML attributes of the XLSX export link

To adapt the label's link, you can use the `tbody` attributes :

 *	[`dt:csv:label`](/datatables/ref/thymeleaf/tbody.html#dt:csv:label) : allowing you to set a label for the CSV export link
 *	[`dt:xml:label`](/datatables/ref/thymeleaf/tbody.html#dt:xml:label) : allowing you to set a label for the XML export link
 *	[`dt:pdf:label`](/datatables/ref/thymeleaf/tbody.html#dt:pdf:label) : allowing you to set a label for the PDF export link
 *	[`dt:xls:label`](/datatables/ref/thymeleaf/tbody.html#dt:xls:label) : allowing you to set a label for the XLS export link
 *	[`dt:xlsx:label`](/datatables/ref/thymeleaf/tbody.html#dt:xlsx:label) : allowing you to set a label for the XLSX export link
 
In the following example, CSV and XLS links have been customed.

	<table id="myTableId" dt:table="true" dt:export="xls,csv">
		<thead>
            <tr>
                <th>Id</th>
                <th>Firstname</th>
                <th>Lastname</th>
                <th>City</th>
                <th>Mail</th>
            </tr>
        </thead>
        <tbody dt:csv:class="btn" dt:xls:class="btn" dt:csv:label="custom label for CSV" dt:xls:label="custom label for XLS">
            <tr th:each="person : ${persons}">
                <td th:text="${person.id}">1</td>
                <td th:text="${person.firstName}">John</td>
                <td th:text="${person.lastName}">Doe</td>
                <td th:text="${person.address != null and person.address.town != null} ? ${person.address.town.name} : ''">Nobody knows !</td>
                <td dt:csv="'csv'+${person.mail}" dt:xls="'xls'+${person.mail}">
                    <a th:href="${'mailto:' + person.mail}" th:text="${person.mail}">john@doe.com</a>
                </td>
            </tr>
        </tbody>
	</table>

<br />
#### Link position
##### Using JSP
Depending on your needs, you may want to move links around the table. You can do it using the [`exportLinks`](/datatables/ref/thymeleaf/table.html#exportLinks) table attribute.

Just set on or more values (comma-separated) among `top_left`, `top_middle`, `top_right`, `bottom_left`, `bottom_middle` and `bottom_right`.

	<datatables:table id="mySecondTableId" data="${persons}" export="csv,xml" exportLinks="top_right,bottom_right">
	    <datatables:column title="Id" property="id" />
	    <datatables:column title="FirstName" property="firstName" />
	    <datatables:column title="LastName" property="lastName" />
	    <datatables:column title="City" property="address.town.name" />
	    <datatables:column title="Mail" property="mail" />
	    <datatables:export type="csv" cssClass="btn btn-info" />
	    <datatables:export type="xml" cssClass="btn btn-info" />
	</datatables:table>

##### Using Thymeleaf
Since 0.8.8, you can use the [`dt:exportLinks`](/datatables/ref/thymeleaf/table.html#exportLinks) table attribute.

	<table id="myTable" dt:table="true" dt:export="pdf,xls,csv" dt:exportLinks="top_right,bottom_right">
        <thead>
            <tr>
                <th>Id</th>
                <th>Firstname</th>
                <th>Lastname</th>
                <th>City</th>
                <th>Mail</th>
            </tr>
        </thead>
        <tbody dt:csv:class="btn btn-success" dt:xls:class="btn btn-info" dt:pdf:class="btn btn-warning">
        	<tr th:each="person : ${persons}">
                <td th:text="${person.id}">1</td>
                <td th:text="${person.firstName}">John</td>
                <td th:text="${person.lastName}">Doe</td>
                <td th:text="${person.address != null and person.address.town != null} ? ${person.address.town.name} : ''">Nobody knows !</td>
                <td dt:csv="'csv'+${person.mail}" dt:xls="'xls'+${person.mail}">
                    <a th:href="${'mailto:' + person.mail}" th:text="${person.mail}">john@doe.com</a>
                </td>
            </tr>
	    </tbody>
    </table>
