import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spending_repository/spending_repository.dart';

import '../app_router.dart';
import '../common/common.dart';

class RecordsList extends StatelessWidget {
  const RecordsList({
    Key? key,
    required this.records,
    this.categoriesColor,
  }) : super(key: key);

  final List<Record> records;
  final Map<Category, Color?>? categoriesColor;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: records.length,
      itemBuilder: (context, index) {
        final record = records[index];
        return RecordTile(
          record: record,
          backgroundColor: categoriesColor?[record.category],
        );
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }
}

class RecordTile extends StatelessWidget {
  const RecordTile({
    Key? key,
    required this.record,
    this.backgroundColor,
  }) : super(key: key);

  final Record record;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: backgroundColor,
        child: Text(
          record.category.icon,
          style: Theme.of(context).primaryTextTheme.titleMedium,
        ),
      ),
      title: Text(record.category.title),
      subtitle: Text(
          '${record.person.title}${record.remarks.isNotEmpty ? '- ${record.remarks}' : null}'),
      trailing: Text(currencyFormat(context, record.amount)),
      onTap: () {
        context.pushRoute(RecordRoute(recordId: record.id));
      },
    );
  }
}
