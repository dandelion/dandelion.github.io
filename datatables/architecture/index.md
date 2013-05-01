---
layout: datatables-architecture
menu: architecture
level1: architecture
level2:
  url: general
  name: Index
---

### Architecture

<br />
You can find below a diagram that shows how **Dandelion-Datatables** is structured. 
<br />

<p class="text-center">
<img class="blog_img" src="/assets/images/datatables/architecture.png" width="600px" height="500px" />
</p>

<br />
#### Core modules
##### datatables-core
The _datatables-core_ module is the fundation. It contains all base classes used by all other modules: generators, servlet, filter, themes, features, utilities... 

##### datatables-jsp
This is the JSP implementation of **Dandelion-Datatables** that contains the JSP taglib. If your view layer is based on JSP, you'll need this module.

##### datatables-jsp
This is the Thymeleaf implementation of **Dandelion-Datatables**, which is an awesome alternative to JSP. This module contains the Thymeleaf dialect.

<br />
#### Extra modules
##### datatables-servlet2
This extra contains servlet and filter classes you'll have to use if you deploy on Servlet 2.x compatible containers, such as Tomcat 6.x. You can see the additional installation step required in this case [here](/datatables/installation/jsp.html#with_servlet_2x_compatible_containers) (JSP) or [here](/datatables/installation/thymeleaf.html#with_servlet_2x_compatible_containers) (Thymeleaf).

##### datatables-spring3
This extra contains some utilities when dealing with server-side processing. You can see more details [here](/datatables/features/ajax/springmvc.html).

##### datatables-export-itext
This extra provides:
  
 * the [iText](http://itextpdf.com/) library as a new dependency

 * an [export class](https://github.com/dandelion/dandelion-datatables/blob/master/datatables-extras/datatables-export-itext/src/main/java/com/github/dandelion/datatables/extras/export/itext/PdfExport.java) that Dandelion-Datatables will use [by default](https://github.com/dandelion/dandelion-datatables/blob/master/datatables-core/src/main/resources/config/datatables-default.properties#L35) when exporting data

It means that if you add this module in your classpath and activate the export (using the [export](/datatables/ref/jsp/table.html#export)/[dt:export](/datatables/ref/thymeleaf/table.html#dt:export) attributes and `pdf` as a value), **Dandelion-Datatables** will export using iText and the above class.

##### datatables-export-poi
This extra provides:
  
 * the [Apache POI](http://poi.apache.org/) library as a new dependency

 * an [export class](https://github.com/dandelion/dandelion-datatables/blob/master/datatables-extras/datatables-export-poi/src/main/java/com/github/dandelion/datatables/extras/export/poi/XlsExport.java) that Dandelion-Datatables will use [by default](https://github.com/dandelion/dandelion-datatables/blob/master/datatables-core/src/main/resources/config/datatables-default.properties#L33) when exporting data

It means that if you add this module in your classpath and activate the export (using the [export](/datatables/ref/jsp/table.html#export)/[dt:export](/datatables/ref/thymeleaf/table.html#dt:export) attributes and `xls` as a value), **Dandelion-Datatables** will export using Apache POI and the above class.

##### datatables-export-poi-ooxml
This extra provides:
  
 * the OO-XML version of the [Apache POI](http://poi.apache.org/) library as a new dependency

 * an [export class](https://github.com/dandelion/dandelion-datatables/blob/master/datatables-extras/datatables-export-poi-ooxml/src/main/java/com/github/dandelion/datatables/extras/export/poi/XlsxExport.java) that Dandelion-Datatables will use [by default](https://github.com/dandelion/dandelion-datatables/blob/master/datatables-core/src/main/resources/config/datatables-default.properties#L34) when exporting data

It means that if you add this module in your classpath and activate the export (using the [export](/datatables/ref/jsp/table.html#export)/[dt:export](/datatables/ref/thymeleaf/table.html#dt:export) attributes and `xlsx` as a value), **Dandelion-Datatables** will export using Apache POI and the above class.

##### datatables-compression-yui
This extra is used to compress the generated static resources using the [YUI Compressor](http://yui.github.io/yuicompressor/) library.

##### datatables-atmosphere
This extra is about to be released. It will allow you to have continuously-updating tables in your web application.
