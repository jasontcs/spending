import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../../common/common.dart';
import '../../../generated/l10n.dart';
import '../../../widgets/form_page.dart';
import '../../../widgets/form_posting_listener.dart';
import '../person.dart';

class PersonPage extends StatelessWidget with AutoRouteWrapper {
  const PersonPage({Key? key, this.id}) : super(key: key);

  @QueryParam('person_id')
  final String? id;

  @override
  Widget build(BuildContext context) {
    return PostingListener.id<PersonBloc, PersonState>(
      listenWhen: (previous, current) =>
          previous.status == AppFormStatus.posting &&
          current.status == AppFormStatus.idle,
      idExist: (state) => state.person?.id != null,
      listener: (context, state, type) {
        late final String label;
        if (type == PostingType.created) label = S.of(context).created;
        if (type == PostingType.updated) label = S.of(context).updated;
        if (type == PostingType.deleted) label = S.of(context).deleted;
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(label)));
        context.popRoute();
      },
      child: PersonView(),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => PersonBloc(
        spendingRepository: context.read<SpendingRepository>(),
      )..add(PersonItemLoaded(id)),
      child: this,
    );
  }
}

class PersonView extends StatelessWidget {
  const PersonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = context.select((PersonBloc bloc) => bloc.state.person?.title);
    final isBusy =
        context.select((PersonBloc bloc) => bloc.state.status.isBusy);
    return AppFormPage(
      title:
          Text(title?.isNotEmpty == true ? title! : S.of(context).new_person),
      onDelete: () {
        context.read<PersonBloc>().add(PersonRemoveRequested());
      },
      isBusy: isBusy,
      child: PersonForm(),
    );
  }
}
