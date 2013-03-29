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

For example, the assets stack of dandelion can be view as

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



#### TODO to integrate
##### Bases
* `google analytics` is an [Asset](/dandelion/features/assets/bases.html#select.asset)
* `Datatables` is a scope[Scope](/dandelion/features/assets/bases.html#select.scope)
* `default, jQuery and Datatables` are part of the [Scopes Hierarchy](/dandelion/features/assets/bases.html#select.parent)
* `default` is the [Default Scope Parent](/dandelion/features/assets/bases.html#select.default)
* `none` is the [Detached Scope Parent](/dandelion/features/assets/bases.html#select.none)
* [Asset Override](/dandelion/features/assets/bases.html#select.override)
* [Asset Location Override - Add](/dandelion/features/assets/bases.html#select.locationOverride.add)
* [Asset Location Override - Change](/dandelion/features/assets/bases.html#select.locationOverride.change)

##### Plumbing
* [Assets Storage](/dandelion/features/assets/storage.html)

##### Usages
*










#### TODO to split
##### Storage

##### Assets Manipulations

In `Dandelion`, the manipulations system is based on 3 components

<table class="table table-bordered">
	<thead>
		<tr>
			<th style="width: 20%">Component</th>
			<th style="width: 80%">Description</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td><a href="/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/Assets.html">
			Assets</a></td>
			<td>Assets is a helper based on `AssetsStorage` who is configured by `AssetsConfigurator` (on first use).<br/><br/>
			You can use through its public API :
			<table class="table table-bordered">
            	<thead>
            		<tr>
            			<th style="width: 40%">Method</th>
            			<th style="width: 60%">Description</th>
            		</tr>
            	</thead>
            	<tbody>
            		<tr>
            		    <td>assetsFor(Array of Scope)</td>
            		    <td>Retrieve all assets for scopes in parameters</td>
            		</tr>
            		<tr>
            		    <td>getAssetLocation(Asset)</td>
            		    <td>Returns the correct location of the asset based on the configuration</td>
            		</tr>
            		<tr>
            		    <td>getAssetsLocations()</td>
            		    <td>Returns an ordered list of possible <b>location</b> keys</td>
            		</tr>
            		<tr>
            		    <td>excludeByName(List of Assets, Array of Asset names)</td>
            		    <td>Returns an assets list without those name in the array</td>
            		</tr>
            		<tr>
            		    <td>filterByType(List of Assets, Array of Asset type)</td>
            		    <td>Returns an assets list with a type in the array</td>
            		</tr>
            	</tbody>
            </table>
			</td>
		</tr>
		<tr>
			<td><a href="/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/AssetsConfigurator.html">
			AssetsConfigurator</a></td>
			<td>The assets configurator use some properties load by <a href="/dandelion/ref/configuration/">Dandelion Configuration</a> :<br/>
			<table class="table table-bordered">
            	<thead>
            		<tr>
            			<th style="width: 20%">Property</th>
            			<th style="width: 10%">Type</th>
            			<th style="width: 50%">Description</th>
            			<th style="width: 20%">Default Value</th>
            		</tr>
            	</thead>
            	<tbody>
            		<tr>
            		    <td>assets.loaders</td>
            		    <td>AssetsLoader list</td>
            		    <td>Define a ordered list of loaders</td>
            		    <td><a href="/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/loader/AssetsJsonLoader.html">AssetsJsonLoader</a></td>
            		</tr>
            		<tr>
            		    <td>assets.excluded.scopes</td>
            		    <td>String list<br/>(comma separated)</td>
            		    <td>Define a list of scopes who be need to exclude from storage</td>
            		    <td></td>
            		</tr>
            		<tr>
            		    <td>assets.excluded.assets</td>
            		    <td>String list<br/>(comma separated)</td>
            		    <td>Define a list of assets who be need to exclude from storage</td>
            		    <td></td>
            		</tr>
            		<tr>
            		    <td>assets.location.wrapper.{location key}</td>
            		    <td>AssetsLocationWrapper</td>
            		    <td>Define a Wrapper for location key (in property key)</td>
            		    <td><a href="/dandelion/features/assets/wrappers.html">see implementations</a></td>
            		</tr>
            		<tr>
            		    <td row-fluidspan="2">assets.locations</td>
            		    <td row-fluidspan="2">String list<br/>(comma separated)</td>
            		    <td>Define a ordered list of possible location keys</td>
            		    <td>remote,local</td>
            		</tr>
            		<tr>
                        <td colspan="2">Defined keys will return the desired location of the asset based
                        on the presence or absence of the location key in the potential of the asset.<br/>
                        <br/>
                        For example, take an Asset with some location keys : <b>local, local_min, remote</b><br/>
<br/>
If the property is configured with :<br/>
&nbsp;-&nbsp;<b>"remote,local"</b>, <i>getAssetLocation()</i> return <b>"remote"</b>,<br/>
&nbsp;-&nbsp;<b>"remote_min,remote,local"</b>, <i>getAssetLocation()</i> return <b>"remote"</b> because <b>"remote_min"</b> don't exists,<br/>
&nbsp;-&nbsp;<b>"remote_min,local_min,remote,local"</b>, <i>getAssetLocation()</i> return <b>"local_min"</b>.
                        </td>
                    </tr>
            	</tbody>
            </table>
			</td>
		</tr>
		<tr>
			<td><a href="/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/AssetsLoader.html">
			AssetsLoader</a></td>
			<td>AssetsLoader is an interface to load from a source a set of assets and their scopes and scopes parents via its API <b>loadAssets()</b>
            <br/><br/>
            Some <a href="/dandelion/features/assets/loaders.html">implementations</a> are available AssetsJsonLoader (default), AssetsNopLoader.
            </td>
		</tr>
		<tr>
			<td><a href="/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/AssetsLocationWrapper.html">
			AssetsLocationWrapper</a></td>
			<td>AssetsLocationWrapper is an interface to wrap a location before to retrieve it from <b>Assets.getAssetLocation(...)</b>
            <br/><br/>
            Some <a href="/dandelion/features/assets/wrappers.html">implementations</a> are available for location keys : classpath, delegate, template, webjars (extras).
            </td>
		</tr>
	</tbody>
</table>



#### TODO to translate and split

##### Comment utiliser la gestion des Assets dans une application?

Pour les besoins d’une application web, une gestion des assets pour web via un objet AssetsRequestContext a été mis en place.

Public API fluent
- get(ServletRequest) -> le context
	retourne le contexte de la requête HTTP (et le créer si besoin)
- addScopes(scopes) -> le context
	ajout un ensemble de scopes au contexte
- removeScopes(scopes) -> le context
	retire un ensemble de scopes au contexte

- excludeAssets(String assets) -> le context
	ajout un ensemble d’assets à exclure
- hasBeenRendered() -> le context
	changer l’état de rendu HTML du contexte

Public API
- getScopes(withoutExcludedScopes) -> les scopes stockés avec ou sans les exlus
- getExcludedScopes() -> les scopes exlus
	retourne les scopes exclus
- getExcludedAssets() -> les assets exlus
	retourne les assets exclus
- isAlreadyRendered() -> boolean
	retourne si oui ou non le contexte à déjà été utilisé pour faire un rendu HTML

Ce contexte permet dans le cadre d’une requete HTTP, via sa Public API
	- de stocker des scopes
	- d’exclure des scopes
	- d’exclure des assets
	- de définir si le contexte a déjà été utilisé pour un rendu HTML

Durant la vie d’une requête HTTP, on peut donc à loisir accéder à l’objet AssetsRequestContext et y rajouter des scopes, en exclure d’autres ou bien des assets.
Un contexte n’a pas d’existance en dehors de la requete HTTP dans laquelle il a été crée.


##### Comment utiliser la gestion des Assets dans les JSP?
Durant la durée de vie d’une requête HTTP, vous pouvez gérer l’objet AssetsRequestContext, depuis vos jsp.

La taglib accessible depuis l’URI “http://github.com/dandelion” propose le tag “assets”.

Le tag “assets” permet de gérer l’objet AssetsRequestContext
Attribute	Description	Required	Link
scopes	List of requested scopes (comma separated)	false	AssetsRequestContext.addScopes(scopes)
excludedScopes	List of excluded scopes (comma separated)	false	AssetsRequestContext.excludeScopes(scopes)
excludedAssets	List of excluded assets (comma separated)	false	AssetsRequestContext.excludeAssets(assets)
renderer	false to disable the rendering system for assets	false	AssetsRequestContext.getScopes(true)
AssetsRequestContext.getExcludesAssets()
Assets.assetFor(...)
AssetsRenderer.render(...)
AssetsRequestContext.hasBeenRendered()



Dans une jsp, on peut l’utiliser comme cela

	<html>
		<head>
			<dandelion:assets scopes=”jquery” renderer=”false”/>
		</head>
		<body>
			<dandelion:assets scopes=”datatables” renderer=”false”/>

			<dandelion:assets scopes=”ga”/>
		</body>
	</html>

le rendu HTML sera qu’à la fin de la base `<body/>` les assets des scopes : jquery, datatables et ga seront crées en tant que balises `<script/>` ou `<link/>`
