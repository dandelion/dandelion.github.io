---
layout: datatables-basics
menu: basics
level1: features
level2:
  url: basics
  name: Basics
level3:
  url: filtering
  name: Filtering data
---

### Basics :: Filtering data

<br />
#### Using input field
##### Using JSP
By default, specific column filtering is disable but you can enable it using the `filterable` column attribute.

If you set the `filterable` attribute to `true`, an input field will be created in the corresponding tfoot cell.

	<datatables:table id="myTableId" data="${persons}">
	   <datatables:column title="Id" property="id" />
	   <datatables:column title="FirstName" property="firstName" filterable="true" />
	   <datatables:column title="LastName" property="lastName" filterable="true" />
	   <datatables:column title="City" property="address.town.name" filterable="true" />
	   <datatables:column title="Mail" property="mail" />
	</datatables:table>

##### Using Thymeleaf
With Thymeleaf, you can use the `dt:filterable` th attribute.

	<table id="myTableId" dt:table="true">
	   <thead>
	      <tr>
	         <th>Id</th>
	         <th dt:filterable="true">Firstname</th>
	         <th dt:filterable="true">Lastname</th>
	         <th dt:filterable="true">City</th>
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

<br />
#### Using drop down lists
By default, if filtering is enabled on a specific column, an input field will be added in the corresponding tfoot cell. But you can also use select boxes!

##### Using JSP
Set the `filterType` column attribute to `select` to replace the input field by a drop down list.

	<datatables:table id="myTableId" data="${persons}">
	   <datatables:column title="Id" property="id" />
	   <datatables:column title="FirstName" property="firstName" filterable="true" filterType="select" />
	   <datatables:column title="LastName" property="lastName" filterable="true" filterType="select" />
	   <datatables:column title="City" property="address.town.name" filterable="true" filterType="select" />
	   <datatables:column title="Mail" property="mail" />
	</datatables:table>

##### Using Thymeleaf
With Thymeleaf, set the `dt:filterType` th attribute to `select`.

	<table id="myTableId" dt:table="true">
	   <thead>
	      <tr>
	         <th>Id</th>
	         <th dt:filterable="true" dt:filterType="'select'">Firstname</th>
	         <th dt:filterable="true" dt:filterType="'select'">Lastname</th>
	         <th dt:filterable="true" dt:filterType="'select'">City</th>
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

<br />
#### Exclude column from filtering
You can decide to exclude some column from filtering. 

##### Using JSP
Set the `searchable` column attribute to `false`.

	<datatables:table id="myTableId" data="${persons}">
	   <datatables:column title="Id" property="id" />
	   <datatables:column title="FirstName" property="firstName" searchable="false" />
	   <datatables:column title="LastName" property="lastName" filterable="true" />
	   <datatables:column title="City" property="address.town.name" filterable="true" />
	   <datatables:column title="Mail" property="mail" />
	</datatables:table>

##### Using Thymeleaf
With Thymeleaf, set the `dt:searchable` th attribute to `false`.

	<table id="myTableId" dt:table="true">
	   <thead>
	      <tr>
	         <th>Id</th>
	         <th dt:searchable="false">Firstname</th>
	         <th dt:filterable="true" dt:filterType="'select'">Lastname</th>
	         <th dt:filterable="true" dt:filterType="'select'">City</th>
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

<br />
#### Using an external search form
Since the v0.8.13, you can place filtering elements outside the table.

First, you need to define some placeholders where each filtering element should be injected.

For example:

    <div class="row-fluid">
       <div class="span12">
          <div id="firstNameFilter"></div>
          <div id="lastNameFilter"></div>
          <div id="cityFilter"></div>
       </div>
    </div>

##### Using JSP
Then, you just have to use the `selector` column attribute and set the placeholder's id inside.

    <datatables:table id="myTableId" data="${persons}">
        <datatables:column title="Id" property="id" />
        <datatables:column title="FirstName" property="firstName" filterable="true" selector="#firstNameFilter" />
        <datatables:column title="LastName" property="lastName" filterable="true" selector="#lastNameFilter" />
        <datatables:column title="City" property="address.town.name" filterable="true" selector="#cityFilter" />
        <datatables:column title="Mail" property="mail" />
    </datatables:table>

**Dandelion-Datatables** will generate either select or input fields, depending on what you set in the `filterType` attribute.

##### Using Thymeleaf
Or if you use Thymeleaf, use the `dt:selector`:

    <table id="myTableId" dt:table="true">
	   <thead>
	      <tr>
	         <th>Id</th>
	         <th dt:filterable="true" dt:selector="'#firstNameFilter'">Firstname</th>
	         <th dt:filterable="true" dt:selector="'#lastNameFilter'">Lastname</th>
	         <th dt:filterable="true" dt:selector="'#cityFilter'">City</th>
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