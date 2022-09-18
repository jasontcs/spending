import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spending_repository/spending_repository.dart';

import '../app_router.dart';
import '../common/common.dart';

class RecordsList extends StatelessWidget {
  const RecordsList({
    super.key,
    required this.records,
    this.categoriesColor,
  });

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
        return const Divider();
      },
    );
  }
}

class RecordTile extends StatelessWidget {
  const RecordTile({
    super.key,
    required this.record,
    this.backgroundColor,
  });

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
