import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../featured/intro/onboarding_screen.dart';

import 'routes.dart';


final _rootNavigatorKey = GlobalKey<NavigatorState>();

final globalGoRouteProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: <RouteBase>[
      GoRoute(
        name: Routes.initialRoute,
        path: '/',
        builder: (context, state) => OnboardingScreen(),
        routes: <RouteBase>[
          GoRoute(
            name: Routes.introScreenRoute,
            path: Routes.introScreenRoute,
            builder: (BuildContext context, GoRouterState state) => OnboardingScreen(),
          ),
        ],
      ),
    ],
    redirect: (BuildContext context, GoRouterState state) {
      return null;

      // if (AuthState.of(context).isSignedIn) {
      //   return context.namedLocation('signIn');
      // } else {
      //   return null;
      // }
    },
  );
});
