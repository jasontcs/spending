import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:collection/collection.dart';

import '../../../../people/people.dart';
import '../../../record.dart';

class PersonField extends StatelessWidget {
  const PersonField({Key? key}) : super(key: key);

  static const String name = 'person';

  @override
  Widget build(BuildContext context) {
    final people = context.select((RecordBloc bloc) => bloc.state.people);
    return FormBuilderTextField(
      name: name,
      onTap: () {
        context.goNamed(
          PeoplePage.routeName,
          queryParams: {
            RecordPage.recordIdKey: context.read<RecordBloc>().state.record!.id!
          },
          extra: context.read<RecordBloc>(),
        );
      },
      readOnly: true,
      valueTransformer: (value) =>
          people.singleWhereOrNull((person) => person.title == value),
    );
  }
}
