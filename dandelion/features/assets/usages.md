---
layout: dandelion-assets
menu: assets
level1: features
level2:
  url: assets
  name: Assets Stack
level3:
  url: usages
  name: Assets Usages
---

### Assets Usages

#### Assets Helper

Anywhere in your application, you can access your assets stack by using the [Assets Helper](/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/Assets.html).
You can use it through its public API :
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

On the first use, the helper loads your assets stack ([more detail on the plumbing section](/dandelion/features/assets/plumbing.html))

#### Assets on your page

To use your asset stack in your web page, you need first to enable the rendering process of your needed assets.
* In `jsp`, by adding `<dandelion:assets/>` at the end of the page.
* In `Thymeleaf`, by adding `ddl:assets-stack='enabled'` in the `<html>` tag.

Now, you can use the `assets stack` feature in your page. For that, you have 2 ways to do it :
* on `Servlet` side, by using the `Assets Request Context` feature,
* on `Page` side, by using `Jsp taglib` or `Thymeleaf dialect`.

##### Assets Request Context

At any time during the page rendering, you can access the [AssetsRequestContext](/dandelion/ref/javadoc/dandelion-core/com/github/dandelion/core/asset/AssetsRequestContext.html), allowing you to :
 * add some scopes
 * exclude some scopes or assets
 * render them.

A context is always attached to a specific request and is finally destroyed at the end of the request.

###### Declaration of needed assets
The context is used to declare the needed assets in a page context, you can use it through its public API :
<table class="table table-bordered">
    <thead>
        <tr>
            <th style="width: 40%">Method</th>
            <th style="width: 60%">Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>get(ServletRequest)</td>
            <td>Retrieve the context from the servlet request (or create him, if needed)</td>
        </tr>
        <tr>
            <td>addScopes(Scopes)</td>
            <td>Add some scopes on the context (comma separated)</td>
        </tr>
        <tr>
            <td>excludeScopes(Scopes)</td>
            <td>Remove some scopes on the context (comma separated)</td>
        </tr>
        <tr>
            <td>excludeAssets(Asset Names)</td>
            <td>Exclude some assets names on the context (comma separated)</td>
        </tr>
        <tr>
            <td>hasBeenRendered()</td>
            <td>Store on the context a flag when the context have already be use to renderer the needed assets</td>
        </tr>
    </tbody>
</table>

###### Extraction of needed assets
The context is used to extract the needed assets on a page context, you can use it through his public API :
<table class="table table-bordered">
    <thead>
        <tr>
            <th style="width: 40%">Method</th>
            <th style="width: 60%">Description</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>getScopes(withoutExcludedScopes)</td>
            <td>Return the needed assets attached to the stored scopes with ou without excluded scopes</td>
        </tr>
        <tr>
            <td>getExcludedScopes()</td>
            <td>Return the excluded scopes</td>
        </tr>
        <tr>
            <td>getExcludedAssets()</td>
            <td>Return the excluded assets</td>
        </tr>
        <tr>
            <td>isAlreadyRendered()</td>
            <td>active the flag of the rendering needed assets on this context</td>
        </tr>
    </tbody>
</table>

##### JSP Taglib

You can use the [JSP Taglib](/dandelion/ref/jsp/assets.html) to manage the `AssetsRequestContext` object.

In your JSP, you can use the tag `assets` with some attributes :

    <%@ taglib prefix="dandelion" uri="http://github.com/dandelion" %>
	<html>
		<head>
		    ...
			<dandelion:assets scopes=”jquery” renderer=”false”/>
		    ...
		</head>
		<body>
		    ...
			<dandelion:assets scopes=”datatables” renderer=”false”/>
		    ...
			<dandelion:assets/> <!-- Always needed to rendering at the end of JSP -->
		</body>
	</html>

It will produce the following HTML :

	<html>
		<head>
		    ...
		    ...
		</head>
		<body>
		    ...
		    ...
			<script src="{{location}}/jquery.js"></script>
			<script src="{{location}}/datatables.js"></script>
			<link href="{{location}}/datatables.css" rel="stylesheet">
		</body>
	</html>

WARNING : due to a limitation of JSP Taglib, all the assets are rendered at the end of page.

##### Thymeleaf Dialect

You can use the [Thymeleaf Dialect](/dandelion/ref/thymeleaf/assets.html) to manage the `AssetsRequestContext` object.

In your HTML page, you can use the `assets-*` attributes :

    <html
        xmlns:ddl="http://www.thymeleaf.org/dandelion"
        ddl:assets-stack="enabled">
        <!-- Enable the assets rendering at the end of this page.
             Optional, if you use another 'assets-*' attributes on this page. -->
		<head ddl:assets-scopes="jquery">
		    ...
		</head>
		<body>
		    ...
			<table ddl:assets-scopes="datatables">
			    ...
			</table>
		    ...
		</body>
	</html>

The produces HTML is :

    <html>
		<head>
		    ...
			<link href="{{location}}/datatables.css" rel="stylesheet">
		</head>
		<body>
		    ...
			<table>
			    ...
			</table>
		    ...
			<script src="{{location}}/jquery.js"></script>
			<script src="{{location}}/datatables.js"></script>
		</body>
	</html>

Due to the tree aspect of a HTML page offered by Thymeleaf, the assets are rendered using the best practices :
* at the end of the `body` tag for Javascript file
* at the end of the `head`tag for style sheets
