---
layout: datatables
menu: releases
level1: ref
level2:
  url: 0.9.0
  name: 0.9.0
level3:
  url: changelog
  name: Change log
---

<h2 class="page-title">Dandelion-Datatables 0.9.0 Changelog</h2>

<h3 class="section-title">Core</h3>

 * Added support for Java-based i18n
	
	* Provided built-in integration with JSTL and Spring
	* Extension point allowing to plug any other locale and message resolvers
 
 * Added support for global table configuration
 
 * Added support for configuration groups
 
 * Added an extension point allowing users to write their own extension (feature, plugin, theme). Extensions will be scanned at runtime.
 
 * Improved sorting and filtering features
 
 	* Any kind of sort can be enabled thanks to the new sortType/dt:sortType attributes: currency, natural sort, filesize, “anti-the”, …
	* Individual column sorting can be configured in different locations: after the thead, before the thead, in the tfoot or in an external form
 
 * Added support for AJAX exports using a new fluent API for building table from a data source
 
 * Improved DOM-based exports
 
 * Improved CDN support: it\'s now fully configurable through properties 
 * Reduced needed dependencies (commons-lang removed)
 
 * More tests

 	More unit tests and integration tests have been added.
    
<h3 class="section-title">JSP implementation</h3>	 	

 * Added support for runtime expressions inside all attributes
 * Added support for dynamic attributes in the `<datatables:table>` and `<datatables:column>` tags
 * Added support for nested tags inside the `<datatables:table>` tag
 * New {% refjsp table dom %} table attribute, allowing you to specify exactly where in the DOM you want DataTables to inject the various controls it adds to the page.
 * New {% refjsp column selector %} column attribute, which is a jQuery selector used to populate a placeholder with a filtering widgets (e.g. useful if you want externalized search form)
 
<h3 class="section-title">Thymeleaf implementation</h3>

 * New {% reftl table dt:dom %} table attribute.
 * New {% reftl th dt:selector %} th attribute.

<h3 class="section-title">Closed issues</h3>

<ul>
    <li>{% issue 157 %}: Improve dependency management</li>
	<li>{% issue 155 %}: Improve Javadoc for the Spring DatatablesCriteriasResolver</li>
	<li>{% issue 154 %}: Improve DatatablesCriterias#getFromRequest method</li>
	<li>{% issue 152 %}: Erroneous regex match in Utils.java</li>
	<li>{% issue 151 %}: Attributes duplicated in dandelion-datatables.tld</li>
	<li>{% issue 150 %}: Datatables-spring3 criteria resolver does not work with spring 3.1+ if using RequestMappingHandlerMethodAdapter</li>
	<li>{% issue 149 %}: Bug when displaying native tables and tables with Dandelion-Datatables on the same page</li>
	<li>{% issue 146 %}: Add Tag support for EL expressions at attribute's values</li>
	<li>{% issue 144 %}: Customize the values used in the filtering combo box</li>
	<li>{% issue 143 %}: CDN should be entirely configurable through configuration</li>
	<li>{% issue 140 %}: StringIndexOutOfBoundsException in StandardConfigurationLoader</li>
	<li>{% issue 139 %}: ConfigurationStore.getPrototype() fails with "global" group</li>
	<li>{% issue 138 %}: Replace getParent() by findAncestorWithClass() method</li>
	<li>{% issue 137 %}: StandardConfigurationLoader doesn't resolve 'global' group</li>
	<li>{% issue 133 %}: Dandelion_dataTables_export layer is inside dataTables_scrollBody layer</li>
	<li>{% issue 132 %}: Reduce dependencies using home made utility methods</li>
	<li>{% issue 131 %}: Improve export when using DOM sources</li>
	<li>{% issue 130 %}: Optimize link and script tags positions</li>
	<li>{% issue 128 %}: DisplayLength attribute does not accept expressions</li>
	<li>{% issue 125 %}: Fix issue with repeated content when using the ColumnHead tag</li>
	<li>{% issue 118 %}: Remove the Logback dependency from datatables-jsp and datatables-thymeleaf</li>
	<li>{% issue 117 %}: Bug serverside processing [Thymeleaf]</li>
	<li>{% issue 116 %}: Add support for more placeholders when using the filtering feature</li>
	<li>{% issue 115 %}: Make the table's footer optional when using custom filtering form</li>
	<li>{% issue 113 %}: Add support for global configuration for all tables</li>
	<li>{% issue 111 %}: dt:filterType="'select'" not working with ajaxsource</li>
	<li>{% issue 108 %}: Add an extension point allowing users to write and activate their own extensions</li>
	<li>{% issue 94 %}: Add support for horizontal scrolling</li>
	<li>{% issue 80 %}: Add the export feature using AJAX sources</li>
	<li>{% issue 57 %}: Add new FilterTypes in column filtering</li>
	<li>{% issue 53 %}: Improve sorting</li>
	<li>{% issue 21 %}: ExportLink not displayed when paging, filtering or info are disabled</li>
	<li>{% issue 4 %}: Improve i18n support</li>
	<li>{% issue 1 %}: Add support for more native HTML attributes</li>
</ul>