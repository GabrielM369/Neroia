// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'neroia_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [$myShellRouteData];

RouteBase get $myShellRouteData => StatefulShellRouteData.$route(
  restorationScopeId: MyShellRouteData.$restorationScopeId,
  navigatorContainerBuilder: MyShellRouteData.$navigatorContainerBuilder,
  factory: $MyShellRouteDataExtension._fromState,
  branches: [
    StatefulShellBranchData.$branch(
      observers: ProfileBranch.$observers,

      routes: [
        GoRouteData.$route(
          path: '/',
          name: 'Events Page',

          factory: $EventsRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      observers: ProfileBranch.$observers,

      routes: [
        GoRouteData.$route(
          path: '/your-events',
          name: 'Your Events Page',

          factory: $YourEventsRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      observers: ProfileBranch.$observers,

      routes: [
        GoRouteData.$route(
          path: '/liked-events',
          name: 'Liked Events Page',

          factory: $LikedEventsRouteExtension._fromState,
        ),
      ],
    ),
  ],
);

extension $MyShellRouteDataExtension on MyShellRouteData {
  static MyShellRouteData _fromState(GoRouterState state) =>
      const MyShellRouteData();
}

extension $EventsRouteExtension on EventsRoute {
  static EventsRoute _fromState(GoRouterState state) => EventsRoute();

  String get location => GoRouteData.$location('/');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $YourEventsRouteExtension on YourEventsRoute {
  static YourEventsRoute _fromState(GoRouterState state) => YourEventsRoute();

  String get location => GoRouteData.$location('/your-events');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LikedEventsRouteExtension on LikedEventsRoute {
  static LikedEventsRoute _fromState(GoRouterState state) => LikedEventsRoute();

  String get location => GoRouteData.$location('/liked-events');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
