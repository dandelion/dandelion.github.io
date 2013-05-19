---
layout: datatables-ajax
menu: ajax
level1: features
level2:
  url: ajax
  name: AJAX
level3:
  url: extrarequestparam
  name: Extra AJAX request parameters
---

### AJAX :: Extra AJAX request parameters
 
Since v0.8.9, you can send extra information to the server when making an AJAX request. 

You'll have to write a Javascript function that will be internally called by the DataTables configuration.

    function getExtraParams( aoData ) {
        aoData.push( { "name": "more_data", "value": "my_value" } );
    }

This Javascript function takes 1 parameter :

 * \{array\}: Data array (array of objects which are name/value pairs) that has been constructed by DataTables and will be sent to the server.

<br />      
#### Using JSP
Use the [`serverParams`](/datatables/ref/jsp/table.html#serverParams) table attribute and set the name of the previous Javascript function. Ensure that the function is loaded **before** using the taglib.

    <c:url var="datasource" value="/persons" />
    <datatables:table id="myTableId" url="${datasource}" serverSide="true" serverParams="getExtraParams" processing="true">
        <datatables:column title="Id" property="id" />
        <datatables:column title="FirstName" property="firstName" />
        <datatables:column title="LastName" property="lastName" />
        <datatables:column title="City" property="address.town.name" />
        <datatables:column title="Mail" property="mail" />
    </datatables:table>

<br />
#### Using Thymeleaf
Using Thymeleaf, you can use the [`dt:serverparams`](/datatables/ref/thymeleaf/table.html#dt:serverparams) table attribute. It works the same way than with JSP. Pass the name of the previous Javascript function.

    <table id="myTableId" dt:table="true" dt:url="@{/persons3}" dt:serverside="true" dt:serverparams="'getExtraParams'">
        <thead>
            <tr>
                <th dt:property="'id'">Id</th>
                <th dt:property="'firstName'">Firstname</th>
                <th dt:property="'lastName'">Lastname</th>
                <th dt:property="'address.town.name'">City</th>
                <th dt:property="'mail'">Mail</th>
            </tr>
        </thead>
    </table>
