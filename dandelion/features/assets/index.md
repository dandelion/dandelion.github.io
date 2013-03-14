---
layout: dandelion
menu: assets
level1: features
level2:
  url: assets
  name: Assets
---

# Assets management system

The `Assets management system` offer you the possibility to manage all your assets, and bring you some useful tools to do it.

### Bases
<table class="table table-bordered">
	<thead>
		<tr>
			<th style="width: 20%">Name</th>
			<th style="width: 40%">Description</th>
			<th style="width: 40%">Samples</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>Asset</td>
			<td>An Asset define a web resources by
<ul>
	<li>his name,</li>
	<li>his version number,</li>
	<li>his type,</li>
	<li>these various locations (remote, locale, generate, ...)</li>
</ul></td>
			<td><pre>{
  "name": "jquery",
  "version": "1.9.1",
  "type": "js",
  "locations": [
    "remote": "http://code.jquery.com/jquery-1.9.1.js",
    "local": "/assets/libs/jquery-1.9.1.js"
  ]
}</pre></td>
		</tr>
		<tr>
			<td>Scope</td>
			<td>A Scope define a group of assets.<br/>The order in the assets define the display order </td>
			<td><pre>{
  "scope": "datatables",
  "assets": [
    {"name": "jquery", "type": "js", ...},
    {"name": "datatables", "type": "js", ...},
    {"name": "datatables", "type": "css", ...}
  ]
}</pre>
<b>jQuery</b> asset is before <b>DataTables</b> assets.
</td>
		</tr>
		<tr>
			<td>Scopes Hierachy</td>
			<td>Scopes can be define by using a parenthood hierachy (start by <b>default</b>).<br/>The parent scope is always display first</td>
			<td><pre>{ "scope": "jquery" },
{ "scope": "datatables", "parent": "jquery" }</pre>
<b>DataTables</b> assets have <b>jQuery</b> assets for parent.
</td>
		</tr>
		<tr>
			<td>Scope Parent : <b>default</b></td>
			<td>The first parent is <b>default</b>.<br/>This scope is always display.<br/>The default scope as parent is optional</td>
			<td><pre>{ "scope": "jquery" },
{ "scope": "jquery", "parent": "default" }</pre>
Thoses 2 samples define the same scope/parent link.
</td>
		</tr>
		<tr>
			<td>Scope Parent : <b>none</b></td>
			<td>It's a Detached scope, to start a specific hierachy without <b>default</b> assets.<br/>The detached scope can only use as Scope parent.</td>
			<td>Good Usage :<pre>{ "scope": "jquery", "parent": "none" }</pre>
Bad Usage :<pre>{ "scope": "none" }</pre></td>
		</tr>
		<tr>
			<td>Asset Override</td>
			<td>Asset Override provide you the ability to change a asset in a scope by extend this scope and change the asset.</td>
			<td><pre>{
  "scope": "datatables",
  "assets": [
    {"name": "jquery", "version": "1.9.1", ...},
    {"name": "datatables", "type": "js", ...},
    {"name": "datatables", "type": "css", ...}
  ]
}</pre>
We change the version of <b>jQuery</b> asset :
<pre>{
  "scope": "my_datatables",
  "assets": [
    {"name": "jquery", "version": "2.0", ...}
  ]
}</pre>
Only the version is change, not the display order, <b>jQuery</b> is still the first asset to be display.</td>
		</tr>
		<tr>
			<td>Asset Location Override<br/>(Add)</td>
			<td>Asset Location Override provide you the ability to <b>add</b> a location in a asset.</td>
			<td>You can add a location to an asset using the same scope or using the <b>Asset Override</b> with same definition (name, type, version)</td>
		</tr>
		<tr>
			<td>Asset Location Override<br/>(Change)</td>
			<td>Asset Location Override provide you the ability to <b>change</b> a location in a asset.</td>
			<td>You can change a location to an asset using the <b>Asset Override</b> with same definition (name, type, version)</td>
		</tr> 
	</tbody> 
</table> 

## Storage

In `Dandelion`, the `Assets` feature is based on a [Storage Component](/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/AssetsStorage.html) who provide a API with Storage Rules.

