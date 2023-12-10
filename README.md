# Deeplinking With Auto_route

A domain name is required to do Deep Linking. Additionally, for secure access, you must create an assetlinks.json file and host it on your backend server. Check out [this repo](https://github.com/suleymangunes/deeplink-on-server). for this part.


This is my own domain address that I will use. https://deeplink-website.onrender.com/


Creating a flutter application with package name.

`flutter create --org com.domain_name app_name`

Add the following codes to the AndroidManifest.xml file.

```
<meta-data android:name="flutter_deeplinking_enabled" android:value="true" />
<intent-filter android:autoVerify="true">
    <action android:name="android.intent.action.VIEW" />
    <category android:name="android.intent.category.DEFAULT" />
    <category android:name="android.intent.category.BROWSABLE" />
    <data android:scheme="http" android:host="deeplink-website.onrender.com" /> <!-- The host part must belong to you. -->
    <data android:scheme="https" />
</intent-filter>
```

Set the deep link in the router config.

```
routerConfig: appRouter.config(
    deepLinkBuilder: (deepLink) {
      if (deepLink.path.startsWith('/DeepLinkRoute')) {  // Enter the path you created for the deep link.
        return deepLink;
      } else {
        return DeepLink.defaultPath;
        // or DeepLink.path('/')
        // or DeepLink([HomeRoute()])
      }
    },
  ),
```

I defined a token in the link that will direct me to my deeplink page. I bought this token via the link.

To do this, add the token with path params annotation to the page created for the deeplink and update the path section when defining the route.

```
const DeepLinkingPage({super.key, @PathParam('token') this.token});

  final String? token;
```

```
AutoRoute(path: "/DeepLinkRoute/:token", page: DeepLinkingRoute.page),
```

That's it.

![ezgif-1-3693210070](https://github.com/suleymangunes/deeplinking-auto_route/assets/62201710/378d8a38-3f7a-4dca-82f6-f4c9448e657f)


