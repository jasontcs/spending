import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spending_repository/spending_repository.dart';

import 'features/auth/auth.dart';
import 'features/budget/budget.dart';
import 'features/categories/categories.dart';
import 'features/category/category.dart';
import 'features/chart/chart.dart';
import 'features/home/home.dart';
import 'features/people/people.dart';
import 'features/person/person.dart';
import 'features/receipt/receipt.dart';
import 'features/record/record.dart';
import 'features/records/records.dart';
import 'features/setting/setting.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: AppHomePage,
      children: [
        AutoRoute(page: RecordsPage),
        AutoRoute(page: BudgetPage),
        AutoRoute(
          page: ChartPage,
          children: [
            AutoRoute(page: ByPersonTabPage),
            AutoRoute(page: TrendTabPage, initial: true),
            AutoRoute(page: ByCategoryTabPage),
          ],
        ),
        AutoRoute(page: SettingPage),
      ],
      initial: true,
    ),
    AutoRoute(
      page: RecordPage,
      fullscreenDialog: true,
    ),
    AutoRoute<Category?>(page: CategoriesPage),
    AutoRoute(page: CategoryPage),
    AutoRoute<Person?>(page: PeoplePage),
    AutoRoute(page: PersonPage),
    AutoRoute(page: SignInPage),
    AutoRoute(
      page: ReceiptPage,
      fullscreenDialog: true,
    ),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {
  AppRouter();
}

class AppRouterWrapper {
  final appRouter = AppRouter();
}
