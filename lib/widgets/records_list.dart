import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spending_repository/spending_repository.dart';

import '../app_router.dart';
import '../common/common.dart';

class RecordsList extends StatelessWidget {
  const RecordsList({
    Key? key,
    required this.records,
  }) : super(key: key);

  final List<Record> records;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: records.length,
      itemBuilder: (context, index) {
        final record = records[index];
        return RecordTile(record: record);
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
  }) : super(key: key);

  final Record record;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(
          record.category.icon,
        ),
      ),
      title: Text(record.category.title),
      subtitle: Text(record.person.title),
      trailing: Text(currencyFormat(context, record.amount)),
      onTap: () {
        context.pushRoute(RecordRoute(recordId: record.id));
      },
    );
  }
}
