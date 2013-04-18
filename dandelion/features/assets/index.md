---
layout: dandelion
menu: assets
level1: features
level2:
  url: assets
  name: Assets Stack
---

### Web assets management

You need to deal with
* a lot of assets
* multiples usages on one page
* assets with parameters
* generated assets
* dependency between assets
* multiples locations for an assets
* upgrade asset versions
* and more

Dandelion bring you a feature to build a structured assets stack to deal with all yours assets with less pain.

#### Build your own assets stack?

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
The stack show us the assets distributions under nested elaments call [scope](/dandelion/features/assets/bases.html#select.scope) (like yahoo analytics).
A scope has a Scope Parent and can have many childs. This is managed through a [Scopes Hierarchy](/dandelion/features/assets/bases.html#select.parent).

For example, the scope `Datatables` have for scope parent : `jQuery`.
Thoses scopes contains
* 2 [assets](/dandelion/features/assets/bases.html#select.asset) for datatables,
* 1 asset for jquery.
When you need to use the scope `datatables` on a webpage, you need add to the page the 3 assets in hierachy order (jquery before datatables).

On [Scopes Hierarchy](/dandelion/features/assets/bases.html#select.parent), you have 2 entry points :
* the [Default Scope Parent](/dandelion/features/assets/bases.html#select.default) to build or complete a assets stack,
* the [Detached Scope Parent](/dandelion/features/assets/bases.html#select.none) to build a standalone assets stack.

##### Stack management
To facilitate the stack management, you can use some `override` properties on your assets stack,
Thoses properties are useful if your stack is not entirely under your control (modules, libs).

You can override
* [an Asset on same scope](/dandelion/features/assets/bases.html#select.override.same),
* [an Asset on child scope](/dandelion/features/assets/bases.html#select.override.child),
* [a location of an Asset by addition](/dandelion/features/assets/bases.html#select.locationOverride.add),
* [a location of an Asset by update](/dandelion/features/assets/bases.html#select.locationOverride.change).

##### Usages
You can access to your assets stack at any time with the [Assets Accessor](/dandelion/features/assets/usages.html#select.accessor),
During page rendering, you can manage your assets context with the [Assets Request Context](/dandelion/features/assets/usages.html#select.context) helper or directly in your page ([jsp](/dandelion/ref/jsp/assets.html) or [html](/dandelion/ref/thymeleaf/assets.html)).

##### Configuration points
You have several [configuration points](/dandelion/features/assets/configuration.html) available for manage your assets stack.

##### Plumbing
Your assets stack is internally
* store in an [Assets Storage](/dandelion/features/assets/plumbing.html),
* managed by an [Assets Configurator](/dandelion/features/assets/plumbing.html),
* loaded by the defined [Assets Loader](/dandelion/features/assets/plumbing.html).

For assets location, you can define some [wrappers](/dandelion/features/assets/plumbing.html) around your defined location.
