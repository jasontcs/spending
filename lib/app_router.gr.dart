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
    SignInRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SignInPage());
    },
    AppHomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const AppHomePage());
    },
    RecordRoute.name: (routeData) {
      final args = routeData.argsAs<RecordRouteArgs>(
          orElse: () => const RecordRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: WrappedRoute(
              child: RecordPage(
                  key: args.key, recordId: args.recordId, date: args.date)),
          fullscreenDialog: true);
    },
    CategoriesRoute.name: (routeData) {
      final args = routeData.argsAs<CategoriesRouteArgs>(
          orElse: () => const CategoriesRouteArgs());
      return MaterialPageX<Category>(
          routeData: routeData,
          child: WrappedRoute(
              child: CategoriesPage(key: args.key, selected: args.selected)));
    },
    CategoryRoute.name: (routeData) {
      final args = routeData.argsAs<CategoryRouteArgs>(
          orElse: () => const CategoryRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: WrappedRoute(child: CategoryPage(key: args.key, id: args.id)));
    },
    PeopleRoute.name: (routeData) {
      final args = routeData.argsAs<PeopleRouteArgs>(
          orElse: () => const PeopleRouteArgs());
      return MaterialPageX<Person>(
          routeData: routeData,
          child: WrappedRoute(
              child: PeoplePage(key: args.key, selectedId: args.selectedId)));
    },
    PersonRoute.name: (routeData) {
      final args = routeData.argsAs<PersonRouteArgs>(
          orElse: () => const PersonRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: WrappedRoute(child: PersonPage(key: args.key, id: args.id)));
    },
    CurrenciesRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: WrappedRoute(child: const CurrenciesPage()));
    },
    ReceiptRoute.name: (routeData) {
      final args = routeData.argsAs<ReceiptRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: ReceiptPage(
              key: args.key, image: args.image, heroTag: args.heroTag),
          fullscreenDialog: true);
    },
    RecordsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: WrappedRoute(child: const RecordsPage()));
    },
    BudgetRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: WrappedRoute(child: const BudgetPage()));
    },
    ChartRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: WrappedRoute(child: const ChartPage()));
    },
    SettingRoute.name: (routeData) {
      final args = routeData.argsAs<SettingRouteArgs>(
          orElse: () => const SettingRouteArgs());
      return MaterialPageX<dynamic>(
          routeData: routeData, child: SettingPage(key: args.key));
    },
    ByPersonTabRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ByPersonTabPage());
    },
    TrendTabRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const TrendTabPage());
    },
    ByCategoryTabRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ByCategoryTabPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SignInRoute.name, path: '/'),
        RouteConfig(AppHomeRoute.name, path: '/app-home-page', children: [
          RouteConfig(RecordsRoute.name,
              path: 'records-page', parent: AppHomeRoute.name),
          RouteConfig(BudgetRoute.name,
              path: 'budget-page', parent: AppHomeRoute.name),
          RouteConfig(ChartRoute.name,
              path: 'chart-page',
              parent: AppHomeRoute.name,
              children: [
                RouteConfig(ByPersonTabRoute.name,
                    path: 'by-person-tab-page', parent: ChartRoute.name),
                RouteConfig(TrendTabRoute.name,
                    path: '', parent: ChartRoute.name),
                RouteConfig(ByCategoryTabRoute.name,
                    path: 'by-category-tab-page', parent: ChartRoute.name)
              ]),
          RouteConfig(SettingRoute.name,
              path: 'setting-page', parent: AppHomeRoute.name)
        ]),
        RouteConfig(RecordRoute.name, path: '/record-page'),
        RouteConfig(CategoriesRoute.name, path: '/categories-page'),
        RouteConfig(CategoryRoute.name, path: '/category-page'),
        RouteConfig(PeopleRoute.name, path: '/people-page'),
        RouteConfig(PersonRoute.name, path: '/person-page'),
        RouteConfig(CurrenciesRoute.name, path: '/currencies-page'),
        RouteConfig(ReceiptRoute.name, path: '/receipt-page')
      ];
}

/// generated route for
/// [SignInPage]
class SignInRoute extends PageRouteInfo<void> {
  const SignInRoute() : super(SignInRoute.name, path: '/');

  static const String name = 'SignInRoute';
}

/// generated route for
/// [AppHomePage]
class AppHomeRoute extends PageRouteInfo<void> {
  const AppHomeRoute({List<PageRouteInfo>? children})
      : super(AppHomeRoute.name,
            path: '/app-home-page', initialChildren: children);

  static const String name = 'AppHomeRoute';
}

/// generated route for
/// [RecordPage]
class RecordRoute extends PageRouteInfo<RecordRouteArgs> {
  RecordRoute({Key? key, String? recordId, String? date})
      : super(RecordRoute.name,
            path: '/record-page',
            args: RecordRouteArgs(key: key, recordId: recordId, date: date));

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
class CategoriesRoute extends PageRouteInfo<CategoriesRouteArgs> {
  CategoriesRoute({Key? key, String? selected})
      : super(CategoriesRoute.name,
            path: '/categories-page',
            args: CategoriesRouteArgs(key: key, selected: selected));

