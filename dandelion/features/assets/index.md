---
layout: dandelion-assets
menu: assets
level1: features
level2:
  url: assets
  name: Assets Stack
---

### Assets Stack (web assets management)

Nowadays, in our web apps, we need to deal with :
* a lot of assets
* multiple usages on one page
* assets with parameters
* generated assets
* dependencies between assets
* multiple locations for an assets
* upgrade asset versions
* and more...

**Dandelion** offers the opportunity to build a structured assets stack and let you deal with all your web assets with less pain!

<br/>
#### Assets stacks

You can view your assets stack as a set of nested boxes where each of them contain a set of assets.
<br/>
![](/assets/images/docs/dandelion/assets_stack.png)
<br/>
##### Scopes and assets
The belowing stack shows us the assets distributions under nested boxes called [scope](/dandelion/features/assets/glossary.html#select.scope).
A scope has a **parent scope**, can have multiple children and is managed through a [Scopes Hierarchy](/dandelion/features/assets/glossary.html#select.parent).

For example, the assets stack proposed by **Dandelion-Datatables** can be viewed as follows:
<br/>
![](/assets/images/docs/dandelion/assets_stack-datatables.png)

In this example, the `DataTables` scope has `jQuery` as a parent scope.
Those scopes contain :
* 2 [assets](/dandelion/features/assets/glossary.html#select.asset) for [DataTables](http://datatables.net/) (JS and CSS files),
* 1 asset for [jQuery](http://jquery.com/) (JS file).

When you want all assets for use `DataTables` in a web page :
* Without your **assets stack**, you need to include the 3 assets in a particular order (jQuery before DataTables).
* With your **assets stack**, you just need to use the scope **DataTables**.

##### Stack management
###### Scopes Hierachy
![](/assets/images/docs/dandelion/assets_stack-hierachy.png)
<br/>

All nested boxes represent a [Scopes Hierarchy](/dandelion/features/assets/glossary.html#select.parent).

To build your own **assets stack**, you have 2 entry points on the **scopes hierachy**:
* the [Default Scope Parent](/dandelion/features/assets/glossary.html#select.default) (default) to build or complete an assets stack,
* the [Detached Scope Parent](/dandelion/features/assets/glossary.html#select.none) (none) to build a standalone assets stack.

###### Assets override
To facilitate the stack management, you can use some `override` properties.
Those properties are useful if your stack is not entirely under your control (modules, libs).

For example, the assets stack proposed by **Dandelion-DataTables** is:
<br/>
![](/assets/images/docs/dandelion/assets_stack-override.png)
<br/>
But you need jQuery in v1.9.1 and DataTables in v1.9.4, you need to override jQuery and DataTables assets.

Here is a list of stuff you can override :
* [an asset of the same scope](/dandelion/features/assets/glossary.html#select.override.same),
* [an asset in a child scope](/dandelion/features/assets/glossary.html#select.override.child),
* [the location of an asset by addition](/dandelion/features/assets/glossary.html#select.locationOverride.add),
* [the location of an asset by update](/dandelion/features/assets/glossary.html#select.locationOverride.change).

##### Usage
You can access your assets stack at any time with the [Assets Accessor](/dandelion/features/assets/usages.html).

During page rendering, you can manage your assets context with the [Assets Request Context](/dandelion/features/assets/usages.html) helper or directly in your page ([jsp](/dandelion/ref/jsp/assets.html) or [html](/dandelion/ref/thymeleaf/assets.html)).

Some samples are available in the [Dandelion Samples Repository](https://github.com/dandelion/dandelion-samples).

##### Advanced
###### Configuration points
You have several [configuration points](/dandelion/ref/configuration/) available to help you to organize your assets stack.

###### Plumbing
Your assets stack is internally :
* stored in an [Assets Storage](/dandelion/features/assets/plumbing.html),
* managed by an [Assets Configurator](/dandelion/features/assets/plumbing.html),
* loaded by the configured [Assets Loaders](/dandelion/features/assets/plumbing.html).

Asset locations can be configured using [wrappers](/dandelion/features/assets/plumbing.html). We already provide some wrappers but you can of course write your own!
