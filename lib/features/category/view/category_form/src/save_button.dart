import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'dart:developer' as developer;
import 'package:logging/logging.dart';

import '../../../../../generated/l10n.dart';
import '../../../category.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isBusy =
        context.select((CategoryBloc bloc) => bloc.state.status.isBusy);
    return ElevatedButton(
      onPressed: isBusy
          ? null
          : () {
              final form = FormBuilder.of(context);
              if (form?.saveAndValidate() ?? false) {
                developer.log(form!.value.toString(),
                    name: 'UI', level: Level.INFO.value);
                context
                    .read<CategoryBloc>()
                    .add(CategoryFormSaved(form.value.toCategory()));
              } else {
                developer.log(form!.value.toString(),
                    name: 'UI', level: Level.INFO.value);
                debugPrint('validation failed');
              }
            },
      child: Text(S.of(context).save),
    );
  }
}
