import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
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
        final id = context.read<RecordBloc>().state.record!.id;
        final queryParams = context.goNamed(
          PeoplePage.routeName,
          queryParams: {
            if (id != null) RecordPage.recordIdKey: id,
          },
          extra: context.read<RecordBloc>(),
        );
      },
      readOnly: true,
      valueTransformer: (value) =>
          people.singleWhereOrNull((person) => person.title == value),
      decoration: InputDecoration(suffixIcon: Icon(Icons.arrow_forward_ios)),
      validator: FormBuilderValidators.required(),
    );
  }
}
