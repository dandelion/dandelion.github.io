---
layout: dandelion
menu: assets
level1: features
level2:
  url: assets
  name: Assets Stack
---

### Web assets management

Nowadays, in our web apps, we need to deal with :
* a lot of assets
* multiple usages on one page
* assets with parameters
* generated assets
* dependencies between assets
* multiple locations for an assets
* upgrade asset versions
* and more...

**Dandelion** offers the opportunity to build a structured assets stack and let you deal with all yours web assets with less pain!

<br />
#### Assets stacks

**Commencer par une stack (datatable), puis une autre (webanalytics), puis une plus grosse**

For example, the assets stack proposed by dandelion datatables and webanalytics can be view as

<div class="row-fluid show-grid">
    <div class="span12">
        <div class="row-fluid show-grid">
             <div class="span8">
                <div class="row-fluid show-grid">
                     <div class="span12">
                        <div class="row-fluid show-grid">
                            <div class="span8">
                                <div class="row-fluid show-grid">
                                     <div class="span6">Plugins</div>
                                     <div class="span6">Themes</div>
                                </div>
                                Datatables
                            </div>
                            <div class="span4">
                                <div class="row-fluid show-grid">
                                     <div class="span12">Plugins</div>
                                </div>
                                Bootstrap
                            </div>
                        </div>
                        jQuery
                     </div>
                </div>
                default
             </div>
             <div class="span4">
                <div class="row-fluid show-grid">
                     <div class="span6">google analytics</div>
                     <div class="span6">yahoo analytics</div>
                </div>
                none
             </div>
        </div>
    </div>
</div>
<link rel="stylesheet" href="/assets/css/assets_stack.css" />

##### Bases
The belowing stack shows us the assets distributions under nested elements called [scope](/dandelion/features/assets/bases.html#select.scope) (like yahoo analytics **pas compris la reference specifique a analytics**).
A scope has a **parent scope** and can have multiple children. This is managed through a [Scopes Hierarchy](/dandelion/features/assets/bases.html#select.parent).

For example, the `Datatables` scope has `jQuery` as a parent scope.
Thoses scopes contain :
* 2 [assets](/dandelion/features/assets/bases.html#select.asset) for datatables,
* 1 asset for jquery.
When you need to use the `datatables` scope in a web page, you need to include the 3 assets in a particular order (jquery before datatables).

Regardind the [Scopes Hierarchy](/dandelion/features/assets/bases.html#select.parent), you have 2 entry points :
* the [Default Scope Parent](/dandelion/features/assets/bases.html#select.default) to build or complete a assets stack,
* the [Detached Scope Parent](/dandelion/features/assets/bases.html#select.none) to build a standalone assets stack.

##### Stack management
To facilitate the stack management, you can use some `override` properties.
Thoses properties are useful if your stack is not entirely under your control (modules, libs). **Donner un exemple ici**

Here is a list of stuff you can override :
* [an asset of the same scope](/dandelion/features/assets/bases.html#select.override.same),
* [an asset in a child scope](/dandelion/features/assets/bases.html#select.override.child),
* [the location of an asset by addition](/dandelion/features/assets/bases.html#select.locationOverride.add),
* [the location of an asset by update](/dandelion/features/assets/bases.html#select.locationOverride.change).

##### Usage
You can access your assets stack at any time with the [Assets Accessor](/dandelion/features/assets/usages.html),
During page rendering, you can manage your assets context with the [Assets Request Context](/dandelion/features/assets/usages.html) helper or directly in your page ([jsp](/dandelion/ref/jsp/assets.html) or [html](/dandelion/ref/thymeleaf/assets.html)).

Some samples are available in the [Dandelion Samples Repository](https://github.com/dandelion/dandelion-samples).

##### Configuration points
You have several [configuration points](/dandelion/features/assets/configuration.html) available to help you manage your assets stack.

##### Plumbing
Your assets stack is internally :
* stored in an [Assets Storage](/dandelion/features/assets/plumbing.html),
* managed by an [Assets Configurator](/dandelion/features/assets/plumbing.html),
* loaded by the defined [Assets Loader](/dandelion/features/assets/plumbing.html).**"defined" ou ?**

Asset locations can be configured using [wrappers](/dandelion/features/assets/plumbing.html). We already provide some wrappers but you can of course write your own!
