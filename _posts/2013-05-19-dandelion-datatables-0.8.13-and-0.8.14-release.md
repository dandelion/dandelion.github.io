---
layout: post
categories : ['News', 'Release']
tags : ['Dandelion-datatables']
author: 'Thibault Duchateau'
---
{% include setup %}

**Dandelion-Datatables v0.8.13 has been released in [Maven Central](http://search.maven.org/#search%7Cga%7C1%7Cdandelion)** and the **v0.8.14 as well**, because of a shameful omission :-/

This is mainly a bugfixing version.

However, a major change has been added. The inner workings of the `url` / `dt:url` attributes (JSP/Thymeleaf), which are used to set the data source URL when using AJAX-enabled table, has changed. 

Actually, we wanted to make developer's life as easy as possible, automatically prepending the domain host and the context path to the provided URI, but it's finally too confusing because a part of the URL is provided by the framework and another one must be provided by the developer. Moreover, it will be even more confusing when JSONP support will be added.

Starting from the v0.8.13, nothing will be prepended to the value you set in those attributes. Which means you have to deal integrally with it.

For example, using JSP, you can build the data source URL using the `<c:url>` JSTL tag :

    <c:url var="datasource" value="/persons" />
    
    <datatables:table id="myTableId" url="${datasource}">
        <datatables:column title="Id" property="id" />
        <datatables:column title="FirstName" property="firstName" />
        <datatables:column title="LastName" property="lastName" />
        <datatables:column title="City" property="address.town.name" />
        <datatables:column title="Mail" property="mail" />
    </datatables:table>

Or if you use Thymeleaf instead, you can use the "at" syntax of the standard expressions: `@{...}`:

    <table id="myTableId" dt:table="true" dt:url="@{/persons}">
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

As usual, you can see the full changelog [here](/datatables/changelog.html) and as usual, your thoughts and feedback are very welcome. :-)