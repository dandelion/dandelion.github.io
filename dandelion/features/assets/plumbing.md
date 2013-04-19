---
layout: dandelion
menu: assets
level1: features
level2:
  url: assets
  name: Assets Stack
level3:
  url: storage
  name: Assets Plumbing
---

### Dandelion Assets Storage
In **Dandelion**, the assets management is based on a [Storage Component](/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/AssetsStorage.html) which provides an API with _storage rules_.

#### **AssetsStorage** Public API
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
			<td>Store an asset in the <b>default scope</b></td>
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

#### **AssetsStorage** Rules

##### **Store** Rules

* [An asset can't be added twice in the same scope](/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/AssetsStorageError.html#ASSET_ALREADY_EXISTS_IN_SCOPE)
* [A location can't be used twice in the same scope by an similar asset](/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/AssetsStorageError.html#ASSET_LOCATION_ALREADY_EXISTS_IN_SCOPE)
* [An asset can't have a parent scope which doesn't already exist](/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/AssetsStorageError.html#UNDEFINED_PARENT_SCOPE)
* [An asset can't have a couple of Scope/Parent Scope when its scope is already associated to another parent scope](/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/AssetsStorageError.html#PARENT_SCOPE_INCOMPATIBILITY)
* [An asset can't use the Detached Scope as his scope, the Detached Scope is only allowed as a Parent Scope](/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/AssetsStorageError.html#DETACHED_SCOPE_NOT_ALLOWED)

##### **Access** Rules

All assets returned by **assetsFor(...)** have the following characteristics :
* **All assets** are returned sorted from the oldest scope to the youngest scope,
* **Versions** returned are those in the youngest scopes (but always keeping the order of their origin scopes in the case of a change)
* **Locations** are merged during the course if and only if the version is identical to an asset


### Dandelion Assets Configurator
The [AssetsConfigurator](/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/AssetsConfigurator.html) uses the [assets properties](/dandelion/ref/configuration/) load by [Dandelion Configuration](/dandelion/ref/configuration/).

### Dandelion Assets Loader
An [AssetsLoader](/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/AssetsLoader.html) is an interface to load a set of assets from a source.
Some [implementations](/dandelion/features/assets/loaders.html) are available : AssetsJsonLoader (default), AssetsNopLoader.

### Dandelion Assets Location Wrapper
An [AssetsLocationWrapper](/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/AssetsLocationWrapper.html) is an interface which wraps a location before retrieving it from **Assets.getAssetLocation(...)**.
Some [implementations](/dandelion/features/assets/wrappers.html) are available for location keys : classpath, delegate, template, webjars (extras).