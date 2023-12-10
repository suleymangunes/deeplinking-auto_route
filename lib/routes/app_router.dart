import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: "/HomeRoute", page: HomeRoute.page, initial: true),
        AutoRoute(path: "/DeepLinkRoute", page: DeepLinkingRoute.page),
      ];
}
