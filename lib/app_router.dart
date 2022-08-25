import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'features/auth/auth.dart';
import 'features/categories/categories.dart';
import 'features/category/category.dart';
import 'features/home/home.dart';
import 'features/people/people.dart';
import 'features/person/person.dart';
import 'features/record/record.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: AppHomePage,
      children: [
        AutoRoute(
          page: RecordPage,
          children: [
            AutoRoute(page: CategoriesPage),
            AutoRoute(page: PeoplePage),
          ],
        ),
        AutoRoute(
          page: CategoriesPage,
          children: [
            AutoRoute(page: CategoryPage),
          ],
        ),
        AutoRoute(
          page: PeoplePage,
          children: [
            AutoRoute(page: PersonPage),
          ],
        ),
      ],
      initial: true,
    ),
    AutoRoute(page: SignInPage),
  ],
)
// extend the generated private router
class AppRouter extends _$AppRouter {}

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