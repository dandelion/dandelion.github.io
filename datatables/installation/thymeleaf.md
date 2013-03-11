---
layout: datatables
menu: installation
level1: installation
level2:
  url: thymeleaf
  name: Thymeleaf
---

<a href="http://www.thymeleaf.org"><img src="/assets/images/logo_thymeleaflogonamesmall.png" style="float:right; margin-right: 10px;" width="400px" height="90px" /></a>
<h3>Installation guide with Thymeleaf</h3>
<hr />

<h4>With Servlet 3.x compatible containers</h4>

<h5>Step 1 : Install the Dandelion-DataTables JARs</h5>

<h6>Manually</h6>

Download the JARs (see [here](../download.html)) and make sure that they are all made available via the application classpath. (Usually in **WEB-INF/lib**)

<h6>Using Maven (or Maven-compatible dependency managers)</h6>
 
Just add the following dependency :

    <dependency>
        <groupId>com.github.dandelion</groupId>
        <artifactId>datatables-thymeleaf</artifactId>
        <version>{{ site.dandelion.components.datatables.version }}</version>
    </dependency>

<h5>Step 2 : Declare the Dandelion-DataTables dialect</h5>

If you\'re using Spring / Spring MVC, update the SpringTemplateEngine bean :

    <bean id="templateEngine" class="org.thymeleaf.spring3.SpringTemplateEngine">
        <property name="templateResolver" ref="templateResolver" />
        <property name="additionalDialects">
            <set>
                <bean class="com.github.dandelion.datatables.thymeleaf.dialect.DataTablesDialect" />
            </set>
        </property>
    </bean>

If not, add the DataTablesDialect to your existing Thymeleaf template engine :

    ServletContextTemplateResolver templateresolver = new ServletContextTemplateResolver();
    templateresolver.setTemplateMode("HTML5");

    templateengine = new TemplateEngine();
    templateengine.setTemplateResolver(templateresolver);
    templateengine.addDialect(new DataTablesDialect());

<h5>Step 3 : Add the namespace declaration</h5>

Everywhere you want to display a table using <strong>Dandelion-DataTables</strong>, you need to add the following namespace declaration :

    <html xmlns:th="http://www.thymeleaf.org" xmlns:dt="http://github.com/dandelion/datatables">
	
<h5>Step 4 : Include client-side dependencies</h5>

By default, the Javascript libraries are not embedded in <strong>Dandelion-DataTables</strong>. So ensure you declared somewhere in your pages those <tt>script</tt> and <tt>link</tt> tags :

    <!-- DataTables -->
    <link href="pathToCss/jquery.dataTables.css" rel="stylesheet">
    <script src="pathToJs/jquery.dataTables.min.js"></script> 
	
	<!-- jQuery -->
	<script src="pathToJs/jquery-1.8.3.min.js"></script>

<p class="alert alert-info"><strong>Info !</strong><br /> Actually, you can bypass the DataTables script and link tags using the <a href="./ref.tmltable.html">cdn</a> attribute of the table tag.</p>

##### Step 5 : Dev mode

By default, **Dandelion-DataTables** generates the web assets (js, css) that are needed by DataTables. Once generated, all files are then stored in a cache for better performance.

Of course, you are advised to disable the cache during the development. This way, all the configuration is generated each time you access a page that uses **Dandelion-DataTables**.
For that purpose, just set the following system property in your server launch configuration : 

	-Ddandelion.dev.mode=true


You can now begin using the DataTablesDialect ! :-)

<br />
<h4>With Servlet 2.x compatible containers</h4>

<h5>Steps 1/2/3/4</h5>
You need to follow the first four steps described above.

<h5>Step 5 : Add the following additionnal dependency</h5>

    <dependency>
        <groupId>com.github.dandelion</groupId>
        <artifactId>datatables-servlet2</artifactId>
        <version>{{ site.dandelion.components.datatables.version }}</version>
    </dependency>
    
<h5>Step 6 : Add the DataTables4j servlet and filter definitions</h5>

Add the following configuration to your <tt>web.xml</tt> :

    <!-- Dandelion-Datatables servlet definition -->
    <servlet>
        <servlet-name>datatablesController</servlet-name>
        <servlet-class>com.github.dandelion.datatables.extras.servlet2.servlet.DatatablesServlet</servlet-class>
    </servlet>

    <!-- Dandelion-Datatables servlet mapping -->
    <servlet-mapping>
        <servlet-name>datatablesController</servlet-name>
        <url-pattern>/datatablesController/*</url-pattern>
    </servlet-mapping>

    <!-- Dandelion-Datatables filter definition -->
    <filter>
        <filter-name>datatablesFilter</filter-name>
        <filter-class>com.github.dandelion.datatables.extras.servlet2.filter.DatatablesFilter</filter-class>
    </filter>

    <!-- Dandelion-Datatables filter mapping -->
    <filter-mapping>
        <filter-name>datatablesFilter</filter-name>
        <url-pattern>/*</url-pattern>
    </filter-mapping>

<br />
<h4>Optional step : Add a Dandelion-DataTables custom configuration file</h4>

See the [properties reference](/datatables/ref/configuration) to see more details !