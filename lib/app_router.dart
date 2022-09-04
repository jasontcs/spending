import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spending_repository/spending_repository.dart';

import 'features/auth/auth.dart';
import 'features/budget/budget.dart';
import 'features/categories/categories.dart';
import 'features/category/category.dart';
import 'features/chart/chart.dart';
import 'features/home/home.dart';
import 'features/people/people.dart';
import 'features/person/person.dart';
import 'features/record/record.dart';
import 'features/records/records.dart';
import 'features/setting/view/setting_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: AppHomePage,
      guards: [AuthGuard],
      children: [
        AutoRoute(page: RecordsPage),
        AutoRoute(page: BudgetPage),
        AutoRoute(page: ChartPage),
        AutoRoute(page: SettingPage),
      ],
      initial: true,
    ),
    AutoRoute(page: RecordPage, fullscreenDialog: true),
    AutoRoute<Category?>(page: CategoriesPage),
    AutoRoute(page: CategoryPage),
    AutoRoute<Person?>(page: PeoplePage),
    AutoRoute(page: PersonPage),
    AutoRoute(page: SignInPage),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {
  AppRouter({required this.authGuard}) : super(authGuard: authGuard);

  final AuthGuard authGuard;
}

// AppHomePage.route(routes: [
//   RecordPage.route(routes: [
//     CategoriesPage.route(withRecord: true),
//     PeoplePage.route(withRecord: true),
//   ]),
//   CategoriesPage.route(routes: [
//     CategoryPage.route(),
//   ]),
//   PeoplePage.route(routes: [
//     PersonPage.route(),
//   ]),
// ]),
// SignInPage.route(),

class AuthGuard extends AutoRouteGuard {
  bool _authenticated = true;

  AuthGuard(Stream<AuthState> authStream) {
    authStream.listen((state) {
      _authenticated = state.status == AuthStatus.login;
    });
  }
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (_authenticated) {
      resolver.next();
    } else {
      router.push(const SignInRoute());
    }
  }
}
