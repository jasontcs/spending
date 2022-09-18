import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../../common/common.dart';
import '../../../generated/l10n.dart';
import '../../../widgets/form_page.dart';
import '../../../widgets/form_posting_listener.dart';
import '../bloc/record_bloc.dart';
import 'record_form/record_form.dart';

class RecordPage extends StatelessWidget with AutoRouteWrapper {
  RecordPage({super.key, this.recordId, this.date});

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
        if (type == PostingType.created) label = S.of(context).created;
        if (type == PostingType.updated) label = S.of(context).updated;
        if (type == PostingType.deleted) label = S.of(context).deleted;
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(label)));
        context.popRoute();
      },
      child: const RecordView(),
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
  const RecordView({super.key});

  @override
  Widget build(BuildContext context) {
    final isBusy =
        context.select((RecordBloc bloc) => bloc.state.status.isBusy);

    return AppFormPage(
      title: Text(S.of(context).record),
      onDelete: () {
        context.read<RecordBloc>().add(RecordRemoveRequested());
      },
      isBusy: isBusy,
      child: const RecordForm(),
    );
  }
}
