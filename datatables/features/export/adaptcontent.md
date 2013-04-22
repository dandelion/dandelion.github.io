---
layout: datatables-export
menu: export
level1: features
level2:
  url: export
  name: Export
level3:
  url: adaptcontent
  name: Adapt export's content
---

### Export :: Adapt export\'s content

It happens that some of your columns contain HTML code that you don\'t want to be rendered in the export (e.g. an \"Action\" column with some links).
By default, all column are exported but it could be useful to remove some column or just adapt its content only for exports.

In this regards, **Dandelion-Datatables** allows you to adapt export's content.

<br />
#### Using JSP
This is done thanks to the `display` column attribute. The authorized values are : `csv`, `xml`, `xls`, `xlsx `and `pdf`, i.e. all authorized export types plus `html`.

So, for instance, setting the `display` attribute to `html` means that the corresponding column will only appear in your web page (html), not in exports.
This way, you can adapt the content of each export. 

In the following example, we don\'t want HTML code to be displayed in the exported \"Mail\" column. 
That\'s why a second \"Mail\" column is added with the `display` attribute set to `csv,xls` (i.e. not `html`) and with just the bean\'s property inside (thanks to the `property` attribute).

	<datatables:table id="myTableId" data="${persons}" row="person" export="csv,xls">
	   <datatables:column title="Id" property="id" />
	   <datatables:column title="FirstName" property="firstName" />
	   <datatables:column title="LastName" property="lastName" />
	   <datatables:column title="City" property="address.town.name" display="html" />
	   <datatables:column title="Mail" display="html">
	      <a href="mailto:${person.mail}">${person.mail}</a>
	   </datatables:column>
	   <datatables:column title="Mail" property="mail" display="csv,xls" />
	   <datatables:export type="xls" includeHeader="true" fileName="my-export-name" cssClass="btn" label="xls" />
	</datatables:table>

<br />
#### Using Thymeleaf
Using Thymeleaf, just use the `dt:csv` (or `dt:*`) TD attribute to adapt the cell's content in the corresponding format.


    <table id="myTable" dt:table="true" dt:export="'pdf,xls,csv'">
        <thead>
            <tr>
                <th>Id</th>
                <th>Firstname</th>
                <th>Lastname</th>
                <th>City</th>
                <th>Mail</th>
            </tr>
        </thead>
        <tbody>
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

