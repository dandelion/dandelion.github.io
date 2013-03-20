---
layout: datatables-export
menu: export
level1: features
level2:
  url: export
  name: Export
level3:
  url: multiple
  name: Allowing multiple export formats
---

### Export :: Allowing multiple export formats

You can activate export in multiple formats by comma-separating them in the [`export`](/datatables/ref/jsp/table.html#export) / [`dt:export`](/datatables/ref/thymeleaf/table.html#export) table attribute (JSP/Thymeleaf).

**Dandelion-Datatables** will then generate multiple links depending on the allowed formats.

<br />
#### Using JSP

	<datatables:table id="myTableId" data="${persons}" row="person" export="pdf,xls,csv">
	   <datatables:column title="Id" property="id" />
	   <datatables:column title="FirstName" property="firstName" />
	   <datatables:column title="LastName" property="lastName" />
	   <datatables:column title="City" property="address.town.name" />
	   <datatables:column title="Mail">
	      <a href="mailto:${person.mail}">${person.mail}</a>
	   </datatables:column>
	</datatables:table>

<br />
#### Using Thymeleaf

	<table id="myTableId" dt:table="true" dt:export="pdf,xls,csv">
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
	         <td th:text="${person.address.town.name}">Nobody knows !</td>
	         <td th:text="${person.mail}">john@doe.com</td>
	      </tr>
	   </tbody>
	</table>
