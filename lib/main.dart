import 'package:auto_route/auto_route.dart';
import 'package:deeplinking_autoroute/routes/app_router.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return MaterialApp.router(
      title: 'Material App',
      routerConfig: appRouter.config(
        deepLinkBuilder: (deepLink) {
          if (deepLink.path.startsWith('/DeepLinkRoute')) {
            return deepLink;
          } else {
            return DeepLink.defaultPath;
            // or DeepLink.path('/')
            // or DeepLink([HomeRoute()])
          }
        },
      ),
    );
  }
}
