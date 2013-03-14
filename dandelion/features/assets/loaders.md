---
layout: dandelion
menu: assets
level1: features
level2:
  url: assets
  name: Assets
level3:
  url: loaders
  name: AssetsLoader Implementations
---

## AssetsLoader Implementations

### JSON implementation (use by default)

[AssetsJsonLoader](/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/loader/AssetsJsonLoader.html) load the Assets from all `*.json` files under `dandelion` folder.

Each JSON file is transformed in an `AssetComponent` object.
To add a asset, you can create a new JSON file like this :

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

### No Operations implementation

[AssetsNopLoader](/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/loader/AssetsNopLoader.html) load nothing, you can use it to disabled the _assets management system_.