### **AssetsStorage** Public API
<table class="table table-bordered">
	<thead>
		<tr>
			<th style="width: 40%">Method</th>
			<th style="width: 60%">Description</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>store (Asset)</td>
			<td>Store an asset on <b>Default Scope</b></td>
		</tr>
		<tr>
			<td>store (Asset, Scope)</td>
			<td>Store an asset on his scope under <b>Default Parent Scope</b></td>
		</tr>
		<tr>
			<td>store (Asset, Scope, Parent Scope)</td>
			<td>Store an asset on his scope under his parent scope</td>
		</tr>
		<tr>
		    <td>assetsFor(Array of Scope)</td>
		    <td>Retrieve all assets for scopes in parameters</td>
		</tr>
	</tbody> 
</table> 

### **AssetsStorage** Rules

#### **Store** Rules
<table class="table table-bordered">
	<thead>
		<tr>
			<th style="width: 50%">Rule</th>
			<th style="width: 50%"><a href="/dandelion/features/exception/">DandelionException</a></th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>An asset can't be add twice in the same scope (same name)</td>
			<td><a href="/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/AssetsStorageError.html#ASSET_ALREADY_EXISTS_IN_SCOPE">
			    AssetStorageError#ASSET_ALREADY_EXISTS_IN_SCOPE
			    </a><br/>
                &nbsp;-&nbsp;<b>originalAsset :</b> stored asset.
            </td>
		</tr>
		<tr>
			<td>A location can't be use twice in the same scope by an similar asset</td>
			<td><a href="/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/AssetsStorageError.html#ASSET_LOCATION_ALREADY_EXISTS_IN_SCOPE">
                AssetStorageError#ASSET_LOCATION_ALREADY_EXISTS_IN_SCOPE
			    </a><br/>
                &nbsp;-&nbsp;<b>locations :</b> locations to add but in error,<br/>
                &nbsp;-&nbsp;<b>asset :</b> asset in failure.
            </td>
		</tr>
		<tr>
			<td>An asset can't have a parent scope who don't already exists</td>
			<td><a href="/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/AssetsStorageError.html#UNDEFINED_PARENT_SCOPE">
                AssetStorageError#UNDEFINED_PARENT_SCOPE
			    </a><br/>
                &nbsp;-&nbsp;<b>parentScope :</b> undefined parent scope.
            </td>
		</tr>
		<tr>
			<td>An asset can't have a couple of Scope/Parent Scope when his scope is already associated to another parent scope</td>
			<td><a href="/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/AssetsStorageError.html#PARENT_SCOPE_INCOMPATIBILITY">
                AssetStorageError#PARENT_SCOPE_INCOMPATIBILITY
			    </a><br/>
                &nbsp;-&nbsp;<b>scope :</b> scope in error,<br/>
                &nbsp;-&nbsp;<b>parentScope :</b> scope parent in error.
            </td>
		</tr>
		<tr>
			<td>An asset can't be add with <i>Detached Scope</i> as his scope, <i>Detached Scope</i> is only allowed as a Parent Scope</td>
			<td><a href="/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/AssetsStorageError.html#DETACHED_SCOPE_NOT_ALLOWED">
                AssetStorageError#DETACHED_SCOPE_NOT_ALLOWED
			    </a><br/>
                &nbsp;-&nbsp;<b>detachedScope :</b> the detached scope.
            </td>
		</tr>
	</tbody>
</table>

#### **Access** Rules

All assets returned by **assetsFor(...)** has the following characteristics :
* **All assets** are returned ordered from the oldest scope to the youngest scope,
* **Versions** returned are those in the youngest scopes (but always keeping the order of their origin scopes in the case of a change)
* **Locations** are merged during the course if and only if the version is identical to an asset

## Assets Manipulations

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
			<td>Assets is a Helper based on AssetsConfigurator and AssetsStorage.<br/>
			you can use through its public API :
			<br/><br/>
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
			<td></td>
		</tr>
		<tr>
			<td><a href="/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/AssetsLoader.html">
			AssetsLoader</a></td>
			<td>AssetsLoader is an interface to load from a source a set of assets and their scopes and scopes parents via its API <b>loadAssets()</b>
            <br/><br/>
            Some <a href="/dandelion/features/assets/loaders.html">implementations</a> are available AssetsJsonLoader (default), AssetsNopLoader.
            </td>
		</tr>
	</tbody>
</table>
