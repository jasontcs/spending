import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../person/person.dart';
import '../../record/record.dart';
import '../../record/view/record_form/record_form.dart';
import '../people.dart';

class PeoplePage extends StatelessWidget {
  const PeoplePage({super.key});
  static const String routeNameWithRecord = '${routeName}WithRecord';
  static const String routeName = 'people';
  static GoRoute route({bool withRecord = false, List<GoRoute>? routes}) =>
      GoRoute(
        name: withRecord ? routeNameWithRecord : routeName,
        path: routeName,
        builder: (context, state) {
          final recordBloc = state.extra as RecordBloc?;
          return MultiBlocProvider(
            providers: [
              if (recordBloc != null) BlocProvider.value(value: recordBloc),
              BlocProvider(
                create: (context) => PeopleCubit(
                    spendingRepository: context.read<SpendingRepository>()),
              ),
            ],
            child: PeoplePage(),
          );
        },
        routes: routes ?? [],
      );

  @override
  Widget build(BuildContext context) {
    return PeopleView();
  }
}

class PeopleView extends StatelessWidget {
  const PeopleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Person> people =
        context.select((PeopleCubit cubit) => cubit.state.people);
    final record = context.select((RecordBloc? bloc) => bloc?.state.record);

    final selected = context.select((RecordBloc? bloc) =>
            bloc?.state.formKey?.currentState?.fields[PersonField.name]?.value)
        as String?;
    return Scaffold(
      appBar: AppBar(
        title: Text('成員'),
        actions: [
          if (record == null)
            IconButton(
              onPressed: () {
                context.goNamed(PersonPage.routeName);
              },
              icon: Icon(Icons.add),
            )
        ],
      ),
      body: ListView.separated(
        itemCount: people.length,
        itemBuilder: (context, index) {
          final person = people[index];
          return PersonTile(
            person: person,
            onTap: () {
              if (record != null) {
                context
                    .read<RecordBloc?>()
                    ?.state
                    .formKey
                    ?.currentState
                    ?.fields[PersonField.name]
                    ?.didChange(person.title);

                Map<String, String> queryParams = record.id != null
                    ? {RecordPage.recordIdKey: record.id!}
                    : {};
                context.goNamed(RecordPage.routeName, queryParams: queryParams);
              } else {
                context.goNamed(
                  PersonPage.routeName,
                  queryParams: {PersonPage.routeName: person.id!},
                );
              }
            },
            selected: person.title == selected,
          );
        },
        separatorBuilder: (context, index) => Divider(),
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
