import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:spending_repository/spending_repository.dart';
import 'package:intl/intl.dart';

import '../../record/view/view.dart';
import '../bloc/records_bloc.dart';

class RecordsPage extends StatelessWidget {
  const RecordsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => RecordsBloc(
        spendingRepository: context.read<SpendingRepository>(),
      ),
      child: RecordsView(),
    );
  }
}

class RecordsView extends StatelessWidget {
  const RecordsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final records = context.select((RecordsBloc bloc) => bloc.state.records);
    return Scaffold(
      appBar: AppBar(title: Text('Record')),
      body: ListView.builder(
        itemCount: records.length,
        itemBuilder: (context, index) {
          final record = records[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text(record.category.icon),
            ),
            title: Text(record.category.title),
            subtitle: Text(record.person.title),
            trailing: Text(NumberFormat.simpleCurrency().format(record.amount)),
            onTap: () {
              context.goNamed(RecordPage.routeName,
                  queryParams: {RecordPage.recordIdKey: record.id!});
            },
          );
        },
      ),
    );
  }
}
