---
layout: datatables-basics
menu: basics
level1: features
level2:
  url: basics
  name: Basics
level3:
  url: changingdisplay
  name: Changing the display
---

### Basics :: Changing table\'s display

Some options are available to adapt the table's display. 

<br />
#### Changing the display length

##### Using JSP 
By default, **Datatables** displays 10 rows when using pagination. You can change this value using the `displayLength` table attribute.

    <datatables:table id="myTableId" data="${persons}" displayLength="40">
        <datatables:column title="Id" property="id" />
        <datatables:column title="FirstName" property="firstName" />
        <datatables:column title="LastName" property="lastName" />
        <datatables:column title="City" property="address.town.name" />
        <datatables:column title="Mail" property="mail" />
    </datatables:table>

##### Using Thymeleaf
Using Thymeleaf, you can change the number of rows displayed using the `dt:displaylength` table attribute.

    <table id="myTableId" dt:table="true" dt:displaylength="45">
        <thead>
            <tr>
                <th>Id</th>
                <th>Firstname</th>
                <th>Lastname</th>
                <th>City</th>
                <th>Mail</th>
            </tr>
        </thead>
        <tbody th:remove="all-but-first">
            <tr th:each="person : ${persons}">
                <td th:text="${person.id}">1</td>
                <td th:text="${person.firstName}">John</td>
                <td th:text="${person.lastName}">Doe</td>
                <td th:text="${person.address != null and person.address.town != null} ? ${person.address.town.name} : ''">Nobody knows !</td>
                <td th:text="${person.mail}">john@doe.com</td>
            </tr>
        </tbody>
    </table>

<br />
#### Using scroll options
When vertical (y) scrolling is enabled, **DataTables** will force the height of the table's viewport to the given height at all times (useful for layout). However, this can look odd when filtering data down to a small data set, and the footer is left "floating" further down. 

##### Using JSP 
To avoid this, you can use the `scrollCollapse` table attribute. This will cause **DataTables** to collapse the table's viewport down when the result set will fit within the given Y height.

    <datatables:table id="myTableId" data="${persons}" scrollY="1000px" scrollCollapse="false">
        <datatables:column title="Id" property="id" />
        <datatables:column title="FirstName" property="firstName" />
        <datatables:column title="LastName" property="lastName" />
        <datatables:column title="City" property="address.town.name" />
        <datatables:column title="Mail" property="mail" />
    </datatables:table>

##### Using Thymeleaf
Using Thymeleaf, you can use the `dt:scrollcollapse`.

    <table id="myTableId" dt:table="true" dt:scrolly="'1000px'" dt:scrollcollapse="false">
        <thead>
            <tr>
                <th>Id</th>
                <th>Firstname</th>
                <th>Lastname</th>
                <th>City</th>
                <th>Mail</th>
            </tr>
        </thead>
        <tbody th:remove="all-but-first">
            <tr th:each="person : ${persons}">
                <td th:text="${person.id}">1</td>
                <td th:text="${person.firstName}">John</td>
                <td th:text="${person.lastName}">Doe</td>
                <td th:text="${person.address != null and person.address.town != null} ? ${person.address.town.name} : ''">Nobody knows !</td>
                <td th:text="${person.mail}">john@doe.com</td>
            </tr>
        </tbody>
    </table>

<br />
#### Hide column
It can be useful to hide column. **Dandelion-Datatables** allows you to hide column. Note that a hidden column is automatically unsearchable. 

##### Using JSP 
You can use the `visible` column attribute.

    <datatables:table id="myTableId" data="${persons}">
        <datatables:column title="Id" property="id" />
        <datatables:column title="FirstName" property="firstName" />
        <datatables:column title="LastName" property="lastName" />
        <datatables:column title="City" property="address.town.name" />
        <datatables:column title="Mail" property="mail" visible="false" />
    </datatables:table>

##### Using Thymeleaf
Using Thymeleaf, you can use the `dt:visible` TH attribute.

    <table id="myTableId" dt:table="true">
        <thead>
            <tr>
                <th>Id</th>
                <th>Firstname</th>
                <th>Lastname</th>
                <th>City</th>
                <th dt:visible="false">Mail</th>
            </tr>
        </thead>
        <tbody th:remove="all-but-first">
            <tr th:each="person : ${persons}">
                <td th:text="${person.id}">1</td>
                <td th:text="${person.firstName}">John</td>
                <td th:text="${person.lastName}">Doe</td>
                <td th:text="${person.address != null and person.address.town != null} ? ${person.address.town.name} : ''">Nobody knows !</td>
                <td th:text="${person.mail}">john@doe.com</td>
            </tr>
        </tbody>
    </table>





   