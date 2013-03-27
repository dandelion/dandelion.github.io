---
layout: datatables-ajax
menu: ajax
level1: features
level2:
  url: ajax
  name: AJAX
level3:
  url: customrequest
  name: Custom AJAX request
---

### AJAX :: Custom AJAX request
 
Since v0.8.9, you can completely override the default AJAX request which obtains the data from the server ($.getJSON) so something more suitable for your application. 

You'll have to write a Javascript function that will be internally called by the DataTables configuration.

    function myAjaxRequest ( sSource, aoData, fnCallback, oSettings ) {
        oSettings.jqXHR = $.ajax( {
            "dataType": 'json',
            "type": "POST",
            "url": sSource,
            "data": aoData,
            "success": fnCallback
        });
    }

This Javascript function takes 4 parameters :

 * \{string\}: HTTP source to obtain the data from (sAjaxSource)
 * \{array\}: A key/value pair object containing the data to send to the server
 * \{function\}: to be called on completion of the data get process that will draw the data on the page.
 * \{object\}: DataTables settings object

<br />      
#### Using JSP
Use the [`serverData`](/datatables/ref/jsp/table.html#serverData) table attribute and set the name of the previous Javascript function. Ensure that the function is loaded **before** using the taglib.

    <datatables:table id="myTableId" url="/persons1" serverSide="true" serverData="myAjaxRequest" processing="true">
        <datatables:column title="Id" property="id" />
        <datatables:column title="FirstName" property="firstName" />
        <datatables:column title="LastName" property="lastName" />
        <datatables:column title="City" property="address.town.name" />
        <datatables:column title="Mail" property="mail" />
    </datatables:table>

<br />
#### Using Thymeleaf
Using Thymeleaf, you can use the [`dt:serverdata`](/datatables/ref/thymeleaf/table.html#dt:serverdata) table attribute. It works the same way than with JSP. Pass the name of the previous Javascript function.

    <table id="myTableId" dt:table="true" dt:url="/persons3" dt:serverside="true" dt:serverdata="myAjaxRequest">
        <thead>
            <tr>
                <th dt:property="id">Id</th>
                <th dt:property="firstName">Firstname</th>
                <th dt:property="lastName">Lastname</th>
                <th dt:property="address.town.name">City</th>
                <th dt:property="mail">Mail</th>
            </tr>
        </thead>
    </table>
