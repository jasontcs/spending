import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../../app_router.dart';
import '../../../generated/l10n.dart';
import '../people.dart';

class PeoplePage extends StatelessWidget with AutoRouteWrapper {
  const PeoplePage({super.key, this.selectedId});

  @QueryParam('selected_id')
  final String? selectedId;

  @override
  Widget build(BuildContext context) {
    return const PeopleView();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => PeopleCubit(
        spendingRepository: context.read<SpendingRepository>(),
        selectedId: selectedId,
      ),
      child: this,
    );
  }
}

class PeopleView extends StatelessWidget {
  const PeopleView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Person> people =
        context.select((PeopleCubit cubit) => cubit.state.people);
    final Person? selected =
        context.select((PeopleCubit cubit) => cubit.state.selected);
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).person),
        actions: [
          IconButton(
            onPressed: () {
              context.pushRoute(PersonRoute());
            },
            icon: const Icon(Icons.add),
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
              if (selected != null) {
                context.popRoute(person);
              } else {
                context.pushRoute(PersonRoute(id: person.id));
              }
            },
            selected: person == selected,
          );
        },
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}

class PersonTile extends StatelessWidget {
  const PersonTile({
    super.key,
    required this.person,
    this.onTap,
    this.selected = false,
  });

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
