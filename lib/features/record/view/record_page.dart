import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_extra_fields/form_builder_extra_fields.dart';
import 'package:spending_repository/spending_repository.dart';
import 'package:collection/collection.dart';

import '../../../common/common.dart';
import '../../../widgets/form_page.dart';
import '../../../widgets/form_posting_listener.dart';
import '../../home/home.dart';
import '../../people/people.dart';
import '../../records/bloc/records_bloc.dart';
import '../bloc/record_bloc.dart';
import 'record_form/record_form.dart';

class RecordPage extends StatelessWidget with AutoRouteWrapper {
  RecordPage({Key? key, this.recordId, this.date}) : super(key: key);

  @QueryParam('record_id')
  final String? recordId;

  @QueryParam()
  final String? date;

  @override
  Widget build(BuildContext context) {
    return PostingListener.id<RecordBloc, RecordState>(
      listenWhen: (previous, current) =>
          previous.status == AppFormStatus.posting &&
          current.status == AppFormStatus.idle,
      idExist: (state) => state.record?.id != null,
      listener: (context, state, type) {
        late final String label;
        if (type == PostingType.created) label = 'Created';
        if (type == PostingType.updated) label = 'Updated';
        if (type == PostingType.deleted) label = 'Deleted';
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(label)));
        context.popRoute();
      },
      child: RecordView(),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          RecordBloc(spendingRepository: context.read<SpendingRepository>())
            ..add(RecordPageEntered(
              recordId: recordId,
              dateString: date,
            )),
      child: this,
    );
  }
}

class RecordView extends StatelessWidget {
  const RecordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isBusy =
        context.select((RecordBloc bloc) => bloc.state.status.isBusy);

    return AppFormPage(
      title: Text('記錄'),
      onDelete: () {
        context.read<RecordBloc>().add(RecordRemoveRequested());
      },
      isBusy: isBusy,
      child: RecordForm(),
    );
  }
}
