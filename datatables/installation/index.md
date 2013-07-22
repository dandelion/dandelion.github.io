---
layout: datatables
menu: installation
level1: installation
---

### Installation guide

#### Prerequisites
​
Server-side:
 * Java 6 or higher

Client-side:
 * jQuery v1.10.1 max (v2.x is not compatible with the supported DataTables version)
 
<br />
####Notes
**Dandelion-DataTables** takes advantage of the [Servlet API 3.x](http://jcp.org/en/jsr/detail?id=315) to ease its required configuration. In return, however, you have to use a Servlet container compatible with this API.

You\'ll have no trouble if you deploy on recent containers as Tomcat 7.x, Jetty 8.x, Glassfish 3.x or JBoss 7.x.

Actually, you\'ll have no trouble either with lower versions thanks to the [backward compatibility extra](https://github.com/Dandelion/dandelion-datatables/tree/master/datatables-extras/datatables-servlet2). :-)


<br />
####Guides
The installation guide defers, depending on the template engine you want to use and the target container. Please begin by choosing below a template engine.
<br />
<div style="text-align:center;">
<a href="jsp.html" class="btn btn-large">JSP</a>
&nbsp;
or
&nbsp;
<a href="thymeleaf.html" class="btn btn-large">Thymeleaf</a>
</div>