  static const String name = 'CategoriesRoute';
}

class CategoriesRouteArgs {
  const CategoriesRouteArgs({this.key, this.selected});

  final Key? key;

  final String? selected;

  @override
  String toString() {
    return 'CategoriesRouteArgs{key: $key, selected: $selected}';
  }
}

/// generated route for
/// [CategoryPage]
class CategoryRoute extends PageRouteInfo<CategoryRouteArgs> {
  CategoryRoute({Key? key, String? id})
      : super(CategoryRoute.name,
            path: '/category-page', args: CategoryRouteArgs(key: key, id: id));

  static const String name = 'CategoryRoute';
}

class CategoryRouteArgs {
  const CategoryRouteArgs({this.key, this.id});

  final Key? key;

  final String? id;

  @override
  String toString() {
    return 'CategoryRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [PeoplePage]
class PeopleRoute extends PageRouteInfo<PeopleRouteArgs> {
  PeopleRoute({Key? key, String? selectedId})
      : super(PeopleRoute.name,
            path: '/people-page',
            args: PeopleRouteArgs(key: key, selectedId: selectedId));

  static const String name = 'PeopleRoute';
}

class PeopleRouteArgs {
  const PeopleRouteArgs({this.key, this.selectedId});

  final Key? key;

  final String? selectedId;

  @override
  String toString() {
    return 'PeopleRouteArgs{key: $key, selectedId: $selectedId}';
  }
}

/// generated route for
/// [PersonPage]
class PersonRoute extends PageRouteInfo<PersonRouteArgs> {
  PersonRoute({Key? key, String? id})
      : super(PersonRoute.name,
            path: '/person-page', args: PersonRouteArgs(key: key, id: id));

  static const String name = 'PersonRoute';
}

class PersonRouteArgs {
  const PersonRouteArgs({this.key, this.id});

  final Key? key;

  final String? id;

  @override
  String toString() {
    return 'PersonRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [CurrenciesPage]
class CurrenciesRoute extends PageRouteInfo<void> {
  const CurrenciesRoute()
      : super(CurrenciesRoute.name, path: '/currencies-page');

  static const String name = 'CurrenciesRoute';
}

/// generated route for
/// [ReceiptPage]
class ReceiptRoute extends PageRouteInfo<ReceiptRouteArgs> {
  ReceiptRoute({Key? key, required Image image, required Object heroTag})
      : super(ReceiptRoute.name,
            path: '/receipt-page',
            args: ReceiptRouteArgs(key: key, image: image, heroTag: heroTag));

  static const String name = 'ReceiptRoute';
}

class ReceiptRouteArgs {
  const ReceiptRouteArgs(
      {this.key, required this.image, required this.heroTag});

  final Key? key;

  final Image image;

  final Object heroTag;

  @override
  String toString() {
    return 'ReceiptRouteArgs{key: $key, image: $image, heroTag: $heroTag}';
  }
}

/// generated route for
/// [RecordsPage]
class RecordsRoute extends PageRouteInfo<void> {
  const RecordsRoute() : super(RecordsRoute.name, path: 'records-page');

  static const String name = 'RecordsRoute';
}

/// generated route for
/// [BudgetPage]
class BudgetRoute extends PageRouteInfo<void> {
  const BudgetRoute() : super(BudgetRoute.name, path: 'budget-page');

  static const String name = 'BudgetRoute';
}

/// generated route for
/// [ChartPage]
class ChartRoute extends PageRouteInfo<void> {
  const ChartRoute({List<PageRouteInfo>? children})
      : super(ChartRoute.name, path: 'chart-page', initialChildren: children);

  static const String name = 'ChartRoute';
}

/// generated route for
/// [SettingPage]
class SettingRoute extends PageRouteInfo<SettingRouteArgs> {
  SettingRoute({Key? key})
      : super(SettingRoute.name,
            path: 'setting-page', args: SettingRouteArgs(key: key));

  static const String name = 'SettingRoute';
}

class SettingRouteArgs {
  const SettingRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'SettingRouteArgs{key: $key}';
  }
}

/// generated route for
/// [ByPersonTabPage]
class ByPersonTabRoute extends PageRouteInfo<void> {
  const ByPersonTabRoute()
      : super(ByPersonTabRoute.name, path: 'by-person-tab-page');

  static const String name = 'ByPersonTabRoute';
}

/// generated route for
/// [TrendTabPage]
class TrendTabRoute extends PageRouteInfo<void> {
  const TrendTabRoute() : super(TrendTabRoute.name, path: '');

  static const String name = 'TrendTabRoute';
}

/// generated route for
/// [ByCategoryTabPage]
class ByCategoryTabRoute extends PageRouteInfo<void> {
  const ByCategoryTabRoute()
      : super(ByCategoryTabRoute.name, path: 'by-category-tab-page');

  static const String name = 'ByCategoryTabRoute';
}
