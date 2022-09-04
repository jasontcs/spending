import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spending_repository/spending_repository.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../app_router.dart';
import '../../../generated/l10n.dart';
import '../../record/view/view.dart';
import '../bloc/records_bloc.dart';
import '../records.dart';

class RecordsPage extends StatelessWidget implements AutoRouteWrapper {
  const RecordsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RecordsView();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => RecordsBloc(
        spendingRepository: context.read<SpendingRepository>(),
      ),
      child: this,
    );
  }
}

class RecordsView extends StatelessWidget {
  const RecordsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final records = context.select((RecordsBloc bloc) {
      final records = bloc.state.records;
      final selectedDate = bloc.state.calendarConfig.selectedDate;
      return records
          .where((record) => isSameDay(selectedDate, record.dateTime));
    }).toList();

    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).record)),
      body: Column(
        children: [
          RecordsCalendar(),
          if (records.isEmpty)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(S.of(context).no_records),
            )
          else
            Flexible(
              child: ListView.separated(
                itemCount: records.length,
                itemBuilder: (context, index) {
                  final record = records[index];
                  return RecordTile(record: record);
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
              ),
            ),
        ],
      ),
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
      trailing: Text(NumberFormat.simpleCurrency().format(record.amount)),
      onTap: () {
        context.pushRoute(RecordRoute(recordId: record.id));
      },
    );
  }
}
