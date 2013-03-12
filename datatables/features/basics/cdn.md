---
layout: datatables-basics
menu: basics
level1: features
level2:
  url: basics
  name: Basics
level3:
  url: cdn
  name: Using CDN 
---
            
### Basics :: Using CDN

You can choose to load the required Datatables web assets (JS, CSS, images) using the Microsoft\'s CDN.

`link` and `script` HTML tags will be generated and will wrap the table.

Just set the `cdn` / `dt:cdn` table attributes to `true` (JSP/Thymeleaf).

<br />
#### CDN strategy

Note that there's no fall back strategy for now. This feature will be introduced when the Dandelion's core is released.

Moreover, note that only DataTables assets (main js and css) are served by CDN. All other required assets are either generated server-side by **Dandelion-DataTables** (DataTables configuration and initialization, DataTables' plugins) or your responsibility (jQuery, jQuery UI, Bootstrap, ...).

<br />
#### Using JSP

	<datatables:table id="myTableId" data="${persons}" cdn="true">
	   <datatables:column title="Id" property="id" />
	   <datatables:column title="FirstName" property="firstName" />
	   <datatables:column title="LastName" property="lastName" />
	   <datatables:column title="City" property="address.town.name" />
	   <datatables:column title="Mail" property="mail" />
	</datatables:table>

<br />
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