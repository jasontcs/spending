import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'dart:developer' as developer;
import 'package:logging/logging.dart';

import '../../../../../generated/l10n.dart';
import '../../../person.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isBusy =
        context.select((PersonBloc bloc) => bloc.state.status.isBusy);
    return FractionallySizedBox(
      widthFactor: 1,
      child: ElevatedButton(
        onPressed: isBusy
            ? null
            : () {
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
        child: Text(S.of(context).save),
      ),
    );
  }
}
