import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:list_app/route/router.gr.dart';

@RoutePage()
class BottomNavigationPage extends ConsumerStatefulWidget {
  const BottomNavigationPage({super.key});

  @override
  ConsumerState<BottomNavigationPage> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends ConsumerState<BottomNavigationPage>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        TopRoute(),
        FavoriteRoute(),
      ],
      transitionBuilder: (context, child, animation) => child,
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(
                label: 'トップ',
                icon: Icon(Icons.home),
              ),
              BottomNavigationBarItem(
                label: 'スター',
                icon: Icon(Icons.star),
              ),
            ],
          ),
        );
      },
    );
  }
}
