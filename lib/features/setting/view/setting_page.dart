import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../app_router.dart';
import '../../../generated/l10n.dart';
import '../../categories/categories.dart';
import '../../people/people.dart';

class SettingPage extends StatelessWidget {
  SettingPage({Key? key}) : super(key: key);

  final items = [
    SettingItem(title: S.current.category, route: CategoriesRoute()),
    SettingItem(title: S.current.person, route: PeopleRoute()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).setting)),
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
        separatorBuilder: (context, index) => Divider(),
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
