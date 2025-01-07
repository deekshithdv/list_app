// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:list_app/presentation/bottom_navigation_page.dart' as _i1;
import 'package:list_app/presentation/favorite/favorite_page.dart' as _i2;
import 'package:list_app/presentation/top/top_page.dart' as _i3;

/// generated route for
/// [_i1.BottomNavigationPage]
class BottomNavigationRoute extends _i4.PageRouteInfo<void> {
  const BottomNavigationRoute({List<_i4.PageRouteInfo>? children})
      : super(
          BottomNavigationRoute.name,
          initialChildren: children,
        );

  static const String name = 'BottomNavigationRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.BottomNavigationPage();
    },
  );
}

/// generated route for
/// [_i2.FavoritePage]
class FavoriteRoute extends _i4.PageRouteInfo<void> {
  const FavoriteRoute({List<_i4.PageRouteInfo>? children})
      : super(
          FavoriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.FavoritePage();
    },
  );
}

/// generated route for
/// [_i3.TopPage]
class TopRoute extends _i4.PageRouteInfo<void> {
  const TopRoute({List<_i4.PageRouteInfo>? children})
      : super(
          TopRoute.name,
          initialChildren: children,
        );

  static const String name = 'TopRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.TopPage();
    },
  );
}
