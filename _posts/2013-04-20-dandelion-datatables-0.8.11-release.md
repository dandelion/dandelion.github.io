---
layout: post
categories : ['News', 'Release']
tags : ['Dandelion-datatables']
author: 'Thibault Duchateau'
---
{% include setup %}

**Dandelion-Datatables v0.8.11 has been released in Maven Central.**

This new version really looks like a major version but we reserved the release of the v0.9.0 for the [connection between Dandelion-Datatables and Dandelion](https://github.com/dandelion/issues/issues/54).

Well, let's see some changes.

<br />
#### Core
First of all, we really moved forward regarding the stability of the framework. Indeed, we added lots of unit and integration tests. I'll soon write another blog to explain how tests are written in the particular case of a framework.

We also refactored the way callbacks are added because some conflicts were added using e.g. an AJAX-enabled table (where the `fnAdjustColumnSizing(true)` function is automatically called in a `fnInitComplete`) with a manual callback (e.g. the `<datatables:callback>` or the `dt:cbk:init` attribute. Well, to be short, no more conflict... :-) 

<br />
#### JSP implementation
Some enhancements have been added in the JSP implementation. 

One of them is for example the row index that is now available inside the `<datatables:table>` tag. You need to use the `row` table attribute and append `_rowIndex` as follows :

<pre class="prettyprint">
&lt;datatables:table id="myTableId" data="${persons}" row="person">
   &lt;datatables:column title="Id" property="id" />
   &lt;datatables:column title="FirstName" property="firstName" />
   &lt;datatables:column title="LastName" property="lastName" />
   &lt;datatables:column title="City" property="address.town.name" />
   &lt;datatables:column title="Mail">
      &lt;c:out value="${person_rowIndex}" />
   &lt;/datatables:column>
&lt;/datatables:table>
</pre>

Another one is the support for [MessageFormat pattern](http://docs.oracle.com/javase/1.4.2/docs/api/java/text/MessageFormat.html). You can now use both the `property` and the `format` attributes to format columns as you need. Note that this formatting only apply on table that use DOM sources.

<pre class="prettyprint">
&lt;datatables:table id="myTableId" data="${persons}">
   &lt;datatables:column title="Id" property="id" />
   &lt;datatables:column title="FirstName" property="firstName" />
   &lt;datatables:column title="LastName" property="lastName" />
   &lt;datatables:column title="City" property="address.town.name" />
   &lt;datatables:column title="Mail" property="mail" format="&lt;a href=''mailto:{0}''>{0}&lt;/a>" />
   &lt;datatables:column title="Date of birth" property="birthdate" format="{0,date,dd-MM-yyyy}" />
&lt;/datatables:table>
</pre>

<br />
#### Thymeleaf implementation
One the most significant change is that almost all attributes of the DataTables' dialect are now evaluated using the [Standard Thymeleaf expressions](http://www.thymeleaf.org/standarddialect5minutes.html). As a consequence, you have to wrap those attributes' value with single quotes. Here is an example :

<pre class="prettyprint">
&lt;table id="myTableId" dt:table="true" dt:url="'/persons'">
   &lt;thead>
      &lt;tr>
         &lt;th dt:property="'id'">Id&lt;/th>
         &lt;th dt:property="'firstName'">Firstname&lt;/th>
         &lt;th dt:property="'lastName'">Lastname&lt;/th>
         &lt;th dt:property="'address.town.name'">City&lt;/th>
         &lt;th dt:property="'mail'">Mail&lt;/th>
      &lt;/tr>
   &lt;/thead>
&lt;/table>
</pre>

However, in order to keep the dialect as simple as possible, you can still use plain text (that won't be evaluated) in some attributes (`dt:theme="bootstrap2"`, `dt:sortinit="asc"`, ...). Thanks to [Pavel Janecka](/team) for his new contributions in this new feature.

<br />
#### Documentation

Of course all the documentation has been updated.

Please note that we also added a new column in all tag references, to indicate the compatibility of the feature with the type of data source you use.

<br/>
As usual, you can see the full changelog [here](/datatables/changelog.html) and as usual, your thoughts and feedback are very welcome. :-)