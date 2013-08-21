---
layout: datatables
menu: export
level1: features
level2:
  url: export
  name: Export
level3:
  url: exportoptions
  name: Export options
---

### Export :: Export options

Some options are available to customize your exports.

<br />
#### Remove header (all formats)
Usually a header that contains all column's heads is created in all exports.

##### Using JSP
You can remove it using the [`includeHeader`](/datatables/ref/jsp/export.html#includeHeader) attribute of the [`datatables:export`](/datatables/ref/jsp/export.html) tag, which is defaults set to `true`.

	<datatables:table id="myFirstTableId" data="${persons}" row="person" export="csv">
	   <datatables:column title="Id" property="id" />
	   <datatables:column title="FirstName" property="firstName" />
	   <datatables:column title="LastName" property="lastName" />
	   <datatables:column title="City" property="address.town.name" />
	   <datatables:column title="Mail">
	      <a href="mailto:${person.mail}">${person.mail}</a>
	   </datatables:column>
	   <datatables:export type="csv" includeHeader="false" fileName="my-export-name" cssClass="btn" label="CSV without header row" />
	</datatables:table>

##### Using Thymeleaf
Since v0.8.8, you can use the following attributes :

 *	[`dt:csv:header`](/datatables/ref/thymeleaf/tbody.html#dt:csv:header)
 *	[`dt:xml:header`](/datatables/ref/thymeleaf/tbody.html#dt:xml:header)
 *	[`dt:pdf:header`](/datatables/ref/thymeleaf/tbody.html#dt:pdf:header)
 *	[`dt:xls:header`](/datatables/ref/thymeleaf/tbody.html#dt:xls:header)
 *	[`dt:xlsx:header`](/datatables/ref/thymeleaf/tbody.html#dt:xlsx:header)

In the following example, header will appear in the CSV export but not in the PDF one.

    <table id="myTable" dt:table="true" dt:export="'pdf,csv'">
        <thead>
            <tr>
                <th>Id</th>
                <th>Firstname</th>
                <th>Lastname</th>
                <th>City</th>
                <th>Mail</th>
            </tr>
        </thead>
        <tbody dt:csv:class="'btn'" dt:pdf:class="'btn'" dt:csv:header="true" dt:pdf:header="false">
            <tr th:each="person : ${persons}">
                <td th:text="${person.id}">1</td>
                <td th:text="${person.firstName}">John</td>
                <td th:text="${person.lastName}">Doe</td>
                <td th:text="${person.address != null and person.address.town != null} ? ${person.address.town.name} : ''">Nobody knows !</td>
                <td dt:csv="${person.mail}" dt:pdf="${person.mail}">
                    <a th:href="${'mailto:' + person.mail}" th:text="${person.mail}">john@doe.com</a>
                </td>
            </tr>
        </tbody>
    </table>


<br />
#### Column auto-sizing (only XLS/XLSX)
For XLS and XLSX export formats, you can tell Dandelion-Datatables to auto-size columns.

##### Using JSP
Just set the [`autoSize`](/datatables/ref/jsp/export.html#autoSize) attribute of the [`datatables:export`](/datatables/ref/jsp/export.html) tag to `true`.

	<datatables:table id="mySecondTableId" data="${persons}" row="person" export="xls">
	   <datatables:column title="Id" property="id" />
	   <datatables:column title="FirstName" property="firstName" />
	   <datatables:column title="LastName" property="lastName" />
	   <datatables:column title="City" property="address.town.name" />
	   <datatables:column title="Mail">
	      <a href="mailto:${person.mail}">${person.mail}</a>
	   </datatables:column>
	   <datatables:export type="XLS" autoSize="true" fileName="my-export-name" cssClass="btn" label="XLS" />
	</datatables:table>

##### Using Thymeleaf
Since v0.8.8, you can use the following attributes :

 *	[`dt:xls:autosize`](/datatables/ref/thymeleaf/tbody.html#dt:xls:autosize)
 *	[`dt:xlsx:autosize`](/datatables/ref/thymeleaf/tbody.html#dt:xlsx:autosize)

In the following example, all the columns of the XLS export will be auto-sized.

    <table id="myTable" dt:table="true" dt:export="xls">
        <thead>
            <tr>
                <th>Id</th>
                <th>Firstname</th>
                <th>Lastname</th>
                <th>City</th>
                <th>Mail</th>
            </tr>
        </thead>
        <tbody dt:xls:class="btn" dt:xls:autosize="true">
            <tr th:each="person : ${persons}">
                <td th:text="${person.id}">1</td>
                <td th:text="${person.firstName}">John</td>
                <td th:text="${person.lastName}">Doe</td>
                <td th:text="${person.address != null and person.address.town != null} ? ${person.address.town.name} : ''">Nobody knows !</td>
                <td dt:xls="${person.mail}">
                    <a th:href="${'mailto:' + person.mail}" th:text="${person.mail}">john@doe.com</a>
                </td>
            </tr>
        </tbody>
    </table>
