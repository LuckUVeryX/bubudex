// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter

import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';

import '../views/pages/pages.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: PokeDetailsPage, path: '/pokemon/:pokeId'),
    // Wildcard matching to handle invalid or undefined paths.
    RedirectRoute(path: '*', redirectTo: '/')
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}
