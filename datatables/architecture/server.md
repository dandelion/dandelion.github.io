---
layout: datatables
menu: architecture
level1: architecture
level2:
  url: server
  name: Server support
---

### Architecture :: Server support

<br />
**Dandelion-Datatables** requires a servlet engine that support the Servlet 2.4 API or later.

If you're using the latest app server (e.g. Tomcat 7.x), it probably includes the Servlet 3.x API. In this case, the installation will be very quick. If you're still using server that support the Servlet 2.x API, note that [an extra have been developed](https://github.com/dandelion/dandelion-datatables/tree/master/datatables-extras/datatables-servlet2) and some [extra installation steps](/datatables/installation/jsp.html#with_servlet_2x_compatible_containers) will be required.

Even if **Dandelion-Datatables** is essentially developed under Tomcat and Jetty, users also use the following servers:

 * Tomcat
 * Jetty
 * Websphere
 * Weblogic
 * JBoss AS

Using other servers may also work.
