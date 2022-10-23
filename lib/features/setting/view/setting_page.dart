import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../app_router.dart';
import '../../../generated/l10n.dart';
import '../../../widgets/app_bar.dart';

class SettingPage extends StatelessWidget {
  SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      SettingItem(title: S.of(context).category, route: CategoriesRoute()),
      SettingItem(title: S.of(context).person, route: PeopleRoute()),
      SettingItem(
          title: S.of(context).currency, route: const CurrenciesRoute()),
    ];
    return Scaffold(
      appBar: SpendingAppBar(title: Text(S.of(context).setting)),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: Text(item.title),
            onTap: () {
              context.pushRoute(item.route);
            },
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: items.length,
      ),
    );
  }
}

class SettingItem {
  SettingItem({required this.title, required this.route});

  final String title;
  final PageRouteInfo route;
}
