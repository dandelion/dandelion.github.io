---
layout: post
tagline: v0.8.8
category : release
tags : [dandelion-datatables]
---
{% include setup %}

**Dandelion-Datatables v0.8.8 has been released in Maven Central.**

The new release contains 2 major changes :

 * integration tests have been significantly improved
 
 * the export feature has been improved for the Thymeleaf implementation
 
#### Integration tests
More and more features are covered by integration tests at the moment. That's cool! And the technical stack we choose is not for nothing.
 
 * [JUnit](http://junit.org/)
 * [FestAssert](https://code.google.com/p/fest/)
 * [FluentLenium](https://github.com/FluentLenium/FluentLenium)
 * [GhostDriver](https://github.com/detro/ghostdriver)
 * [Jetty](http://www.eclipse.org/jetty/) 

Writing integration tests with Selenium becomes really easy with this stack! We'll probably write a new post for that.

#### Export feature
The Thymeleaf implementation of **Dandelion-Datatables** was lacking some important features like adapting export content, customizing export links, ...

Well, you can now configure your export in a less verbose manner than in the JSP implementation :-)
The documentation will be updated in the day. 

_For more information, see the dandelion-datatables' [changelog](/datatables/changelog.html)_

_There is a [forum discussion](http://dandelion-forum.48353.n6.nabble.com/NEWS-Dandelion-Datatables-v0-8-8-has-been-released-td263.html) for this blog post. As usual, your thoughts and feedback are very welcome. :-)_