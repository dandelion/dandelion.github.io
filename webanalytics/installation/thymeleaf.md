---
layout: webanalytics
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

<h5>Step 1 : Install the Dandelion JARs</h5>

<h6>Using Maven (or Maven-compatible dependency managers)</h6>
 
Just add the following dependency :

    <dependency>
        <groupId>com.github.dandelion</groupId>
        <artifactId>webanalytics-thymeleaf</artifactId>
        <version>0.1.0</version>
    </dependency>

<h5>Step 2 : Declare the Dandelion Webanalytics dialect (and dependencies)</h5>

If you\'re using Spring / Spring MVC, update the SpringTemplateEngine bean :

    <bean id="templateEngine" class="org.thymeleaf.spring3.SpringTemplateEngine">
        <property name="templateResolver" ref="templateResolver" />
        <property name="additionalDialects">
            <set>
                <bean class="com.github.dandelion.webanalytics.thymeleaf.dialect.DandelionWebAnalyticsDialect" />
            </set>
        </property>
    </bean>

If not, add the DandelionWebAnalyticsDialect and the DandelionDialect to your existing Thymeleaf template engine :

    ServletContextTemplateResolver templateresolver = new ServletContextTemplateResolver();
    templateresolver.setTemplateMode("HTML5");

    templateengine = new TemplateEngine();
    templateengine.setTemplateResolver(templateresolver);
    templateengine.addDialect(new DandelionWebAnalyticsDialect());

<h5>Step 3 : Add the namespace declaration</h5>

Everywhere, you want to manage webanalytics using <strong>Dandelion</strong>, you need to add the following namespace declaration :

    <html xmlns:ddl="http://github.com/dandelion" xmlns:wa="http://github.com/dandelion/webanalytics">

You can now begin using the DandelionWebAnalyticsDialect ! :-)

<br />
<h4>With Servlet 2.x compatible containers</h4>

<h5>Steps 1/2/3/4</h5>
You need to follow the first four steps described above.

<h5>Step 5 : Add the following additionnal dependency</h5>

    <dependency>
        <groupId>com.github.dandelion</groupId>
        <artifactId>dandelion-servlet2</artifactId>
        <version>0.1.0</version>
    </dependency>
    
<h5>Step 6 : Add the Dandelion servlet definition</h5>

Add the following configuration to your <tt>web.xml</tt> :

    <!-- Dandelion-Datatables servlet definition -->
    <servlet>
        <servlet-name>dandelionAssets</servlet-name>
        <servlet-class>com.github.dandelion.extras.servlet2.asset.web.AssetsServlet2</servlet-class>
    </servlet>

    <!-- Dandelion-Datatables servlet mapping -->
    <servlet-mapping>
        <servlet-name>dandelionAssets</servlet-name>
        <url-pattern>/dandelion-assets/*</url-pattern>
    </servlet-mapping>

You can now begin using the taglib ! :-)