import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_extra_fields/form_builder_extra_fields.dart';
import 'package:go_router/go_router.dart';
import 'package:spending_repository/spending_repository.dart';
import 'package:collection/collection.dart';

import '../../home/home.dart';
import '../../people/people.dart';
import '../../records/bloc/records_bloc.dart';
import '../bloc/record_bloc.dart';
import 'record_form/record_form.dart';

class RecordPage extends StatelessWidget {
  RecordPage({Key? key, this.recordId, this.date}) : super(key: key);

  static const String routeName = 'record';

  static const String recordIdKey = 'rid';
  static const String dateKey = 'date';

  static GoRoute route({List<GoRoute>? routes}) => GoRoute(
        name: routeName,
        path: 'record',
        pageBuilder: (context, state) {
          final rid = state.queryParams[recordIdKey];
          final date = state.queryParams[dateKey];
          return CupertinoPage<void>(
            child: BlocProvider(
              create: (context) => RecordBloc(
                  spendingRepository: context.read<SpendingRepository>())
                ..add(RecordPageEntered(
                  recordId: rid,
                  dateString: date,
                )),
              child: RecordPage(
                recordId: rid,
                date: date,
              ),
            ),
            fullscreenDialog: true,
          );
        },
        routes: routes ?? [],
      );

  static Map<String, String> queryParams({Record? record}) {
    return record != null && record.id != null ? {recordIdKey: record.id!} : {};
  }

  final String? recordId;
  final String? date;

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<RecordBloc, RecordState>(
          listenWhen: (previous, current) =>
              previous.status == RecordStatus.posting &&
              current.status == RecordStatus.idle &&
              previous.record?.id == null &&
              current.record?.id != null,
          listener: (context, state) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Created')));
            context.goNamed(AppHomePage.routeName);
          },
        ),
        BlocListener<RecordBloc, RecordState>(
          listenWhen: (previous, current) =>
              previous.status == RecordStatus.posting &&
              current.status == RecordStatus.idle &&
              previous.record?.id != null &&
              current.record?.id != null,
          listener: (context, state) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Updated')));
            context.goNamed(AppHomePage.routeName);
          },
        ),
        BlocListener<RecordBloc, RecordState>(
          listenWhen: (previous, current) =>
              previous.status == RecordStatus.posting &&
              current.status == RecordStatus.idle &&
              previous.record?.id != null &&
              current.record?.id == null,
          listener: (context, state) {
            ScaffoldMessenger.of(context)
                .showSnackBar(SnackBar(content: Text('Deleted')));
            context.goNamed(AppHomePage.routeName);
          },
        ),
      ],
      child: RecordView(),
    );
  }
}

class RecordView extends StatelessWidget {
  const RecordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Record Edit'),
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            context.goNamed(AppHomePage.routeName);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.read<RecordBloc>().add(RecordRemoveRequested());
            },
            icon: const Icon(Icons.delete),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [RecordForm()],
          ),
        ),
      ),
    );
  }
}
