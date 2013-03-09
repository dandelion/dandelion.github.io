---
layout: datatables
menu: basics
---

### Basics :: Using CDN

You can choose to load the required Datatables web assets (JS, CSS, images) using the Microsoft\'s CDN.

`link` and `script` HTML tags will be generated and will wrap the table.

Just set the `cdn` / `dt:cdn` table attributes to `true` (JSP/Thymeleaf).

<br />
#### Using JSP

	<datatables:table id="myTableId" data="${persons}" cdn="true">
	   <datatables:column title="Id" property="id" />
	   <datatables:column title="FirstName" property="firstName" />
	   <datatables:column title="LastName" property="lastName" />
	   <datatables:column title="City" property="address.town.name" />
	   <datatables:column title="Mail" property="mail" />
	</datatables:table>

#### Using Thymeleaf

	<table id="myTable" dt:table="true" dt:cdn="true">
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