---
layout: datatables
menu: features
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
      <td><a href="/datatables/basics/featurenablement.html" class="btn btn-mini btn-info">More details »</a></td>    
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
      <td><a href="/datatables/ref/thymeleaf/table.html#dt:lengthchange">dt:lengthchange</a></td>
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
      <td><a href="/datatables/ref/jsp/column.html#property">property</a> / <a href="/jsp/table.html#row">row</a></td>
      <td>Native support</td>
      <td><a href="/datatables/features/basics/customcontent.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Specific column's head</td>
      <td><a href="/datatables/ref/jsp/columnhead.html#uid">uid (columnHead)</a> / <a href="/jsp/column.html#uid">uid (column)</a></td>
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
      <td><a href="/datatables/features/basics/sorting.html#Sorting_initialisation" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Sorting direction control</td>
      <td><a href="/datatables/ref/jsp/column.html#sortDirection">sortDirection</a></td>
      <td><span class="icon-remove"></span></td>
      <td><a href="/datatables/features/basics/sorting.html#Sorting_direction_control" class="btn btn-mini btn-info">More details »</a></td>   
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
      <td><a href="/datatables/features/basics/filtering.html#Exclude_column_from_filtering" class="btn btn-mini btn-info">More details »</a></td>   
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
      <td><a href="/datatables/ref/jsp/export.html#type">type</a> / <a href="/jsp/export.html#label">label</a> / <a href="/jsp/export.html#cssStyle">cssStyle</a> / <a href="/jsp/export.html#cssClass">cssClass</a></td>
      <td><span class="icon-remove"></span></td>
      <td><a href="/datatables/features/export/customlink.html#Link_style" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Adapting links' position</td>
      <td><a href="/datatables/ref/jsp/export.html#type">type</a> / <a href="/jsp/table.html#exportLinks">exportLinks</a></td>
      <td><span class="icon-remove"></span></td>
      <td><a href="/datatables/features/export/customlink.html#Link_position" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Remove header (all formats)</td>
      <td><a href="/datatables/ref/jsp/export.html#type">type</a> / <a href="/jsp/export.html#removeHeader">removeHeader</a></td>
      <td><span class="icon-remove"></span></td>
      <td><a href="/datatables/features/export/customlink.html#Remove_header_all_formats" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Column auto-sizing (XLS/XLSX)</td>
      <td><a href="/datatables/ref/jsp/export.html#type">type</a> / <a href="/jsp/export.html#autoSize">autoSize</a></td>
      <td><span class="icon-remove"></span></td>
      <td><a href="/datatables/features/export/customlink.html#Column_auto-sizing_only_XLSXLSX" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td>Adapt export content</td>
      <td><a href="/datatables/ref/jsp/column.html#display">display</a></td>
      <td><span class="icon-remove"></span></td>
      <td><a href="/datatables/features/export/adaptcontent.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    
    <tr>
      <td><h4>Themes</h4></td>
      <td colspan="3"></td>
    </tr>
    <tr>
      <td><a href="http://twitter.github.com/bootstrap/">Bootstrap 2</a></td>
      <td><a href="/datatables/ref/jsp/table.html#theme">theme</a></td>
      <td><a href="/datatables/ref/thymeleaf/table.html#dt:theme">dt:theme</a></td>
      <td><a href="/datatables/features/themes/bootstrap2.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
	<tr>
      <td><a href="http://jqueryui.com/themeroller/">jQuery UI</a></td>
      <td><a href="/datatables/ref/jsp/table.html#theme">theme</a></td>
      <td><a href="/datatables/ref/thymeleaf/table.html#dt:theme">dt:theme</a></td>
      <td><a href="/datatables/features/themes/bootstrap2.html" class="btn btn-mini btn-info">More details »</a></td>   
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
      <td><a href="/datatables/ref/thymeleaf/table.html#dt:serverside">dt:serverSide</a></td>
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
      <td><a href="/datatables/ref/jsp/table.html#pipelining">pipelining</a> / <a href="/jsp/table.html#pipeSize">pipeSize</a></td>
      <td><a href="/datatables/ref/thymeleaf/table.html#dt:pipelining">dt:pipelining</a> / <a href="/thymeleaf/table.html#dt:pipesize">dt:pipesize</a></td>
      <td><a href="/datatables/features/ajax/serverside.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    
    <tr>
      <td><h4>Plugins</h4></td>
      <td colspan="3"></td>
    </tr>
    <tr>
      <td><a href="http://datatables.net/extras/colreorder/">ColReorder</a></td>
      <td><a href="/datatables/ref/jsp/table.html#colReorder">colReorder</a></td>
      <td><a href="/datatables/ref/thymeleaf/head.html#dt:colReorder">dt:colReorder</a></td>
      <td><a href="/datatables/features/plugins/colreorder.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td><a href="http://datatables.net/extras/scroller/">Scroller</a></td>
      <td><a href="/datatables/ref/jsp/table.html#scroller">scroller</a></td>
      <td><a href="/datatables/ref/thymeleaf/head.html#dt:scroller">dt:scroller</a></td>
      <td><a href="/datatables/features/plugins/scroller.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
    <tr>
      <td><a href="http://datatables.net/extras/fixedheader/">FixedHeader</a></td>
      <td><a href="/datatables/ref/jsp/table.html#fixedHeader">fixedHeader</a> / <a href="/jsp/table.html#offsetTop">offsetTop</a></td>
      <td><a href="/datatables/ref/thymeleaf/head.html#dt:fixedheader">dt:fixedheader</a></td>
      <td><a href="/datatables/features/plugins/fixedheader.html" class="btn btn-mini btn-info">More details »</a></td>   
    </tr>
  </tbody>
</table>

<link rel="stylesheet" href="/assets/css/featurecomparison.css" />