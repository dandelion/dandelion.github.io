---
layout: datatables-advanced
menu: advanced
level1: features
level2:
  url: advanced
  name: Advanced
level3:
  url: callbacks
  name: Using callbacks
---

### Advanced :: Using callbacks

During your use and integration of DataTables into your own software, there might be times when you wish to know when a certain event has occurred, allowing you to take appropriate action for that event. This might include modifying a table row/cell, or simply updating an information display every time the table is redrawn.

Since v0.8.9, **Dandelion-DataTables** provides some of the DataTables built-in callbacks.

<br />
#### Using JSP
You need to use the {% refjsp callback %}. You'll need to declare the callback's {% refjsp callback type %} attribute and the Javascript function to execute as a callback in the {% refjsp callback function %} attribute.

    <datatables:table id="myTableId" data="${persons}">
        <datatables:column title="Id" property="id" />
        <datatables:column title="Firstname" property="firstName" />
        <datatables:column title="LastName" property="lastName" />
        <datatables:column title="City" property="address.town.name" sortable="false" />
        <datatables:column title="Mail" property="mail" />
        <datatables:callback type="createdrow" function="callbackCreatedRow" />
     </datatables:table>

Now you just have to write the _callbackCreateRow_ function as follows :

    function callbackCreatedRow(nRow, aData, iDataIndex) {
	    $('td:eq(4)', nRow).css({ 'font-weight': 'bold' });
    }

Ensure to declare the Javascript function before the `datatables:table` tag.

<br />
#### Using Thymeleaf
All callbacks are declared using the {% reftml tbody %} tag.

    <table id="myTableId" dt:table="true">
        <thead>
            <tr>
                <th>Id</th>
                <th>Firstname</th>
                <th>Lastname</th>
                <th>City</th>
                <th>Mail</th>
            </tr>
        </thead>
        <tbody dt:cbk:createdrow="callbackCreateRow">
            <tr th:each="person : ${persons}" th:attr="id=${'person_' + person.id}">
                <td th:text="${person.id}">1</td>
                <td th:text="${person.firstName}">John</td>
                <td th:text="${person.lastName}">Doe</td>
                <td th:text="${person.address != null and person.address.town != null} ? ${person.address.town.name} : ''">Nobody knows !</td>
                <td th:text="${person.mail}">john@doe.com</td>
            </tr>
        </tbody>
    </table>

<br />
#### List of available callbacks

All callbacks don't have the same parameters. Take care to use the right ones!

##### Cookie callback 
This callback allows you to customise the cookie and / or the parameters being stored when using DataTables with state saving enabled. This function is called whenever the cookie is modified, and it expects a fully formed cookie string to be returned. Note that the data object passed in is a Javascript object which must be converted to a string (JSON.stringify for example).

    function cookieCallback(sName, oData, sExpires, sPath) {
        // Customise oData or sName or whatever else here
        return sName + "="+JSON.stringify(oData)+"; expires=" + sExpires +"; path=" + sPath;
    }

 * JSP usage : `<datatables:callback type="cookie" function="cookieCallback" />`
 * Thymeleaf usage : `<tbody dt:cbk:cookie="cookieCallback">`

##### CreatedRow callback
This callback is called when a TR element is created (and all TD child elements have been inserted), or registered if using a DOM source, allowing manipulation of the TR element (adding classes etc). 

    function createdRowCallback(nRow, aData, iDataIndex){
        // Make the fifth column bold
        $('td:eq(4)', nRow).css({ 'font-weight': 'bold' });
    }

 * JSP usage : `<datatables:callback type="createdRow" function="createdRowCallback" />`
 * Thymeleaf usage : `<tbody dt:cbk:createdrow="createdRowCallback">`

##### Draw callback
This callback is called on every 'draw' event, and allows you to dynamically modify any aspect you want about the created DOM. 

    function drawCallback(nRow, aData, iDataIndex){
        alert( 'DataTables has redrawn the table' );
    }

 * JSP usage : `<datatables:callback type="draw" function="drawCallback" />`
 * Thymeleaf usage : `<tbody dt:cbk:draw="drawCallback">`

