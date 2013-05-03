---
layout: dandelion-assets
menu: assets
level1: features
level2:
  url: assets
  name: Assets Stack
level3:
  url: cache
  name: Asset Cache
---

### Dandelion Assets Cache
#### Overview

![](/assets/images/docs/dandelion/assets-cache.png)

1. During the request processiong, the **Cacheable Location Wrapper** send the content to the **Assets Cache System** with the relative context, id and resource name,
2. The **Assets Cache System** store this content, in your **assets cache** under a cache key (create with context, id and resource name).
3. During the page processiong, the **&lt;script/&gt;** source ask, to the **Dandelion Assets Servlet**, the assets stored under the relatice context, id and resource name,
4. The **Dandelion Assets Servlet** ask, for the content, to the **Assets Cache System** with the cache key (create with context, id and resource name).
5. The **Assets Cache System** extract the needed content stored under a cache key (create with context, id and resource name),
6. Your **assets cache** extract the content and retrieve it to the **Assets Cache System**,
7. And the **Assets Cache System** forward it to the **Assets Servlet**,
8. Finally, the **Assets Servlet** serve it to your page with the right **Content-Type**.

<br />
#### Built-in implementation
The only implementation is the default one.

[DefaultAssetsCache](/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/cache/DefaultAssetsCache.html) use a Map to store and distribute the cached content.

<br />
#### How to build your own implementation?

Your custom assets cache must implement [AssetsCache](/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/cache/AssetsCache.html).
Now, you can setup your class with configuration property [assets.cache](/dandelion/ref/configuration/#assets.cache).

