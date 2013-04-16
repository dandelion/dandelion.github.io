---
layout: post
tagline: v0.8.6
category : [News,Release]
tags : [Dandelion-datatables]
---
{% include setup %}

**Dandelion-Datatables v0.8.6 has been released in Maven Central.**

#### Major Changes
* **New release management** : now, all JARs (core and extras) have the same version number. This will be much clearer and simpler for both developers and users.
* **New cache system** : a huge [performance issue](http://github.com/dandelion/issues/issues/34) has been raised by [Julien Dubois](https://github.com/jdubois) during his stress test of the [Spring-petclinic app](https://github.com/SpringSource/spring-petclinic). It has been fixed setting up a basic cache system (a static Map at the moment) that stores the generated web resources (js, css) per request URI and per table DOM id. This way, the DataTables configuration (and other needed assets) are generated only once and then are stored in the [AssetCache](http://github.com/dandelion/dandelion-datatables/blob/master/datatables-core/src/main/java/com/github/dandelion/datatables/core/cache/AssetCache.java). So no need to use the ServletContext any longer, which was decreasing performance.

#### Minor Changes
* Added a new `searchable` / `dt:searchable` attributes (JSP/Thymeleaf) to exclude column from searching

#### Issues
* [issue #30](https://github.com/dandelion/issues/issues/30) - Export links generation
* [issue #32](https://github.com/dandelion/issues/issues/32) - Exclude column from searching
* [issue #34](https://github.com/dandelion/issues/issues/34) - Memory leak
* [issue #35](https://github.com/dandelion/issues/issues/35) - Wrong use of EVAL_PAGE in the doStartTag method of the ColumnTag
* [issue #36](https://github.com/dandelion/issues/issues/36) - Problem with tld file on JBoss 6

_for more information, see the dandelion-datatables' [changelog](http://dandelion.github.com/datatables/changelog.html)_