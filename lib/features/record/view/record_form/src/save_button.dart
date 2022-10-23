import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:logging/logging.dart';

import '../../../../../generated/l10n.dart';
import '../../../bloc/record_bloc.dart';
import 'record_form.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isBusy =
        context.select((RecordBloc bloc) => bloc.state.status.isBusy);
    return FractionallySizedBox(
      widthFactor: 1,
      child: ElevatedButton(
        onPressed: isBusy
            ? null
            : () {
                final form = FormBuilder.of(context);
                if (form?.saveAndValidate() ?? false) {
                  context
                      .read<RecordBloc>()
                      .add(RecordFormSaved(form!.value.toRecord()));
                }
              },
        child: Text(S.of(context).save),
      ),
    );
  }
}
