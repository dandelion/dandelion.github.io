---
layout: datatables
menu: features
level1: features
---

### Feature comparison

You can find below the full list of features supported by **Dandelion-Datatables** and the correspondence between the JSP Taglib attributes and the Thymeleaf dialect ones.

<table id="features" class="table table-striped table-condensed table-hover">
  <thead>
    <tr>
      <th></th>
      <th>JSP Taglib</th>
      <th>Thymeleaf dialect</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><h4>General features</h4></td>
      <td colspan="3"></td>
    </tr>
    <tr>
      <td>Sorting enablement</td>
      <td><a href="/datatables/ref/jsp/table.html#sort">sort</a></td>
      <td><a href="/datatables/ref/thymeleaf/table.html#dt:sort">dt:sort</a></td>
      <td><a href="/datatables/features/basics/featurenablement.html" class="btn btn-mini btn-info">More details »</a></td>    
    </tr>
    <tr>
      <td>Filtering enablement</td>
      <td><a href="/datatables/ref/jsp/table.html#filter">filter</a></td>
      <td><a href="/datatables/ref/thymeleaf/table.html#dt:filter">dt:filter</a></td>
      <td><a href="/datatables/features/basics/featurenablement.html" class="btn btn-mini btn-info">More details »</a></td>    
    </tr>
    <tr>
      <td>Paging enablement</td>
      <td><a href="/datatables/ref/jsp/table.html#paginate">paginate</a></td>
      <td><a href="/datatables/ref/thymeleaf/table.html#dt:paginate">dt:paginate</a></td>
      <td><a href="/datatables/features/basics/featurenablement.html" class="btn btn-mini btn-info">More details »</a></td>    
    </tr>
    <tr>
      <td>Info enablement</td>
      <td><a href="/datatables/ref/jsp/table.html#info">info</a></td>
      <td><a href="/datatables/ref/thymeleaf/table.html#dt:info">dt:info</a></td>
      <td><a href="/datatables/features/basics/featurenablement.html" class="btn btn-mini btn-info">More details »</a></td>    
    </tr>
    <tr>
      <td>Length change enablement</td>
      <td><a href="/datatables/ref/jsp/table.html#lengthChange">lengthChange</a></td>
      <td><span class="icon-remove"></span></td>
      <td><a href="/datatables/features/basics/featurenablement.html" class="btn btn-mini btn-info">More details »</a></td>    
    </tr>
    <tr>
      <td>Handling default value</td>
      <td><a href="/datatables/ref/jsp/column.html#default">default</a></td>
      <td>Native support</td>
      <td><a href="/datatables/features/basics/defaultvalues.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Using CDN</td>
      <td><a href="/datatables/ref/jsp/table.html#cdn">cdn</a></td>
      <td><a href="/datatables/ref/thymeleaf/table.html#dt:cdn">dt:cdn</a></td>
      <td><a href="/datatables/features/basics/cdn.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Changing table's appearing</td>
      <td><a href="/datatables/ref/jsp/table.html#appear">appear</a></td>
      <td><a href="/datatables/ref/thymeleaf/table.html#dt:appear">dt:appear</a></td>
      <td><a href="/datatables/features/basics/changingappearing.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Using implicit objects</td>
      <td><a href="/datatables/ref/jsp/table.html#row">row</a></td>
      <td>Native support</td>
      <td><a href="/datatables/features/basics/implicit.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Specific column's content</td>
      <td><a href="/datatables/ref/jsp/column.html#property">property</a> / <a href="/datatables/ref/jsp/table.html#row">row</a></td>
      <td>Native support</td>
      <td><a href="/datatables/features/basics/customcontent.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Specific column's head</td>
      <td><a href="/datatables/ref/jsp/columnhead.html#uid">uid (columnHead)</a> / <a href="/datatables/ref/jsp/column.html#uid">uid (column)</a></td>
      <td>Native support</td>
      <td><a href="/datatables/features/basics/customhead.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    
    <tr>
      <td><h4>Sorting</h4></td>
      <td colspan="3"></td>
    </tr>
    <tr>
      <td>Indivual sorting enablement</td>
      <td><a href="/datatables/ref/jsp/column.html#sortable">sortable</a></td>
      <td><a href="/datatables/ref/thymeleaf/th.html#dt:sortable">dt:sortable</a></td>
      <td><a href="/datatables/features/basics/sorting.html#Individual_column_sorting" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Sorting initialization</td>
      <td><a href="/datatables/ref/jsp/column.html#sortInit">sortInit</a></td>
      <td><span class="icon-remove"></span></td>
      <td><a href="/datatables/features/basics/sorting.html#sorting_initialisation" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Sorting direction control</td>
      <td><a href="/datatables/ref/jsp/column.html#sortDirection">sortDirection</a></td>
      <td><span class="icon-remove"></span></td>
      <td><a href="/datatables/features/basics/sorting.html#sorting_direction_control" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    
    <tr>
      <td><h4>Filtering</h4></td>
      <td colspan="3"></td>
    </tr>
    <tr>
      <td>Indivual filtering enablement (using default input)</td>
      <td><a href="/datatables/ref/jsp/column.html#filterable">filterable</a></td>
      <td><a href="/datatables/ref/thymeleaf/th.html#dt:filterable">dt:filterable</a></td>
      <td><a href="/datatables/features/basics/filtering.html#Individual_column_sorting" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Indivual filtering enablement (using drop down lists)</td>
      <td><a href="/datatables/ref/jsp/column.html#filterType">filterType</a></td>
      <td><a href="/datatables/ref/thymeleaf/th.html#dt:filterType">dt:filterType</a></td>
      <td><a href="/datatables/features/basics/filtering.html#Using_drop_down_lists" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Exclude column from filtering</td>
      <td><a href="/datatables/ref/jsp/column.html#searchable">searchable</a></td>
      <td><a href="/datatables/ref/thymeleaf/th.html#dt:searchable">dt:searchable</a></td>
      <td><a href="/datatables/features/basics/filtering.html#exclude_column_from_filtering" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    
    <tr>
      <td><h4>Paging</h4></td>
      <td colspan="3"></td>
    </tr>
    <tr>
      <td>Changing pagination type</td>
      <td><a href="/datatables/ref/jsp/table.html#paginationType">paginationType</a></td>
      <td><a href="/datatables/ref/thymeleaf/table.html#dt:paginationtype">dt:paginationtype</a></td>
      <td><a href="/datatables/features/basics/paging.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    
    <tr>
      <td><h4>i18n</h4></td>
      <td colspan="3"></td>
    </tr>
    <tr>
      <td>Internationalisation</td>
      <td><a href="/datatables/ref/jsp/table.html#labels">labels</a></td>
      <td><a href="/datatables/ref/thymeleaf/table.html#dt:labels">dt:labels</a></td>
      <td><a href="/datatables/features/advanced/i18n.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    
    <tr>
      <td><h4>Export</h4></td>
      <td colspan="3"></td>
    </tr>
    <tr>
      <td>Export enablement</td>
      <td><a href="/datatables/ref/jsp/table.html#export">export</a></td>
      <td><a href="/datatables/ref/thymeleaf/table.html#dt:export">dt:export</a></td>
      <td><a href="/datatables/features/export/activateexport.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Adapting links' style</td>
      <td><a href="/datatables/ref/jsp/export.html#type">type</a> / <a href="/datatables/ref/jsp/export.html#label">label</a> / <a href="/datatables/ref/jsp/export.html#cssStyle">cssStyle</a> / <a href="/datatables/ref/jsp/export.html#cssClass">cssClass</a></td>
      <td><a href="/datatables/ref/thymeleaf/tbody.html">see here</a></td>
      <td><a href="/datatables/features/export/customlink.html#Link_style" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Adapting links' position</td>
      <td><a href="/datatables/ref/jsp/export.html#type">type</a> / <a href="/datatables/ref/jsp/table.html#exportLinks">exportLinks</a></td>
      <td><a href="/datatables/ref/thymeleaf/table.html#dt:exportLinks">dt:exportLinks</a></td>
      <td><a href="/datatables/features/export/customlink.html#Link_position" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Remove header (all formats)</td>
      <td><a href="/datatables/ref/jsp/export.html#type">type</a> / <a href="/datatables/ref/jsp/export.html#removeHeader">removeHeader</a></td>
      <td><a href="/datatables/ref/thymeleaf/tbody.html">see here</a></td>
      <td><a href="/datatables/features/export/customlink.html#Remove_header_all_formats" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Column auto-sizing (XLS/XLSX)</td>
      <td><a href="/datatables/ref/jsp/export.html#type">type</a> / <a href="/datatables/ref/jsp/export.html#autoSize">autoSize</a></td>
      <td><a href="/datatables/ref/thymeleaf/tbody.html#dt:xls:autosize">dt:xls:autosize</a> / <a href="/datatables/ref/thymeleaf/tbody.html#dt:xlsx:autosize">dt:xlsx:autosize</a></td>
      <td><a href="/datatables/features/export/customlink.html#Column_auto-sizing_only_XLSXLSX" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Adapt export content</td>
      <td><a href="/datatables/ref/jsp/column.html#display">display</a></td>
      <td><a href="/datatables/ref/thymeleaf/td.html#dt:csv">dt:csv</a> / <a href="/datatables/ref/thymeleaf/td.html#dt:xml">dt:xml</a> / <a href="/datatables/ref/thymeleaf/td.html#dt:pdf">dt:pdf</a> / <a href="/datatables/ref/thymeleaf/td.html#dt:xls">dt:xls</a> / <a href="/datatables/ref/thymeleaf/td.html#dt:xlsx">dt:xlsx</a></td>
      <td><a href="/datatables/features/export/adaptcontent.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    
    <tr>
      <td><h4>Styling</h4></td>
      <td colspan="3"></td>
    </tr>
    <tr>
      <td>Basic styling</td>
      <td>
         <a href="/datatables/ref/jsp/table.html#cssClass">cssClass</a> / <a href="/datatables/ref/jsp/table.html#cssStyle">cssStyle</a> (table)<br/>
         <a href="/datatables/ref/jsp/column.html#cssClass">cssClass</a> / <a href="/datatables/ref/jsp/column.html#cssStyle">cssStyle</a> (column)<br />
         <a href="/datatables/ref/jsp/table.html#cssStripes">cssStripes</a>
      </td>
      <td><a href="/datatables/ref/thymeleaf/table.html#dt:stripeclasses">dt:stripeclasses</a></td>
      <td><a href="/datatables/features/styling/basicstyling.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td><a href="http://twitter.github.com/bootstrap/">Bootstrap 2 theme</a></td>
      <td><a href="/datatables/ref/jsp/table.html#theme">theme</a></td>
      <td><a href="/datatables/ref/thymeleaf/table.html#dt:theme">dt:theme</a></td>
      <td><a href="/datatables/features/styling/bootstrap2.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
	<tr>
      <td><a href="http://jqueryui.com/themeroller/">jQuery UI theme</a></td>
      <td><a href="/datatables/ref/jsp/table.html#theme">theme</a></td>
      <td><a href="/datatables/ref/thymeleaf/table.html#dt:theme">dt:theme</a></td>
      <td><a href="/datatables/features/styling/jqueryui.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>

    <tr>
      <td><h4>AJAX</h4></td>
      <td colspan="3"></td>
    </tr>
    <tr>
      <td>Using AJAX sources</td>
      <td><a href="/datatables/ref/jsp/table.html#url">url</a></td>
      <td><a href="/datatables/ref/thymeleaf/table.html#dt:url">dt:url</a></td>
      <td><a href="/datatables/features/ajax/ajaxsource.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Server-side processing</td>
      <td><a href="/datatables/ref/jsp/table.html#serverSide">serverSide</a></td>
      <td><a href="/datatables/ref/thymeleaf/table.html#dt:serverside">dt:serverside</a></td>
      <td><a href="/datatables/features/ajax/serverside.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Processing indication</td>
      <td><a href="/datatables/ref/jsp/table.html#processing">processing</a></td>
      <td><a href="/datatables/ref/thymeleaf/table.html#dt:processing">dt:processing</a></td>
      <td><a href="/datatables/features/ajax/serverside.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Pipelining data</td>
      <td><a href="/datatables/ref/jsp/table.html#pipelining">pipelining</a> / <a href="/datatables/ref/jsp/table.html#pipeSize">pipeSize</a></td>
      <td><a href="/datatables/ref/thymeleaf/table.html#dt:pipelining">dt:pipelining</a> / <a href="/datatables/ref/thymeleaf/table.html#dt:pipesize">dt:pipesize</a></td>
      <td><a href="/datatables/features/ajax/serverside.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Custom column's content</td>
      <td><a href="/datatables/ref/jsp/column.html#renderFunction">renderFunction</a></td>
      <td><a href="/datatables/ref/thymeleaf/th.html#dt:renderFunction">dt:renderFunction</a></td>
      <td><a href="/datatables/features/ajax/customcontent.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Custom AJAX request</td>
      <td><a href="/datatables/ref/jsp/table.html#serverData">serverData</a></td>
      <td><a href="/datatables/ref/thymeleaf/table.html#dt:serverdata">dt:serverdata</a></td>
      <td><a href="/datatables/features/ajax/customrequest.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Extra AJAX request parameters</td>
      <td><a href="/datatables/ref/jsp/table.html#serverParams">serverParams</a></td>
      <td><a href="/datatables/ref/thymeleaf/table.html#dt:serverparams">dt:serverparams</a></td>
      <td><a href="/datatables/features/ajax/extrarequestparam.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    
    <tr>
      <td><h4>Plugins</h4></td>
      <td colspan="3"></td>
    </tr>
    <tr>
      <td><a href="http://datatables.net/extras/colreorder/">ColReorder</a></td>
      <td><a href="/datatables/ref/jsp/table.html#colReorder">colReorder</a></td>
      <td><a href="/datatables/ref/thymeleaf/thead.html#dt:colReorder">dt:colReorder</a></td>
      <td><a href="/datatables/features/plugins/colreorder.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td><a href="http://datatables.net/extras/scroller/">Scroller</a></td>
      <td><a href="/datatables/ref/jsp/table.html#scroller">scroller</a></td>
      <td><a href="/datatables/ref/thymeleaf/thead.html#dt:scroller">dt:scroller</a></td>
      <td><a href="/datatables/features/plugins/scroller.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td><a href="http://datatables.net/extras/fixedheader/">FixedHeader</a></td>
      <td><a href="/datatables/ref/jsp/table.html#fixedHeader">fixedHeader</a> / <a href="/jsp/table.html#offsetTop">offsetTop</a></td>
      <td><a href="/datatables/ref/thymeleaf/thead.html#dt:fixedheader">dt:fixedheader</a></td>
      <td><a href="/datatables/features/plugins/fixedheader.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    
    <tr>
      <td><h4>Extension points</h4></td>
      <td colspan="3"></td>
    </tr>
    <tr>
      <td>Callbacks</td>
      <td><a href="/datatables/ref/jsp/callback.html">datatables:callback tag</a></td>
      <td><a href="/datatables/ref/thymeleaf/tbody.html#dt:cbk">dt:cbk:*</a></td>
      <td><a href="/datatables/features/advanced/callbacks.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Extra file</td>
      <td><a href="/datatables/ref/jsp/extrafile.html">datatables:extraFile tag</a></td>
      <td><span class="icon-remove"></span></td>
      <td><a href="/datatables/features/advanced/extrafile.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Extra conf</td>
      <td><a href="/datatables/ref/jsp/extraconf.html">datatables:extraConf tag</a></td>
      <td><span class="icon-remove"></span></td>
      <td><a href="/datatables/features/advanced/extraconf.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    
    <tr>
      <td><h4>Compression</h4></td>
      <td colspan="3"></td>
    </tr>
    <tr>
      <td>Compressor</td>
      <td><a href="/datatables/ref/configuration#compressor">compressor.enable</a></td>
      <td><a href="/datatables/ref/configuration#compressor">compressor.enable</a></td>
      <td><a href="/datatables/features/advanced/compression.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
  </tbody>
</table>

<link rel="stylesheet" href="/assets/css/featurecomparison.css" />