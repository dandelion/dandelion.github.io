---
layout: marketing
menu: faq
---

### FAQ

<ul>
   <li>
      <h4>General</h4>
      <ul>
         <li><a href="#snapshot">How to use a SNAPSHOT version of a Dandelion module?</a></li>
		 <li><a href="#contributing">How can I contribute to Dandelion?</a></li>
      </ul>
   </li>
</ul>

### General

<h3 id="snapshot">How to use a SNAPSHOT version of a Dandelion module?</h3>

Whichever module is being developed, a **snapshot release** is always built as soon as a commit is pushed in its GitHub repository. You can of course use it, for testing purposes. It will allow you to try new features or specific bug fixes.

In order to use snapshot releases, you need to add the Sonatype OSS Snapshots repository in your Maven pom.xml file, as follows:


    <repositories>
       <repository>
          <id>sonatype-nexus-snapshots</id>
          <name>Sonatype Nexus Snapshots</name>
          <url>https://oss.sonatype.org/content/repositories/snapshots</url>
          <snapshots>
             <enabled>true</enabled>
          </snapshots>
       </repository>
    </repositories>

Also, you will have to update the dependencies. If the version under development is the 0.9.0, you will have to modify the versions like this:


    <dependency>
       <groupId>com.github.dandelion</groupId>
       <artifactId>datatables-jsp</artifactId>
       <version>0.9.0-SNAPSHOT</version>
    </dependency>         
    <dependency>
       <groupId>com.github.dandelion</groupId>
       <artifactId>datatables-servlet2</artifactId>
       <version>0.9.0-SNAPSHOT</version>
    </dependency>


<h3 id="contributing">How can I contribute to Dandelion?</h3>

In many ways actually:

 * feel free to get in touch with the [team](/team) to propose your idea(s), e.g. using the [forum]({{ site.forum }}) or our [Twitter]({{ site.twitter }}).
 * you can make pull requests (but please contact the team before, in order to guide you through the process)
 * you can write articles, tutorials, blog posts, reviews or anything else about Dandelion.
 * you can promote Dandelion in your company or among your (nerdy) friends/colleagues