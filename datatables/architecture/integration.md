---
layout: datatables
menu: architecture
level1: architecture
level2:
  url: integration
  name: Integrating with other projects
---

### Architecture :: Integrating with other projects

<img src="/assets/images/logo_spring.png" style="float:right; margin-right: 10px;" />

<br />
#### Spring
If you're using [Spring](http://www.springsource.org/) and Spring MVC in your project, note that an extras has been developped in order to provide some utilities to deal with server-side processing.

See more details [here](/datatables/features/ajax/springmvc.html).

<br />
#### Spring Security
Since **Dandelion-Datatables** deals with HTTP request to render static resources, you'll have to adapt your SecurityContext and allows the requests that are sent by the framework. 

You can add the following rule in your configuration:

    <http pattern="/datatablesController/**" security="none" />

