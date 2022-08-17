import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../../utils.dart';
import '../../../widgets/form_posting_listener.dart';
import '../../categories/view/categories_page.dart';
import '../../people/view/people_page.dart';
import '../person.dart';

class PersonPage extends StatelessWidget {
  const PersonPage({Key? key}) : super(key: key);

  static String routeName = 'person';

  static GoRoute route() => GoRoute(
        name: routeName,
        path: routeName,
        builder: (context, state) {
          final id = state.queryParams[routeName];
          return BlocProvider(
            create: (context) => PersonBloc(
              spendingRepository: context.read<SpendingRepository>(),
            )..add(PersonItemLoaded(id)),
            child: PersonPage(),
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    return PostingListener.id<PersonBloc, PersonState>(
      listenWhen: (previous, current) =>
          previous.status == AppFormStatus.posting &&
          current.status == AppFormStatus.idle,
      idExist: (state) => state.person?.id != null,
      listener: (context, state, type) {
        late final String label;
        if (type == PostingType.created) label = 'Created';
        if (type == PostingType.updated) label = 'Updated';
        if (type == PostingType.deleted) label = 'Deleted';
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(label)));
        context.goNamed(PeoplePage.routeName);
      },
      child: PersonView(),
    );
  }
}

class PersonView extends StatelessWidget {
  const PersonView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title = context.select((PersonBloc bloc) => bloc.state.person?.title);
    return Scaffold(
      appBar: AppBar(
        title: Text(title?.isNotEmpty == true ? title! : '新類別'),
        actions: [
          IconButton(
            onPressed: () {
              context.read<PersonBloc>().add(PersonRemoveRequested());
            },
            icon: Icon(Icons.delete),
          )
        ],
      ),
      body: ListView(
        children: [
          PersonForm(),
        ],
      ),
    );
  }
}
