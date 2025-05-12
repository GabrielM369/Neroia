import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:neroia_app/core/router/nav_bar/custom_nav_bar.dart';
import 'package:neroia_app/presentation/pages/chatbot_page.dart';
import 'package:neroia_app/presentation/pages/confirm_email_page.dart';
import 'package:neroia_app/presentation/pages/error_page.dart';
import 'package:neroia_app/presentation/pages/explore_events_page.dart';
import 'package:neroia_app/presentation/pages/home_page.dart';
import 'package:neroia_app/presentation/pages/liked_events_page.dart';
import 'package:neroia_app/presentation/pages/login_page.dart';
import 'package:neroia_app/presentation/pages/profile_page.dart';
import 'package:neroia_app/presentation/pages/search_events_page.dart';
import 'package:neroia_app/presentation/pages/see_all_events_page.dart';
import 'package:neroia_app/presentation/pages/signup_page.dart';
import 'package:neroia_app/presentation/pages/splash_screen.dart';
import 'package:neroia_app/presentation/pages/your_events_page.dart';

import 'app_router.dart';

part 'neroia_routes.g.dart';

final GlobalKey<NavigatorState> rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> shellNavigatorKey = GlobalKey<NavigatorState>();

@TypedGoRoute<SplashRoute>(name: SplashRoute.name, path: '/')
class SplashRoute extends GoRouteData {
  SplashRoute();

  static const String name = 'Splash Screen';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) => const MaterialPage(name: name, child: SplashScreen());
}

@TypedGoRoute<ErrorRoute>(name: ErrorRoute.name, path: '/error')
class ErrorRoute extends GoRouteData {
  final String? error;
  ErrorRoute({this.error});

  static const String name = 'Error Screen';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      MaterialPage(name: name, child: ErrorPage(error: error));
}

@TypedGoRoute<ConfirmEmailRoute>(name: ConfirmEmailRoute.name, path: '/confirm-email')
class ConfirmEmailRoute extends GoRouteData {
  ConfirmEmailRoute();

  static const String name = 'Confirm Email Page';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) =>
      const MaterialPage(name: name, child: ConfirmEmailPage());
}

@TypedGoRoute<LogInRoute>(name: LogInRoute.name, path: '/login')
class LogInRoute extends GoRouteData {
  final String email;
  final String password;

  LogInRoute({this.email = '', this.password = ''});

  static const String name = 'Login Page';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) => MaterialPage(name: name, child: LogInPage(email: email, password: password));
}

@TypedGoRoute<SignUpRoute>(name: SignUpRoute.name, path: '/signup')
class SignUpRoute extends GoRouteData {
  final String email;
  final String password;

  SignUpRoute({this.email = '', this.password = ''});

  static const String name = 'Signup Page';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) => MaterialPage(name: name, child: SignUpPage(email: email, password: password));
}

@TypedStatefulShellRoute<MyShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<HomeBranch>(
      routes: <TypedRoute<RouteData>>[TypedGoRoute<HomeRoute>(name: HomeRoute.name, path: '/home')],
    ),
    TypedStatefulShellBranch<AttendingEventsBranch>(
      routes: <TypedRoute<RouteData>>[TypedGoRoute<YourEventsRoute>(name: YourEventsRoute.name, path: '/your-events')],
    ),
    TypedStatefulShellBranch<LikedEventsBranch>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<LikedEventsRoute>(name: LikedEventsRoute.name, path: '/liked-events'),
      ],
    ),
    TypedStatefulShellBranch<ChatbotBranch>(
      routes: <TypedRoute<RouteData>>[
        TypedGoRoute<ChatbotRoute>(name: ChatbotRoute.name, path: '/chatbot'),
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
  ) => CustomNavBar(navigationShell: navigationShell, children: children);
}

class HomeBranch extends StatefulShellBranchData {
  const HomeBranch();

  static final List<NavigatorObserver> $observers = routeObservers;
}

class HomeRoute extends GoRouteData {
  HomeRoute();

  static const String name = 'Home Page';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) => MaterialPage(name: name, child: HomePage());
}

class AttendingEventsBranch extends StatefulShellBranchData {
  const AttendingEventsBranch();

  static final List<NavigatorObserver> $observers = routeObservers;
}

class YourEventsRoute extends GoRouteData {
  YourEventsRoute();

  static const String name = 'Your Events Page';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) => const MaterialPage(name: name, child: YourEventsPage());
}

class LikedEventsBranch extends StatefulShellBranchData {
  const LikedEventsBranch();

  static final List<NavigatorObserver> $observers = routeObservers;
}

class LikedEventsRoute extends GoRouteData {
  LikedEventsRoute();

  static const String name = 'Liked Events Page';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) => const MaterialPage(name: name, child: LikedEventsPage());
}

class ChatbotBranch extends StatefulShellBranchData {
  const ChatbotBranch();

  static final List<NavigatorObserver> $observers = routeObservers;
}

class ChatbotRoute extends GoRouteData {
  ChatbotRoute();

  static const String name = 'Chatbot Page';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) => const MaterialPage(name: name, child: ChatbotPage());
}

@TypedGoRoute<ProfileRoute>(name: ProfileRoute.name, path: '/profile')
class ProfileRoute extends GoRouteData {
  const ProfileRoute();

  static const String name = 'Profile Page';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) => const MaterialPage(name: name, child: ProfilePage());
}

@TypedGoRoute<ExploreEventsRoute>(name: ExploreEventsRoute.name, path: '/explore-events')
class ExploreEventsRoute extends GoRouteData {
  const ExploreEventsRoute();

  static const String name = 'Explore Events Page';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) => const MaterialPage(name: name, child: ExploreEventsPage());
}

@TypedGoRoute<SeeAllEventsRoute>(name: SeeAllEventsRoute.name, path: '/see-all-events')
class SeeAllEventsRoute extends GoRouteData {
  const SeeAllEventsRoute();

  static const String name = 'See All Events Page';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) => const MaterialPage(name: name, child: SeeAllEventsPage());
}

@TypedGoRoute<SearchEventsRoute>(name: SearchEventsRoute.name, path: '/search-events')
class SearchEventsRoute extends GoRouteData {
  const SearchEventsRoute();

  static const String name = 'Search Events Page';

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) => const MaterialPage(name: name, child: SearchEventsPage());
}
