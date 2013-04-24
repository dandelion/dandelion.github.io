---
layout: webanalytics
menu: installation
level1: installation
level2:
  url: jsp
  name: JSP
---

### Installation guide with JSP

#### With Servlet 3.x compatible containers

##### Step 1 : Install the Dandelion Webanalytics JARs

######Using Maven (or Maven-compatible dependency managers)
 
Just add the following dependency in the <tt>dependencies</tt> section of your <tt>pom.xml</tt> :

    <dependency>
        <groupId>com.github.dandelion</groupId>
        <artifactId>webanalytics-jsp</artifactId>
        <version>0.1.0</version>
    </dependency>

##### Step 2 : Declare the taglib definition

	<%@ taglib prefix="webanalytics" uri="http://github.com/dandelion/webanalytics" %>

You can now begin using the taglib ! :-)

<br />
#### With Servlet 2.x compatible containers

##### Steps 1/2/3
You need to follow the first three steps described above.

<br />
##### Step 4 : Add the backward compatibility dependency

    <dependency>
        <groupId>com.github.dandelion</groupId>
        <artifactId>dandelion-servlet2</artifactId>
        <version>0.1.0</version>
    </dependency>
    
<br />
##### Step 5 : Add the Dandelion servlet definition

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