---
layout: post
categories : ['Tutorial']
tags : ['Spring', 'Dandelion-datatables', 'Maven', 'JSP', 'Bootstrap', 'iText']
author: 'Thibault Duchateau'
---
{% include setup %}

Petclinic is one of the sample applications created by [SpringSource](http://www.springsource.org/) to demonstrate the key features of the [Spring Framework](http://www.springsource.org/spring-framework).

We recently had the opportunity to integrate [Dandelion-Datatables](http://dandelion.github.io/datatables) into this app. Here is a tutorial describing how it has been done, step by step.

<p class="text-center">
<img class="blog_img" src="/assets/images/blog/petclinic01.png" />
</p>

Technically speaking, we’ll focus on the view layer, i.e. where [Dandelion-Datatables](http://dandelion.github.io/datatables) mainly comes into action in this use case. 

<p class="text-center">
<img class="blog_img" src="/assets/images/blog/petclinic02.png" />
</p>


Before starting, note that :
 * the source code is [available on GitHub](https://github.com/SpringSource/spring-petclinic/)
 * you can access the live demo on [Cloudfoundry](http://spring-petclinic.cloudfoundry.com/)
 * [Michael Isvy](https://twitter.com/michaelisvy) from SpringSource has written an article about the [new Spring PetClinic app in the SpringSource blog](http://blog.springsource.org/2013/03/21/spring-petclinic-is-on-github/) and has made available [some slides](https://speakerdeck.com/michaelisvy)

<br />
#### Step 1 : collecting information
The first thing to do is to gather information in order to know what dependencies will be needed. 


 * **what template engine is being used?**

Dandelion-Datatables provides a JSP taglib and a Thymeleaf dialect, allowing you to use both template engines.

In our case, the Petclinic app is based on plain old JSP.


 * **what version of the servlet API is being used?**

By default, Dandelion-Datatables takes advantage of one of the key features added in the Servlet 3.x API ([JSR 315](http://jcp.org/en/jsr/detail?id=315)) : configuration through annotations, allowing us to qualify some classes as a Servlet or a Filter. This way, no need to manually update the deployment descriptor ( `web.xml` ) any longer.

Note that currently, the Servlet 3.x API is supported by almost all application servers in their latest version. For example [Tomcat 7.x](http://tomcat.apache.org/tomcat-7.0-doc/) or [JBoss AS 7](https://docs.jboss.org/author/display/AS7/Getting+Started+Guide).

In our case, in order to keep a backward compatibility with a large majority of legacy app servers, we’ll use the [datatables-servlet2](https://github.com/dandelion/dandelion-datatables/tree/master/datatables-extras/datatables-servlet2) extra.

<br />
#### Step 2 : updating the dependencies
Since the build of the Petclinic app is based on Maven, let’s add the needed dependencies in the `pom.xml`.

<pre class="prettyprint">
&lt;dependency>
    &lt;groupId>com.github.dandelion&lt;/groupId>
    &lt;artifactId>datatables-jsp&lt;/artifactId>
    &lt;version>0.8.11&lt;/version>
&lt;/dependency>
&lt;dependency>
    &lt;groupId>com.github.dandelion&lt;/groupId>
    &lt;artifactId>datatables-servlet2&lt;/artifactId>
    &lt;version>0.8.11&lt;/version>
&lt;/dependency>
</pre>

<br />
#### Step 3 : updating the deployment descriptor

Since we want to keep backward compatibility with legacy app servers, we need to update the `web.xml` by adding the Datatables’ servlet definition.

<pre class="prettyprint">
&lt;!-- Dandelion-Datatables servlet definition -->
&lt;servlet>
    &lt;servlet-name>datatablesController&lt;/servlet-name>
    &lt;servlet-class>com.github.dandelion.datatables.extras.servlet2.servlet.DatatablesServlet&lt;/servlet-class>
&lt;/servlet>
&lt;servlet-mapping>
    &lt;servlet-name>datatablesController&lt;/servlet-name>
    &lt;url-pattern>/datatablesController/*&lt;/url-pattern>
&lt;/servlet-mapping>
</pre>

<br />
#### Step 4 : replacing plain old HTML tables with DataTables
At this point, we’re done regarding the Dandelion-Datatables configuration. Now we just have to update the JSPs that use the plain old table and use the Dandelion-Datatables taglib instead.

In the Petclinic app, there are two contenders : the list of owners ([ownersList.jsp](https://github.com/SpringSource/spring-petclinic/blob/14f882221f9f12de71331ce3eac44c297150c373/src/main/webapp/WEB-INF/jsp/owners/ownersList.jsp#L16-44)) and the list of vets ([vetList.jsp](https://github.com/SpringSource/spring-petclinic/blob/14f882221f9f12de71331ce3eac44c297150c373/src/main/webapp/WEB-INF/jsp/vets/vetList.jsp#L17-37)).

Let’s start by the easiest one : the list of vets.

<br />
##### vetList.jsp

The JSP currently uses the typical JSTL `c:forEach` tag to iterate over a collection of vets and generate HTML `tr` tags.

<pre class="prettyprint">
&lt;table class="table table-stripped" style="width:600px;">
    &lt;thead>
        &lt;tr>
            &lt;th>Name&lt;/th>
            &lt;th>Specialties&lt;/th>
        &lt;/tr>
    &lt;/thead>
    &lt;tbody>
    &lt;c:forEach var="vet" items="${vets.vetList}">
        &lt;tr>
            &lt;td>&lt;c:out value="${vet.firstName} ${vet.lastName}"/>&lt;/td>
            &lt;td>
                &lt;c:forEach var="specialty" items="${vet.specialties}">
                    &lt;c:out value="${specialty.name}"/>
                &lt;/c:forEach>
                &lt;c:if test="${vet.nrOfSpecialties == 0}">none&lt;/c:if>
            &lt;/td>
        &lt;/tr>
    &lt;/c:forEach>
    &lt;/tbody>
&lt;/table>
</pre>

Before adapting the above table, note some items :
 * the table looks pretty nice thanks to the awesome [Bootstrap](http://twitter.github.io/bootstrap/) library
 * a CSS style is directly set using the HTML `style` attribute

_Now, let’s use Dandelion-Datatables!_

The first thing to do, as for any other taglib, is to import the TLD using the `taglib` directive

<pre class="prettyprint">
&lt;%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>
</pre>

Then, let’s update the markup :

<pre class="prettyprint">
&lt;datatables:table id="vets" data="${vets.vetList}" cdn="true" row="vet" theme="bootstrap2" cssClass="table table-striped">
    &lt;datatables:column title="Name">
        &lt;c:out value="${vet.firstName} ${vet.lastName}">&lt;/c:out>
    &lt;/datatables:column>
    &lt;datatables:column title="Specialties">
        &lt;c:forEach var="specialty" items="${vet.specialties}">
            &lt;c:out value="${specialty.name}"/>
        &lt;/c:forEach>
        &lt;c:if test="${vet.nrOfSpecialties == 0}">none&lt;/c:if>
    &lt;/datatables:column>
&lt;/datatables:table>
</pre>

Let’s comment a bit the `datatables:table` tag and its attributes:
 
 * With Dandelion-Datatables, you don’t need to use the native HTML `table` tag any longer. All the HTML markup will be generated by the taglib thanks to the `datatables:table` tag

 * The `id` and `data` attributes are mandatory here. 

 	* `id` is just a HTML pass through attribute

 	* `data` is the data source used to populate the table. We use Expression Language here to access the collection previously set in the request.

 * The `row` attribute is quite important here: this attribute tells Dandelion-Datatables to set a variable (page-scoped) that will be available during the iteration through the name it was assigned ("vet" here). This way, you will be able to use this variable and so access all the bean’s properties in the columns.
 
 * We use the `cdn` attribute here to tell Dandelion-Datatables to grab the needed static resources from a compatible CDN (the Microsoft’s one today). This way, all JS and CSS needed by DataTables will be automatically loaded in the page

 * We also use one of the the cool features of Dandelion-Datatables : theming. Today, [Bootstrap 2](http://dandelion.github.io/datatables/features/styling/bootstrap2.html) and [jQuery UI ThemeRoller](http://dandelion.github.io/datatables/features/styling/jqueryui.html) are supported. Just use the `theme` attribute to activate the theme you want. 
   Note that the static resources needed by those themes must be added manually before using the taglib.

 * `cssClass` is, as for `id`, a HTML pass through attribute

Now let’s comment a bit the `datatables:column` tag and its attributes :

 * Since no property is directly displayed in a column, we can’t use the `property` attribute but instead, we set a body to the `datatables:column` tag. This will allows us to use anything we need inside (JSTL, Expression Language, plain HTML, ...)

 * The `title` attribute is used to fill the `th` cells

At this point, the taglib will generate the needed DataTables configuration (composed of Javascript and potentially CSS) and the table will be rendered using DataTables. Pretty cool right? :-)

<p class="text-center">
<img class="blog_img" src="/assets/images/blog/petclinic03.png" />
</p>

<br />
##### ownersList.jsp
Let’s adapt the other JSP. This time, we also use the JSTL `c:forEach` tag to iterate over a collection of owners.

<pre class="prettyprint">
&lt;table class="table table-striped">
    &lt;thead>
        &lt;tr>
            &lt;th style="width: 150px;">Name&lt;/th>
            &lt;th style="width: 200px;">Address&lt;/th>
            &lt;th>City&lt;/th>
            &lt;th>Telephone&lt;/th>
            &lt;th style="width: 100px;">Pets&lt;/th>
        &lt;/tr>
    &lt;/thead>
    &lt;c:forEach var="owner" items="${selections}">
        &lt;tr>
            &lt;td>
                &lt;spring:url value="owners/{ownerId}.html" var="ownerUrl">
                    &lt;spring:param name="ownerId" value="${owner.id}"/>
                &lt;/spring:url>
                &lt;a href="${fn:escapeXml(ownerUrl)}">&lt;c:out value="${owner.firstName} ${owner.lastName}"/>&lt;/a>
            &lt;/td>
            &lt;td>&lt;c:out value="${owner.address}"/>&lt;/td>
            &lt;td>&lt;c:out value="${owner.city}"/>&lt;/td>
            &lt;td>&lt;c:out value="${owner.telephone}"/>&lt;/td>
            &lt;td>
                &lt;c:forEach var="pet" items="${owner.pets}">
                    &lt;c:out value="${pet.name}"/>
                &lt;/c:forEach>
            &lt;/td>
        &lt;/tr>
    &lt;/c:forEach>
&lt;/table>
</pre>

Now, using Dandelion-Datatables:

<pre class="prettyprint">
&lt;datatables:table id="owners" data="${selections}" cdn="true" row="owner" theme="bootstrap2" cssClass="table table-striped">
    &lt;datatables:column title="Name" cssStyle="width: 150px;">
        &lt;spring:url value="owners/{ownerId}.html" var="ownerUrl">
            &lt;spring:param name="ownerId" value="${owner.id}"/>
        &lt;/spring:url>
        &lt;a href="${fn:escapeXml(ownerUrl)}">&lt;c:out value="${owner.firstName} ${owner.lastName}"/>&lt;/a>
    &lt;/datatables:column>
    &lt;datatables:column title="Address" property="address" cssStyle="width: 200px;"/>
    &lt;datatables:column title="City" property="city"/>
    &lt;datatables:column title="Telephone" property="telephone"/>
    &lt;datatables:column title="Pets" cssStyle="width: 100px;">
        &lt;c:forEach var="pet" items="${owner.pets}">
            &lt;c:out value="${pet.name}"/>
        &lt;/c:forEach>
    &lt;/datatables:column>
&lt;/datatables:table>
</pre>

Note here that:
 
 * You can use anything you want inside a `datatables:column` tag: plain HTML, Expression Language, JSTL, Spring taglibs, ...

 * In the "Address", "City" and "Telephone" columns, we just display a bean’s property. For this purpose, you can use the `property` attribute where you just need to pass the name of the property.

At this point, we have achieved our initial goal. The main tables of the application are now displayed using DataTables.

<p class="text-center">
<img class="blog_img" src="/assets/images/blog/petclinic04.png" />
</p>

Also note that both tables have additional features:
 
 * You can sort on any column

 * A search box appeared on the top-right, allowing you to filter data on every column very quickly

<br />
#### Bonus step : adding PDF export
In order to show another cool feature of [Dandelion-Datatables](http://dandelion.github.io/datatables), we decided to add a PDF export. Well, let’s do this!

Some extras already exist and provide some utilities to deal with export. In this use case, since we want to export in PDF format, we will use the [datatables-export-itext](https://github.com/dandelion/dandelion-datatables/tree/master/datatables-extras/datatables-export-itext) that contains :

 * the [iText library](http://itextpdf.com/)

 * an [export class](https://github.com/dandelion/dandelion-datatables/blob/master/datatables-extras/datatables-export-itext/src/main/java/com/github/dandelion/datatables/extras/export/itext/PdfExport.java) that Dandelion-Datatables will use [by default](https://github.com/dandelion/dandelion-datatables/blob/master/datatables-core/src/main/resources/config/datatables-default.properties#L35) when exporting data

First, let’s update the `pom.xml` to add the new dependency :

<pre class="prettyprint">
&lt;dependency>
    &lt;groupId>com.github.dandelion&lt;/groupId>
    &lt;artifactId>datatables-export-itext&lt;/artifactId>
    &lt;version>0.8.11&lt;/version>
&lt;/dependency>
</pre>

Second step, since we’re keeping backward compatibility with the Servlet 2.x API, we need to update the deployment descriptor again (`web.xml`) by adding the Datatables filter :

<pre class="prettyprint">
&lt;!-- Dandelion-Datatables filter definition (used for export) -->
&lt;filter>
    &lt;filter-name>datatablesFilter&lt;/filter-name>
    &lt;filter-class>com.github.dandelion.datatables.extras.servlet2.filter.DatatablesFilter&lt;/filter-class>
&lt;/filter>
&lt;filter-mapping>
    &lt;filter-name>datatablesFilter&lt;/filter-name>
    &lt;url-pattern>/*&lt;/url-pattern>
&lt;/filter-mapping>
</pre>

<div class="alert alert-info"><strong>Info!</strong><br />
Note that the above filter configuration is automatically done using a Servlet 3.x compatible container, so that you don’t need to add anything in the <code>web.xml</code> file.
</div>

_Let's adapt the markup now._

Enabling export is quite easy. Just set the `export` table attribute to the type of export you want (`pdf` here). Remember that Dandelion-Datatables will use the [datatables-export-itext](https://github.com/dandelion/dandelion-datatables/tree/master/datatables-extras/datatables-export-itext) extra by default (based on the [iText library](http://itextpdf.com/)).

<pre class="prettyprint">
&lt;datatables:table id="owners" data="${selections}" ... <span style="color:red;font-weight:bold;">export="pdf"</span>>
...
&lt;/datatables:table>
</pre>

As a consequence, you will see an export link appearing at the top-right of the table.

<p class="text-center">
<img class="blog_img" src="/assets/images/blog/petclinic05.png" />
</p> 

Let’s click and see!

<p class="text-center">
<img class="blog_img" src="/assets/images/blog/petclinic06.png" />
</p> 

Two problems here.

 1.   First, the export link is a bit ugly.

Indeed, [Dandelion-Datatables](http://dandelion.github.io/datatables) generates unstyled links by default, in order to be as flexible as possible. You can however adapt the link to fit your need using the `datatables:export` tag.

Just add a `datatables:export` tag as follows:

<pre class="prettyprint">
&lt;datatables:table id="owners" data="${selections}" ... <span style="color:red;font-weight:bold;">export="pdf"</span>>
    ...
    <span style="color:red;font-weight:bold;">&lt;datatables:export type="pdf" cssClass="btn btn-small" /></span>
&lt;/datatables:table>
</pre>

The `datatables:export` tag allows you to [configure all exports](http://dandelion.github.io/datatables/ref/jsp/export.html) that are currently enabled in the table.

You need to bind the tag using the `type` attribute and then add all the configuration you need (css classes to apply, the export file name, header inclusion/exclusion, ...).
In our case, we just add the Bootstrap classes as we did before on buttons using the `cssClass` attribute.

 2.   Second, more important, HTML markup appears in the PDF export.

Fortunately, you can also configure the column’s content in each export. Let’s see how to do this.
Actually, you want two different types of display, one for the HTML (containing the HTML markup, links, formatting, ...) and another one for the PDF, without any HTML markup.

For this purpose, you can use the `display` attribute of the `datatables:column` tag as follows :

<pre class="prettyprint">
&lt;datatables:table id="owners" data="${selections}" ... <span style="color:red;font-weight:bold;">export="pdf"</span>>
    &lt;datatables:column <span style="color:red;font-weight:bold;">title="Name" display="html"</span> cssStyle="width: 150px;">
        &lt;spring:url value="owners/{ownerId}.html" var="ownerUrl">
            &lt;spring:param name="ownerId" value="${owner.id}"/>
        &lt;/spring:url>
        &lt;a href="${fn:escapeXml(ownerUrl)}">&lt;c:out value="${owner.firstName} ${owner.lastName}"/>&lt;/a>
    &lt;/datatables:column>
    &lt;datatables:column <span style="color:red;font-weight:bold;">title="Name" display="pdf"</span>>
        &lt;c:out value="${owner.firstName} ${owner.lastName}"/>
    &lt;/datatables:column>
    ...
    &lt;datatables:export type="pdf" cssClass="btn btn-small" />
&lt;/datatables:table>
</pre>

You’ve noticed that two columns have been added here, with the same title, but not with the same value in the `display` attribute.
It just means that :

 * the first one (with “html” as a value) will only be rendered in the HTML source, nowhere else.

 * the second one (with “pdf” as a value) will only be rendered in the PDF export, nowhere else.

As a result, let’s look at both the HTML page and the PDF export:

<p class="text-center">
<img class="blog_img" src="/assets/images/blog/petclinic07.png" />
</p> 

<p class="text-center">
<img class="blog_img" src="/assets/images/blog/petclinic08.png" />
</p> 

Both issues are now fixed. :-)

<br />
#### Conclusion
We’ve seen in this tutorial how to integrate Dandelion-Datatables in a classic web app whose view layer is based on JSP.

Note that [Dandelion-Datatables](http://dandelion.github.io/datatables/) has lots of other features : [Thymeleaf](http://dandelion.github.io/datatables/ref/thymeleaf/) support, [DataTables plugins](http://datatables.net/extras/) support, AJAX sources, server-side processing, ...

If you have any question, feel free to contact us using the [forum](http://dandelion.48353.n6.nabble.com/), filling out a [new issue](https://github.com/dandelion/issues/issues) or using the comments below.

<br />
#### References
[Dandelion-Datatables site](http://dandelion.github.io/datatables/)

[Full presentation of the Spring Petclinic app](https://speakerdeck.com/michaelisvy/spring-petclinic-sample-application)

[Spring Petclinic on GitHub](https://github.com/SpringSource/spring-petclinic)

[Spring Petclinic on CloudFoundry](http://spring-petclinic.cloudfoundry.com/)
