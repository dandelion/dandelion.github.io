---
layout: post
categories : ['News', 'Release']
tags : ['Dandelion-datatables']
author: 'Thibault Duchateau'
---
{% include setup %}

**Dandelion-Datatables v0.8.11 has been released in Maven Central.**

This new version really looks like a major version. Let's see changes.

#### Core
First of all, we really moved forward regarding the stability of the framework. Indeed, we added lots of unit tests and integration tests. I'll soon write another blog to explain how tests are written in the particular case of a framework.


#### JSP implementation


#### Thymeleaf implementation
One the most significant change is that all attributes of the DataTables' dialect are now evaluated using the Thymeleaf expression. As a consequence, you have to wrap almost all attributes' value with single quotes. Here is an example :

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

Huge thanks to [Pavel Janecka](/team) for his new contributions.

toto