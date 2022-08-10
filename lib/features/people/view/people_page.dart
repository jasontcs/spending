import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/src/form_builder_field.dart';
import 'package:go_router/go_router.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../record/record.dart';
import '../../record/view/record_form/record_form.dart';
import '../people.dart';

class PeoplePage extends StatelessWidget {
  const PeoplePage({super.key, this.recordBloc});
  static const String routeName = 'people';
  static GoRoute route() => GoRoute(
        name: routeName,
        path: 'people',
        builder: (context, state) {
          final recordBloc = state.extra as RecordBloc?;
          return PeoplePage(
            recordBloc: recordBloc,
          );
        },
      );

  final RecordBloc? recordBloc;

  @override
  Widget build(BuildContext context) {
    final isFromRecord = recordBloc != null;

    return MultiBlocProvider(
      providers: [
        if (isFromRecord) BlocProvider.value(value: recordBloc!),
        BlocProvider(
          create: (context) => PeopleBloc(
              spendingRepository: context.read<SpendingRepository>()),
        ),
      ],
      child: PeopleView(isFromRecord: isFromRecord),
    );
  }
}

class PeopleView extends StatelessWidget {
  const PeopleView({Key? key, required this.isFromRecord}) : super(key: key);

  final bool isFromRecord;

  @override
  Widget build(BuildContext context) {
    final List<Person> people =
        context.select((PeopleBloc bloc) => bloc.state.people);
    final record = isFromRecord
        ? context.select((RecordBloc bloc) => bloc.state.record!)
        : null;

    final personField = isFromRecord
        ? context.select((RecordBloc bloc) =>
            bloc.state.formKey?.currentState?.fields[PersonField.name])
        : null;
    return Scaffold(
      appBar: AppBar(title: Text('People')),
      body: ListView.builder(
        itemCount: people.length,
        itemBuilder: (context, index) {
          final person = people[index];
          return PersonTile(
            person: person,
            onTap: record != null
                ? () {
                    personField?.didChange(person.title);

                    Map<String, String> queryParams = record.id != null
                        ? {RecordPage.recordIdKey: record.id!}
                        : {};
                    context.goNamed(RecordPage.routeName,
                        queryParams: queryParams);
                  }
                : null,
            selected: person.title == personField?.value,
          );
        },
      ),
    );
  }
}

class PersonTile extends StatelessWidget {
  const PersonTile({
    Key? key,
    required this.person,
    this.onTap,
    this.selected = false,
  }) : super(key: key);

  final Person person;
  final GestureTapCallback? onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(person.title),
      onTap: onTap,
      selected: selected,
    );
  }
}
