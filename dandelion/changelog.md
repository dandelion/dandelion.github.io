---
layout: dandelion
menu: changelog
level1: changelog
---

### Changelog

#### 0.2.1 (28-07-2013)

#### Core
the assets stack now support
* `async` and `defer` attributes for scripts ([more info](/dandelion/features/assets/loaders.html)),
* [dom positionning](/dandelion/features/assets/loaders.html) : `head` or `body` (Only for Thymeleaf)

For Dandelion Module Developpers, you can [setup your own loader with the property](/dandelion/features/assets/plumbing.html) : `assets.loader.for.<module>`. This way, your loader will be always loaded.

#### Issues
* Fix the internal storage of resources who don't take in account the possibility of multiple folder paths.

#### 0.2.0 (18-05-2013)

##### Core

* [issue #93](https://github.com/dandelion/issues/issues/93) (Add a configuration point for the caching system under assets cache)
* [issue #92](https://github.com/dandelion/issues/issues/92) (Add 'Cacheable' wrapper)
* [issue #90](https://github.com/dandelion/issues/issues/90) (Create a 'Webapp' wrapper)

##### Issues

* [issue #91](https://github.com/dandelion/issues/issues/91) (Fix 'webjars' wrapper)

#### 0.1.0 (22-04-2013)
*	**[Assets Stack Features](/dandelion/features/assets/)** : Assets stack management system,
*	**[Configuration Accessor](/dandelion/ref/configuration/)** : Centralized configuration to access on all properties in `dandelion/dandelion*.properties`.