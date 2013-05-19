---
layout: datatables-ajax
menu: ajax
level1: features
level2:
  url: ajax
  name: AJAX
level3:
  url: customcontent
  name: Customed column's content
---

### AJAX :: Customed column's content

Since [v0.8.7](/datatables/changelog.html), you can add customed column\'s content using AJAX sources. It can be very useful for instance to display "actions" column or if you need to display a bit more than just the data (e.g. a mailto link).

This kind of extension point is quiet simple to use, just pass the name of a Javascript function that will be called whenever DataTables needs to set or get the data for cell in the column. Internally, **Dandelion-DataTables** will use it as a value of the [mRender](http://datatables.net/ref#mrender) parameter.

The Javascript function takes 3 parameters :

 * {array|object} The data source for the row (based on mData)
 * {string} The type call data requested - this will be 'filter', 'display', 'type' or 'sort'.
 * {array|object} The full data source for the row (not based on mData)

<br />      
#### Using JSP

First, ensure your function is present before the table.

	function mailify(data, type, full) {
		return '<a href="mailto:' + data + '">' + data + '</a>';
	}

Then, just use the `renderFunction` column attribute and pass the name of the previous Javascript function.

    <c:url var="datasource" value="/persons" />
	<datatables:table id="myTableId" url="${datasource}" serverSide="true" processing="true">
        <datatables:column title="Id" property="id" />
        <datatables:column title="FirstName" property="firstName" />
        <datatables:column title="LastName" property="lastName" />
        <datatables:column title="City" property="address.town.name" />
        <datatables:column title="Mail" property="mail" renderFunction="mailify" />
    </datatables:table>

<div class="alert alert-info">
  <strong>Note!</strong>
  <br />
  You can use the first parameter (data) of the function if you already use the column's <code>property</code> attribute that internally generates a <a href="http://datatables.net/ref#mdata">mData</a> DataTables parameter.
</div>
<br />

You can use the same mechanism to add an extra "Action" column.
Let's add an sixth column which will contain some links.

    <c:url var="datasource" value="/persons" />
    <datatables:table id="myTableId" url="${datasource}" serverSide="true" processing="true">
        <datatables:column title="Id" property="id" />
        <datatables:column title="FirstName" property="firstName" />
        <datatables:column title="LastName" property="lastName" />
        <datatables:column title="City" property="address.town.name" />
        <datatables:column title="Mail" property="mail" />
        <datatables:column title="Action" renderFunction="action" />
     </datatables:table>

Then you just need to generate HTML code in the function as follows:

	function action(data, type, full) {
		return '<a class="btn btn-mini" href="/delete/' + full.id + '">Test</a>';
	}


<div class="alert alert-info">
  <strong>Note!</strong>
  <br />
  This time, the "Action" column doesn't use any property of the iterated bean. That's why you should use the third parameter (full) of the function, which holds the full data source for the row exposed as a JSON object.
</div>

<br />
#### Using Thymeleaf
Using Thymeleaf, you can use the `dt:renderFunction` th attribute in the same manner.

    <table id="myTableId" dt:table="true" dt:url="@{/persons1}" dt:serverSide="true">
        <thead>
            <tr>
                <th dt:property="'id'">Id</th>
                <th dt:property="'firstName'">Firstname</th>
                <th dt:property="'lastName'">Lastname</th>
                <th dt:property="'address.town.name'">City</th>
                <th dt:property="'mail'" dt:renderFunction="'mailify'">Mail</th>
            </tr>
        </thead>
    </table>
            
Note that if you want to add the Javascript directly in your template, you'll have to use the script inlining capabilities:

    <script th:inline="javascript">
    /*<![CDATA[*/
    ...
    var username = /*[[${sesion.user.name}]]*/ 'Sebastian';
    ...
    /*]]>*/
    </script>

You can find more details [here](http://www.thymeleaf.org/doc/Tutorial%20-%20Using%20Thymeleaf%2020120517.pdf).
