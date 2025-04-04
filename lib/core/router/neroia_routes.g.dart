// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'neroia_routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
  $splashRoute,
  $errorRoute,
  $confirmEmailRoute,
  $logInRoute,
  $signUpRoute,
  $myShellRouteData,
];

RouteBase get $splashRoute => GoRouteData.$route(
  path: '/',
  name: 'Splash Screen',

  factory: $SplashRouteExtension._fromState,
);

extension $SplashRouteExtension on SplashRoute {
  static SplashRoute _fromState(GoRouterState state) => SplashRoute();

  String get location => GoRouteData.$location('/');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $errorRoute => GoRouteData.$route(
  path: '/error',
  name: 'Error Screen',

  factory: $ErrorRouteExtension._fromState,
);

extension $ErrorRouteExtension on ErrorRoute {
  static ErrorRoute _fromState(GoRouterState state) =>
      ErrorRoute(error: state.uri.queryParameters['error']);

  String get location => GoRouteData.$location(
    '/error',
    queryParams: {if (error != null) 'error': error},
  );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $confirmEmailRoute => GoRouteData.$route(
  path: '/confirm-email',
  name: 'Confirm Email Page',

  factory: $ConfirmEmailRouteExtension._fromState,
);

extension $ConfirmEmailRouteExtension on ConfirmEmailRoute {
  static ConfirmEmailRoute _fromState(GoRouterState state) =>
      ConfirmEmailRoute();

  String get location => GoRouteData.$location('/confirm-email');

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $logInRoute => GoRouteData.$route(
  path: '/login',
  name: 'Login Page',

  factory: $LogInRouteExtension._fromState,
);

extension $LogInRouteExtension on LogInRoute {
  static LogInRoute _fromState(GoRouterState state) => LogInRoute(
    email: state.uri.queryParameters['email'] ?? '',
    password: state.uri.queryParameters['password'] ?? '',
  );

  String get location => GoRouteData.$location(
    '/login',
    queryParams: {
      if (email != '') 'email': email,
      if (password != '') 'password': password,
    },
  );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signUpRoute => GoRouteData.$route(
  path: '/signup',
  name: 'Signup Page',

  factory: $SignUpRouteExtension._fromState,
);

extension $SignUpRouteExtension on SignUpRoute {
  static SignUpRoute _fromState(GoRouterState state) => SignUpRoute(
    email: state.uri.queryParameters['email'] ?? '',
    password: state.uri.queryParameters['password'] ?? '',
  );

  String get location => GoRouteData.$location(
    '/signup',
    queryParams: {
      if (email != '') 'email': email,
      if (password != '') 'password': password,
    },
  );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $myShellRouteData => StatefulShellRouteData.$route(
  restorationScopeId: MyShellRouteData.$restorationScopeId,
  navigatorContainerBuilder: MyShellRouteData.$navigatorContainerBuilder,
  factory: $MyShellRouteDataExtension._fromState,
  branches: [
    StatefulShellBranchData.$branch(
      observers: EventsBranch.$observers,

      routes: [
        GoRouteData.$route(
          path: '/events',
          name: 'Events Page',

          factory: $EventsRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      observers: AttendingEventsBranch.$observers,

      routes: [
        GoRouteData.$route(
          path: '/your-events',
          name: 'Your Events Page',

          factory: $YourEventsRouteExtension._fromState,
        ),
      ],
    ),
    StatefulShellBranchData.$branch(
      observers: LikedEventsBranch.$observers,

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

  String get location => GoRouteData.$location('/events');

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
