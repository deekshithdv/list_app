// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/auto_route.dart';
import 'package:list_app/route/router.gr.dart';

/// routerのobserver
class AppRouteObserver extends AutoRouterObserver {
  // @override
  // void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {}
}

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  AppRouter();

  /// デフォルトのrouteタイプ設定
  @override
  RouteType get defaultRouteType => const RouteType.material();

  /// 画面一覧
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: BottomNavigationRoute.page,
          children: [
            AutoRoute(page: TopRoute.page),
            AutoRoute(page: FavoriteRoute.page),
          ],
        ),
      ];
}
