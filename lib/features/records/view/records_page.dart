import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../../generated/l10n.dart';
import '../../../widgets/records_list.dart';
import '../records.dart';

class RecordsPage extends StatelessWidget implements AutoRouteWrapper {
  const RecordsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const RecordsView();
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
  const RecordsView({super.key});

  @override
  Widget build(BuildContext context) {
    final records = context.select((RecordsBloc bloc) {
      final records = bloc.state.records;
      final selectedDate = bloc.state.calendarConfig.selectedDate;
      return records.where((record) =>
          DateUtils.isSameDay(selectedDate ?? DateTime.now(), record.dateTime));
    }).toList();

    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).record)),
      body: Column(
        children: [
          const RecordsCalendar(),
          if (records.isEmpty)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(S.of(context).no_records),
            )
          else
            Flexible(
              child: RecordsList(records: records),
            ),
        ],
      ),
    );
  }
}
