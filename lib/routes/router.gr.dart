// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    LandingRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LandingPage());
    },
    GamesDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<GamesDetailsRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: GamesDetailsPage(key: args.key, dataModel: args.dataModel));
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(LandingRoute.name, path: '/'),
        RouteConfig(GamesDetailsRoute.name, path: '/games-details-page')
      ];
}

/// generated route for
/// [LandingPage]
class LandingRoute extends PageRouteInfo<void> {
  const LandingRoute() : super(LandingRoute.name, path: '/');

  static const String name = 'LandingRoute';
}

/// generated route for
/// [GamesDetailsPage]
class GamesDetailsRoute extends PageRouteInfo<GamesDetailsRouteArgs> {
  GamesDetailsRoute({Key? key, required DataModel dataModel})
      : super(GamesDetailsRoute.name,
            path: '/games-details-page',
            args: GamesDetailsRouteArgs(key: key, dataModel: dataModel));

  static const String name = 'GamesDetailsRoute';
}

class GamesDetailsRouteArgs {
  const GamesDetailsRouteArgs({this.key, required this.dataModel});

  final Key? key;

  final DataModel dataModel;

  @override
  String toString() {
    return 'GamesDetailsRouteArgs{key: $key, dataModel: $dataModel}';
  }
}
