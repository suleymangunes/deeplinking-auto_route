// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:deeplinking_autoroute/screen/deep_linking_page.dart' as _i1;
import 'package:deeplinking_autoroute/screen/home_page.dart' as _i2;
import 'package:flutter/material.dart' as _i4;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    DeepLinkingRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<DeepLinkingRouteArgs>(
          orElse: () =>
              DeepLinkingRouteArgs(token: pathParams.optString('token')));
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.DeepLinkingPage(
          key: args.key,
          token: args.token,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.DeepLinkingPage]
class DeepLinkingRoute extends _i3.PageRouteInfo<DeepLinkingRouteArgs> {
  DeepLinkingRoute({
    _i4.Key? key,
    String? token,
    List<_i3.PageRouteInfo>? children,
  }) : super(
          DeepLinkingRoute.name,
          args: DeepLinkingRouteArgs(
            key: key,
            token: token,
          ),
          rawPathParams: {'token': token},
          initialChildren: children,
        );

  static const String name = 'DeepLinkingRoute';

  static const _i3.PageInfo<DeepLinkingRouteArgs> page =
      _i3.PageInfo<DeepLinkingRouteArgs>(name);
}

class DeepLinkingRouteArgs {
  const DeepLinkingRouteArgs({
    this.key,
    this.token,
  });

  final _i4.Key? key;

  final String? token;

  @override
  String toString() {
    return 'DeepLinkingRouteArgs{key: $key, token: $token}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute({List<_i3.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
