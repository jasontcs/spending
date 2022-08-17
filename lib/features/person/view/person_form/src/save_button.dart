import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'dart:developer' as developer;
import 'package:logging/logging.dart';

import '../../../person.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final form = FormBuilder.of(context);
        if (form?.saveAndValidate() ?? false) {
          developer.log(form!.value.toString(),
              name: 'UI', level: Level.INFO.value);
          context
              .read<PersonBloc>()
              .add(PersonFormSaved(form.value.toPerson()));
        } else {
          developer.log(form!.value.toString(),
              name: 'UI', level: Level.INFO.value);
          debugPrint('validation failed');
        }
      },
      child: Text('儲存'),
    );
  }
}
