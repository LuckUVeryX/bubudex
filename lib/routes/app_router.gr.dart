// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomePage());
    },
    PokeDetailsRoute.name: (routeData) {
      final pathParams = routeData.pathParams;
      final args = routeData.argsAs<PokeDetailsRouteArgs>(
          orElse: () =>
              PokeDetailsRouteArgs(pokeId: pathParams.getInt('pokeId')));
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: PokeDetailsPage(key: args.key, pokeId: args.pokeId));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(HomeRoute.name, path: '/'),
        RouteConfig(PokeDetailsRoute.name, path: '/pokemon/:pokeId'),
        RouteConfig('*#redirect', path: '*', redirectTo: '/', fullMatch: true)
      ];
}

/// generated route for [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for [PokeDetailsPage]
class PokeDetailsRoute extends PageRouteInfo<PokeDetailsRouteArgs> {
  PokeDetailsRoute({Key? key, required int pokeId})
      : super(name,
            path: '/pokemon/:pokeId',
            args: PokeDetailsRouteArgs(key: key, pokeId: pokeId),
            rawPathParams: {'pokeId': pokeId});

  static const String name = 'PokeDetailsRoute';
}

class PokeDetailsRouteArgs {
  const PokeDetailsRouteArgs({this.key, required this.pokeId});

  final Key? key;

  final int pokeId;
}
