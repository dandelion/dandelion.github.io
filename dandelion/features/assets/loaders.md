---
layout: dandelion-assets
menu: assets
level1: features
level2:
  url: assets
  name: Assets Stack
level3:
  url: loaders
  name: Loader Implementations
---

### Loader Implementations

<br />
#### Built-in implementations

 * **JSON implementation** (used by default)

The [AssetsJsonLoader](/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/loader/AssetsJsonLoader.html) loads the assets from all `*.json` files under the `dandelion` folder.

Each JSON file is transformed in an `AssetComponent` object.
To add an asset, you can create a new JSON file like this :

	{
		“scope”: “scopeOfAssets”,
		“parent”: “parentScopeOfAssets”,
		“assets”: [
			{
				“name”: “assetName”,
				“version”: “assetVersion”,
				“type”: “typeOfAsset”,
				“locations”: {
					“remote”: ”assetLocationForRemoteKey”,
					“local”: “assetLocationForLocalKey”
				}
			}
		]
	}

 * **No Operations implementation**

The [AssetsNopLoader](/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/loader/AssetsNopLoader.html) loads nothing, you can use it to disable the _assets management system_.

<br />
#### How to build your own implementation?

Let's say you want to store your stack description in a data base or in a file system. You can do it writing your own _loader_ implementation.

Your custom loader must implement [AssetsLoader](/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/AssetsLoader.html).
Now, you can setup your class with configuration property [assets.loaders](/dandelion/ref/configuration/#assets.loaders).
