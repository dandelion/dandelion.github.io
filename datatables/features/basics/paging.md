---
layout: datatables-basics
menu: basics
level1: features
level2:
  url: basics
  name: Basics
level3:
  url: paging
  name: Paging data
---

### Basics :: Paging data

<br />
#### Changing pagination type
You can change the pagination type using the `paginationType`/`dt:paginationtype` table attribute (JSP/Thymeleaf).

##### Using JSP

    <datatables:table id="myTableId" data="${persons}" paginationType="full_numbers">
        <datatables:column title="Id" property="id" />
        <datatables:column title="FirstName" property="firstName" />
        <datatables:column title="LastName" property="lastName" />
        <datatables:column title="City" property="address.town.name" />
        <datatables:column title="Mail" property="mail" />
    </datatables:table>

##### Using Thymeleaf

    <table id="myTableId" dt:table="true" dt:paginationtype="full_numbers">
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
