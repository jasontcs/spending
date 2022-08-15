import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'dart:developer' as developer;
import 'package:logging/logging.dart';

import '../../../bloc/record_bloc.dart';
import 'record_form.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = FormBuilder.of(context);

    return ElevatedButton(
      onPressed: () {
        if (form?.saveAndValidate() ?? false) {
          developer.log(form!.value.toString(),
              name: 'UI', level: Level.INFO.value);
          context
              .read<RecordBloc>()
              .add(RecordFormSaved(form.value.toRecord()));
        } else {
          developer.log(form!.value.toString(),
              name: 'UI', level: Level.INFO.value);
          debugPrint('validation failed');
        }
      },
      child: const Text(
        'Save',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
