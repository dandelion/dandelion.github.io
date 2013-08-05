---
layout: datatables
menu: styling
level1: features
level2: 
  url: styling
  name: Styling
level3:
  url: basicstyling
  name: Basic styling
---

### Styling :: Basic styling

There are a number of ways in which DataTables allows you to style tables. **Dandelion-DataTables** support some of them but also provides [theme integration](/datatables/features/styling/bootstrap2.html).
Let's see the basics.

Some attributes are available, allowing you to style different elements :

 * `cssClass` and `cssStyle` on the `<datatables:table>` tag : CSS class or style that will be applied on the `<table>` element
 * `cssStripes` on the `<datatables:table>` tag : Comma-separated list of CSS classes that should be applied to displayed rows. This sequence of CSS classes may be of any length, and DataTables will apply each class sequentially, looping when required
 * `cssClass` and `cssStyle` on the `<datatables:column>` tag : CSS class or style that will be applied on the `<th>` elements (column's head)
 * `cssCellClass` and `cssCellStyle` on the `<datatables:column>` tag : CSS class or style that will be applied on the `<td>` elements (column's cells)

#### Using JSP
You will find below an example that shows how to use the `cssClass` table attribute and the `cssClass` and `cssStyle` column attributes.

    <datatables:table id="myTableId" data="${persons}" cssClass="myClass">
        <datatables:column title="Id" property="id" cssClass="myColumn1Class" />
        <datatables:column title="FirstName" property="firstName" cssClass="myColumn2Class" />
        <datatables:column title="LastName" property="lastName" cssStyle="text-align:center;" />
        <datatables:column title="City" property="address.town.name" />
        <datatables:column title="Mail" property="mail" />
	</datatables:table>

#### Using Thymeleaf
Since the Thymeleaf syntax is based on pure HTML, most of the previous attributes are natively available. However, if you need to set the stripe classes for example, you can use the  `dt:stripeclasses` table attribute. 

    <table id="myTableId" dt:table="true" dt:stripeclasses="'class1,class2'">
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
                <td><a th:href="${'mailto:' + person.mail}" th:text="${person.mail}">john@doe.com</a></td>
            </tr>
        </tbody>
    </table>
