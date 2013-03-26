---
layout: dandelion
menu: properties
level1: ref
level2:
  url: configuration
  name: Configuration
---

### Configuration properties

#### Description

In **Dandelion**, you can configure all features on your application by configure some properties files.

If you decide to create your own configuration files, just ensure that :

 * All files are properties files start with **dandelion**
 * All files are properties files ends with **.properties**
 * All files are located at the folder `dandelion` on the root of the application classpath (e.g. under `src/main/resources` if you use Maven)
 * The main properties file is named **dandelion.properties**

You can access easily to the loaded configuration by :

    com.github.dandelion.core.config.Configuration.getProperties();

#### References

* [Assets Stack Configuration](/dandelion/features/assets/configuration.html)