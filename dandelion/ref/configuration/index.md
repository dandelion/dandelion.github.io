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

In **Dandelion**, you can configure all features in your application by configuring some property files.

If you decide to create your own configuration files, just ensure that :

 * All files start with **dandelion**
 * All files end with **.properties** (e.g. _dandelion-foo.properties_)
 * All files are located in the folder `dandelion` at the root of the application classpath (e.g. under `src/main/resources` if you use Maven)
 * The main properties file is named **dandelion.properties** **pourquoi tu ne l'appelerais pas dandelion-default.properties, comme dans datatables?**

You can easily access to the loaded configuration by :

    com.github.dandelion.core.config.Configuration.getProperties();

#### References

**Affiche le tableau ici au lieu de mettre un lien vers le tableua**
* [Assets Stack Configuration](/dandelion/features/assets/configuration.html)