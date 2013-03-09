---
layout: datatables
menu: taglib
---

### Table tag
<br />

#### Description
Decribes how the HTML table should be generated.

<br />
#### Usage

    <datatables:table>
       ...
    </datatables:table>

<p class="alert alert-warn"><strong>Warning !</strong><br /> The table tag must have a body.</p>

#### Reference

<table id="tableReference" class="table table-striped table-bordered">
  <thead>
    <tr>
      <th>Name</th>
      <th>Description</th>
      <th>Value(s)</th>
      <th>Default</th>
    </tr>
  </thead>
  <tbody>
  <tr>
    <td>id</td>
    <td><strong>(required)</strong> DOM id of the HTML table</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>data</td>
    <td><strong>(Either data or url attribute is required)</strong> Collection of data used to populate the table</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>url</td>
    <td><strong>(Either data or url attribute is required)</strong> Web service URL used to populate the table</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>row</td>
    <td>Name of the object representing the current row. If data must be displayed without any decoration, use <em>property</em> attribute on column tag</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>appear</td>
    <td>Display mode used when the table has finished loading and must appear in the page. A duration can be set (in milliseconds) if the display mode is set to "fadein"</td>
    <td>block|fadein[,duration]</td>
    <td></td>
  </tr>
  <tr>
    <td>cdn</td>
    <td>Enable the DataTables source files to be loaded from the Microsoft CDN (Content Delivery Framework) preventing you from hosting the files yourself.</td>
    <td>true|false</td>
    <td>false</td>
  </tr>
  <tr>
    <td>cssStyle</td>
    <td>CSS style applied on the HTML table (HTML style attribute)</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>cssClass</td>
    <td>CSS class(es) applied on the HTML table (HTML class attribute)</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>rowIdBase</td>
    <td>Useful if you want each row has a DOM id. This attribute is evaluated as a property of the current iterated bean (Only if DOM datasource)</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>rowIdPrefix</td>
    <td>String which is prepended to the rowIdBase attribute, in order to build row id (HTML id attribute)</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>rowIdSufix</td>
    <td>String which is appended to the rowIdBase attribute, in order to build row id (HTML id attribute)</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>info</td>
    <td>Enable or disable the table information display. This shows information about the data that is currently visible on the page, including information about filtered data if that action is being performed</td>
    <td>true|false</td>
    <td>true</td>
  </tr>
  <tr>
    <td>paginate</td>
    <td>Enable or disable pagination</td>
    <td>true|false</td>
    <td>true</td>
  </tr>
  <tr>
    <td>lengthChange</td>
    <td>If paginate is enabled, allows the end user to select the size of a formatted page from a select menu (sizes are 10, 25, 50 and 100)</td>
    <td>true|false</td>
    <td>true</td>
  </tr>
  <tr>
    <td>paginationType</td>
    <td>Choice between the two different built-in pagination interaction methods ('two_button' or 'full_numbers') which present different page controls to the end user</td>
    <td>two_button|<br/>full_numbers|<br/>four_button|<br/>bootstrap|<br/>scrolling|<br/>input|<br/>listbox|<br/>extJs</td>
    <td>two_button</td>
  </tr>
  <tr>
    <td>filter</td>
    <td>Enable or disable filtering of data</td>
    <td>true|false</td>
    <td>true</td>
  </tr>
  <tr>
    <td>sort</td>
    <td>Enable or disable sorting of columns. Sorting of individual columns can be disabled by the "sortable" attribute of column tag</td>
    <td>true|false</td>
    <td>true</td>
  </tr>
  <tr>
    <td>autoWidth</td>
    <td>Enable or disable automatic column width calculation</td>
    <td>true|false</td>
    <td>true</td>
  </tr>
  <tr>
    <td>processing</td>
    <td>Enable or disable the display of a 'processing' indicator when the table is being processed (e.g. a sort). This is particularly useful for tables with large amounts of data where it can take a noticeable amount of time to sort the entries</td>
    <td>true|false</td>
    <td>false</td>
  </tr>
  <tr>
    <td>export</td>
    <td>Enable or disable the export functionality</td>
    <td>true|false</td>
    <td>false</td>
  </tr>
  <tr>
    <td>exportLinks</td>
    <td>Comma-separated list of positions where the export links will be generated</td>
    <td>top_left|<br/>top_middle|<br/>top_right|<br/>bottom_left|<br/>bottom_middle|<br/>bottom_right</td>
    <td>top_right</td>
  </tr>
  <tr>
    <td>labels</td>
    <td>Relative URL of an AJAX loaded file which contains all the labels used in tables</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>jqueryUI</td>
    <td>Enable jQuery UI ThemeRoller support</td>
    <td>true|false</td>
    <td>false</td>
  </tr>
  <tr>
    <td>fixedHeader</td>
    <td>Enable or disable the DataTables FixedHeader plugin</td>
    <td>true|false</td>
    <td>false</td>
  </tr>
  <tr>
    <td>fixedPosition</td>
    <td>(fixedHeader) Respectively fix the header, footer, left column, right column</td>
    <td>top|bottom|left|right</td>
    <td>top</td>
  </tr>
  <tr>
    <td>offsetTop</td>
    <td>(fixedHeader) Offset applied on the top.</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>scroller</td>
    <td>Enable or disable the DataTables Scroller plugin</td>
    <td>true|false</td>
    <td>false</td>
  </tr>
  <tr>
    <td>scrollY</td>
    <td>(scroller) Table's height to display in scrolling mode.</td>
    <td></td>
    <td>300px</td>
  </tr>
  <tr>
    <td>colReorder</td>
    <td>Enable or disable the DataTables ColReorder plugin</td>
    <td>true|false</td>
    <td>false</td>
  </tr>
  <tr>
    <td>theme</td>
    <td>Name of a theme to activate for the current table</td>
    <td>bootstrap2|jqueryui</td>
    <td></td>
  </tr>
  <tr>
    <td>themeOption</td>
    <td>Name of an option to activate in relation to the current activated theme.</td>
    <td>*</td>
    <td></td>
  </tr>
  <tr>
    <td>serverSide</td>
    <td>Configure DataTables to use server-side processing.</td>
    <td>true|false</td>
    <td>false</td>
  </tr>
  <tr>
    <td>pipelining</td>
    <td>Enable pipelining data for paging when server-side processing is enabled.</td>
    <td>true|false</td>
    <td>false</td>
  </tr>
  <tr>
    <td>pipeSize</td>
    <td>Pipe size used when pipelining is enabled, i.e. times that the user can page before a request must be made of the server.</td>
    <td></td>
    <td>5</td>
  </tr>
  <tr>
    <td>jsonp</td>
    <td>Allows to retrieve JSON data from any domain name, regardless of XSS protection.</td>
    <td>true|false</td>
    <td>false</td>
  </tr>
  </tbody>
</table>

<br />

\* The available values for the `themeOption` attribute are : `blacktie`, `blitzer`, `cupertino`, `darkhive`, `dotluv`, `eggplant`, `excitebike`, `flick`, `hotsneaks`, `humanity`, `lefrog`, `mintchoc`, `overcast`, `peppergrinder`, `redmond`, `smoothness`, `southstreet`, `start`, `sunny`, `swankypurse`, `trontastic`, `uidarkness`, `uilightness`, and `vader`.

<link rel="stylesheet" href="//ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/css/jquery.dataTables.css" />
<script src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js">
</script>
<script src="/assets/js/site_reference.js">
</script>