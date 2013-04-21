---
layout: datatables-styling
menu: themes
level1: features
level2: 
  url: styling
  name: Styling
level3:
  url: basicstyling
  name: Basic styling
---

### Styling :: Basic styling

There are a number of ways in which DataTables allows you to style tables. **Dandelion-DataTables** support some of theme but also provides theme integration.

#### Styling table, columns and cells
Some attributes are available, allowing you to style different elements :

 * `cssClass` and `cssStyle` on the `<datatables:table>` tag : CSS class or style that will be applied on the `<table>` element
 * `cssStripes` on the `<datatables:table>` tag : Comma-separated list of CSS classes that should be applied to displayed rows. This sequence of CSS classes may be of any length, and DataTables will apply each class sequentially, looping when required
 * `cssClass` and `cssStyle` on the `<datatables:column>` tag : CSS class or style that will be applied on the `<th>` elements (column's head)
 * `cssCellClass` and `cssCellStyle` on the `<datatables:column>` tag : CSS class or style that will be applied on the `<td>` elements (column's cells)

##### Using JSP

    <datatables:table id="myTableId" data="${persons}" cssClass="myClass">
        <datatables:column title="Id" property="id" />
        <datatables:column title="FirstName" property="firstName" />
        <datatables:column title="LastName" property="lastName" />
        <datatables:column title="City" property="address.town.name" />
        <datatables:column title="Mail" property="mail" />
	</datatables:table>

##### Using Thymeleaf
Most of the previous attributes are natively available. However, 
cssStyle cssClass
cssCellStyle cssCellClass
 cssStripes
 
 
In order to activate the _jQueryUI_ theme, just :

 * set the `theme` / `dt:theme` table attribute to `jqueryui` (JSP/Thymeleaf)
 * set a `themeOption` / `themeOption` (JSP/Thymeleaf) among the 24 supported jQuery UI themes : `blacktie`, `blitzer`, `cupertino`, `darkhive`, `dotluv`, `eggplant`, `excitebike`, `flick`, `hotsneaks`, `humanity`, `lefrog`, `mintchoc`, `overcast`, `peppergrinder`, `redmond`, `smoothness`, `southstreet`, `start`, `sunny`, `swankypurse`, `trontastic`, `uidarkness`, `uilightness`, and `vader`.

Note that the following assets still need to be loaded in your web page :

 * jQuery of course :-)
 * jQuery-UI (JS)
 * DataTables (JS)

<br />
#### Using JSP

	<datatables:table id="myTableId" data="${persons}" theme="jqueryui" themeOption="blacktie">
	    <datatables:column title="Id" property="id" />
	    <datatables:column title="FirstName" property="firstName" />
	    <datatables:column title="LastName" property="lastName" />
	    <datatables:column title="City" property="address.town.name" />
	    <datatables:column title="Mail" property="mail" />
	</datatables:table>

<br />
#### Using Thymeleaf

	<table id="myTable" dt:table="true" dt:theme="jquery" themeOption="blacktie">
	   <thead>
	      <tr>
	         <th>Id</th>
	         <th>Firstname</th>
	         <th>Lastname</th>
	         <th>Street</th>
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
