import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:collection/collection.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../../../../app_router.dart';
import '../../../../../generated/l10n.dart';
import '../../../record.dart';

class PersonField extends StatelessWidget {
  const PersonField({Key? key}) : super(key: key);

  static const String name = 'person';

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<Person>(
      name: name,
      builder: (field) => TextFormField(
        controller: TextEditingController(text: field.value?.title),
        readOnly: true,
        onTap: () async {
          final selected = await context
              .pushRoute<Person?>(PeopleRoute(selectedId: field.value?.id));
          if (selected != null) field.didChange(selected);
        },
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.person),
          labelText: S.of(context).person,
          suffixIcon: Icon(Icons.arrow_forward_ios),
        ),
      ),
      validator: FormBuilderValidators.required(),
    );
  }
}
