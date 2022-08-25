// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    AppHomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const AppHomePage());
    },
    SignInRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SignInPage());
    },
    RecordRoute.name: (routeData) {
      final args = routeData.argsAs<RecordRouteArgs>(
          orElse: () => const RecordRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: RecordPage(
              key: args.key, recordId: args.recordId, date: args.date));
    },
    CategoriesRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const CategoriesPage());
    },
    PeopleRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const PeoplePage());
    },
    CategoryRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const CategoryPage());
    },
    PersonRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const PersonPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(AppHomeRoute.name, path: '/', children: [
          RouteConfig(RecordRoute.name,
              path: 'record-page',
              parent: AppHomeRoute.name,
              children: [
                RouteConfig(CategoriesRoute.name,
                    path: 'categories-page', parent: RecordRoute.name),
                RouteConfig(PeopleRoute.name,
                    path: 'people-page', parent: RecordRoute.name)
              ]),
          RouteConfig(CategoriesRoute.name,
              path: 'categories-page',
              parent: AppHomeRoute.name,
              children: [
                RouteConfig(CategoryRoute.name,
                    path: 'category-page', parent: CategoriesRoute.name)
              ]),
          RouteConfig(PeopleRoute.name,
              path: 'people-page',
              parent: AppHomeRoute.name,
              children: [
                RouteConfig(PersonRoute.name,
                    path: 'person-page', parent: PeopleRoute.name)
              ])
        ]),
        RouteConfig(SignInRoute.name, path: '/sign-in-page')
      ];
}

/// generated route for
/// [AppHomePage]
class AppHomeRoute extends PageRouteInfo<void> {
  const AppHomeRoute({List<PageRouteInfo>? children})
      : super(AppHomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'AppHomeRoute';
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/sign-in-page');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [RecordPage]
class RecordRoute extends PageRouteInfo<RecordRouteArgs> {
  RecordRoute(
      {Key? key, String? recordId, String? date, List<PageRouteInfo>? children})
      : super(RecordRoute.name,
            path: 'record-page',
            args: RecordRouteArgs(key: key, recordId: recordId, date: date),
            initialChildren: children);

  static const String name = 'RecordRoute';
}

class RecordRouteArgs {
  const RecordRouteArgs({this.key, this.recordId, this.date});

  final Key? key;

  final String? recordId;

  final String? date;

  @override
  String toString() {
    return 'RecordRouteArgs{key: $key, recordId: $recordId, date: $date}';
  }
}

/// generated route for
/// [CategoriesPage]
class CategoriesRoute extends PageRouteInfo<void> {
  const CategoriesRoute()
      : super(CategoriesRoute.name, path: 'categories-page');

  static const String name = 'CategoriesRoute';
}

/// generated route for
/// [PeoplePage]
class PeopleRoute extends PageRouteInfo<void> {
  const PeopleRoute() : super(PeopleRoute.name, path: 'people-page');

  static const String name = 'PeopleRoute';
}

/// generated route for
/// [CategoryPage]
class CategoryRoute extends PageRouteInfo<void> {
  const CategoryRoute() : super(CategoryRoute.name, path: 'category-page');

  static const String name = 'CategoryRoute';
}

/// generated route for
/// [PersonPage]
class PersonRoute extends PageRouteInfo<void> {
  const PersonRoute() : super(PersonRoute.name, path: 'person-page');

  static const String name = 'PersonRoute';
}
