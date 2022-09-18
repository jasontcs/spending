import 'package:auto_route/auto_route.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../../../app_router.dart';
import '../../../generated/l10n.dart';

class AppHomePage extends StatelessWidget {
  const AppHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppHomeView();
  }
}

class AppHomeView extends StatelessWidget {
  const AppHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: [
        const RecordsRoute(),
        const BudgetRoute(),
        const ChartRoute(),
        SettingRoute(),
      ],
      builder: (context, child, animation) {
        final tabsRouter = AutoTabsRouter.of(context);
        final bottomNavigationBarTheme =
            Theme.of(context).bottomNavigationBarTheme;
        return Scaffold(
          body: FadeTransition(
            opacity: animation,
            child: child,
          ),
          bottomNavigationBar: ConvexAppBar(
            backgroundColor: bottomNavigationBarTheme.backgroundColor,
            color: bottomNavigationBarTheme.unselectedItemColor,
            activeColor: bottomNavigationBarTheme.selectedItemColor,
            elevation: bottomNavigationBarTheme.elevation,
            style: TabStyle.fixedCircle,
            onTabNotify: (index) {
              if (index == 2) {
                context.pushRoute(RecordRoute());
                return false;
              }
              if (index < 2) {
                tabsRouter.setActiveIndex(index);
              } else {
                tabsRouter.setActiveIndex(index - 1);
              }
              return true;
            },
            initialActiveIndex: tabsRouter.activeIndex < 2
                ? tabsRouter.activeIndex
                : tabsRouter.activeIndex + 1,
            items: [
              TabItem(
                icon: Icons.list_alt,
                title: S.of(context).record,
              ),
              TabItem(
                icon: Icons.battery_5_bar,
                title: S.of(context).budget,
              ),
              const TabItem(
                icon: Icons.add,
              ),
              TabItem(
                icon: Icons.pie_chart,
                title: S.of(context).chart,
              ),
              TabItem(
                icon: Icons.settings,
                title: S.of(context).setting,
              ),
            ],
          ),
        );
      },
    );
  }
}
