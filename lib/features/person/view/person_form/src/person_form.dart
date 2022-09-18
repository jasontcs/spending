import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../../person.dart';

class PersonForm extends StatelessWidget {
  const PersonForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final person = context.select((PersonBloc bloc) => bloc.state.person);
    final enabled =
        context.select((PersonBloc bloc) => !bloc.state.status.isBusy);
    FormBuilder.of(context)?.instantValue;
    return person != null
        ? FormBuilder(
            initialValue: person.toFormData(),
            enabled: enabled,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            onChanged: () {
              context.read<PersonBloc>().add(PersonFormEdited());
            },
            child: Column(
              children: const [
                Visibility(
                  visible: false,
                  maintainState: true,
                  child: IdField(),
                ),
                TitleField(),
                SaveButton(),
              ],
            ),
          )
        : const Material();
  }
}

extension PersonX on Person {
  Map<String, Object?> toFormData() => {
        IdField.name: id,
        TitleField.name: title,
      };
}

extension FormDataX on Map<String, dynamic> {
  Person toPerson() => Person(
        id: this[IdField.name] as String?,
        title: this[TitleField.name] as String,
      );
}