##### Footer callback
This function is called on every 'draw' event, and allows you to dynamically modify the footer row. This can be used to calculate and display useful information about the table. 

    function footerCallback(nFoot, aData, iStart, iEnd, aiDisplay) {
      nFoot.getElementsByTagName('th')[0].innerHTML = "Starting index is "+iStart;
    }

 * JSP usage : `<datatables:callback type="footer" function="footerCallback" />`
 * Thymeleaf usage : `<tbody dt:cbk:footer="footerCallback">`

##### FormatNumber callback
When rendering large numbers in the information element for the table (i.e. "Showing 1 to 10 of 57 entries") DataTables will render large numbers to have a comma separator for the 'thousands' units (e.g. 1 million is rendered as "1,000,000") to help readability for the end user. This function will override the default method DataTables uses. 

    function formatNumberCallback(iIn) {
        if ( iIn < 1000 ) {
            return iIn;
        } else {
            var
            s=(iIn+""),
            a=s.split(""), out="",
            iLen=s.length;
         
            for ( var i=0 ; i<iLen ; i++ ) {
                if ( i%3 === 0 && i !== 0 ) {
                    out = "'"+out;
                }
                out = a[iLen-i-1]+out;
            }
        }
        return out;
    };

 * JSP usage : `<datatables:callback type="format" function="formatNumberCallback" />`
 * Thymeleaf usage : `<tbody dt:cbk:format="formatNumberCallback">`

##### Header callback
This function is called on every 'draw' event, and allows you to dynamically modify the header row. This can be used to calculate and display useful information about the table.

    function headerCallback(nHead, aData, iStart, iEnd, aiDisplay) {
        nHead.getElementsByTagName('th')[0].innerHTML = "Displaying "+(iEnd-iStart)+" records";
    }

 * JSP usage : `<datatables:callback type="header" function="headerCallback" />`
 * Thymeleaf usage : `<tbody dt:cbk:header="headerCallback">`

##### Info callback
The information element can be used to convey information about the current state of the table. Although the internationalisation options presented by DataTables are quite capable of dealing with most customisations, there may be times where you wish to customise the string further. This callback allows you to do exactly that.

    function infoCallback (oSettings, iStart, iEnd, iMax, iTotal, sPre) {
        return iStart +" to "+ iEnd;
    }

 * JSP usage : `<datatables:callback type="info" function="infoCallback" />`
 * Thymeleaf usage : `<tbody dt:cbk:info="infoCallback">`

##### InitComplete callback
Called when the table has been initialised. Normally DataTables will initialise sequentially and there will be no need for this function, however, this does not hold true when using external language information since that is obtained using an async XHR call.

    function initCompleteCallback(oSettings, json) {
        alert( 'DataTables has finished its initialisation.' );
    }

 * JSP usage : `<datatables:callback type="init" function="initCompleteCallback" />`
 * Thymeleaf usage : `<tbody dt:cbk:init="initCompleteCallback">`

##### PreDraw callback
Called at the very start of each table draw and can be used to cancel the draw by returning false, any other return (including undefined) results in the full draw occurring).

    function preDrawCallback( oSettings ) {
        if ( $('#test').val() == 1 ) {
            return false;
        }
    }

 * JSP usage : `<datatables:callback type="predraw" function="preDrawCallback" />`
 * Thymeleaf usage : `<tbody dt:cbk:predraw="preDrawCallback">`

##### Row callback
This function allows you to 'post process' each row after it have been generated for each table draw, but before it is rendered on screen. This function might be used for setting the row class name etc.

    function rowCallback( nRow, aData, iDisplayIndex, iDisplayIndexFull ) {
        // Bold the grade for all 'A' grade browsers
        if ( aData[4] == "A" ) {
            $('td:eq(4)', nRow).html( '<b>A</b>' );
        }
    }

 * JSP usage : `<datatables:callback type="row" function="rowCallback" />`
 * Thymeleaf usage : `<tbody dt:cbk:row="rowCallback">`
