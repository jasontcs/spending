import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../categories/categories.dart';
import '../../people/people.dart';

class SettingPage extends StatelessWidget {
  SettingPage({Key? key}) : super(key: key);

  final items = [
    SettingItem(title: 'Categories', routeTo: CategoriesPage.routeName),
    SettingItem(title: 'People', routeTo: PeoplePage.routeName),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Setting')),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final item = items[index];
          return ListTile(
            title: Text(item.title),
            onTap: () {
              context.goNamed(item.routeTo);
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
  SettingItem({required this.title, required this.routeTo});

  final String title;
  final String routeTo;
}
