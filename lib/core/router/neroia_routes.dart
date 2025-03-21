import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:neroia_app/core/router/tab_bar/custom_tab_bar.dart';
import 'package:neroia_app/presentation/pages/events_page.dart';
import 'package:neroia_app/presentation/pages/liked_events_page.dart';
import 'package:neroia_app/presentation/pages/splash_screen.dart';
import 'package:neroia_app/presentation/pages/your_events_page.dart';

import 'app_router.dart';

part 'neroia_routes.g.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();

// @TypedGoRoute<SplashRoute>(name: SplashRoute.name, path: '/')
// class SplashRoute extends GoRouteData {
//   SplashRoute();
//
//   static const String name = 'Splash Screen';
//
//   @override
//   Page<void> buildPage(BuildContext context, GoRouterState state) => MaterialPage(name: name, child: SplashScreen());
// }

@TypedStatefulShellRoute<MyShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<ProfileBranch>(
      routes: <TypedRoute<RouteData>>[TypedGoRoute<EventsRoute>(name: EventsRoute.name, path: '/')],
    ),
    TypedStatefulShellBranch<ProfileBranch>(
      routes: <TypedRoute<RouteData>>[TypedGoRoute<YourEventsRoute>(name: YourEventsRoute.name, path: '/your-events')],
    ),
    TypedStatefulShellBranch<ProfileBranch>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<LikedEventsRoute>(name: LikedEventsRoute.name, path: '/liked-events'),
      ],
    ),
  ],
)
class MyShellRouteData extends StatefulShellRouteData {
  const MyShellRouteData();

  @override
  Widget builder(BuildContext context, GoRouterState state, StatefulNavigationShell navigationShell) => navigationShell;

  static const String $restorationScopeId = 'restorationScopeId';

  static final GlobalKey<NavigatorState> $navigatorKey = shellNavigatorKey;

  static Widget $navigatorContainerBuilder(
    BuildContext context,
    StatefulNavigationShell navigationShell,
    List<Widget> children,
  ) => CustomTabBar(navigationShell: navigationShell, children: children);
}

class ProfileBranch extends StatefulShellBranchData {
  const ProfileBranch();

  static final List<NavigatorObserver> $observers = routeObservers;
}

class EventsRoute extends GoRouteData {
  EventsRoute();

  static const String name = 'Events Page';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) => MaterialPage(name: name, child: EventsPage());
}

class YourEventsRoute extends GoRouteData {
  YourEventsRoute();

  static const String name = 'Your Events Page';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) => MaterialPage(name: name, child: YourEventsPage());
}

class LikedEventsRoute extends GoRouteData {
  LikedEventsRoute();

  static const String name = 'Liked Events Page';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) => MaterialPage(name: name, child: LikedEventsPage());
}
