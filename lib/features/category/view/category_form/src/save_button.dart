import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:logging/logging.dart';

import '../../../../../generated/l10n.dart';
import '../../../category.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isBusy =
        context.select((CategoryBloc bloc) => bloc.state.status.isBusy);
    return FractionallySizedBox(
      widthFactor: 1,
      child: ElevatedButton(
        onPressed: isBusy
            ? null
            : () {
                final form = FormBuilder.of(context);
                if (form?.saveAndValidate() ?? false) {
                  context
                      .read<CategoryBloc>()
                      .add(CategoryFormSaved(form!.value.toCategory()));
                }
              },
        child: Text(S.of(context).save),
      ),
    );
  }
}
