import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:intl/intl.dart';

import '../../../../../common/common.dart';
import '../../../../../generated/l10n.dart';

class DateField extends StatelessWidget {
  const DateField({Key? key}) : super(key: key);

  static const String name = 'date';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: FormBuilderDateTimePicker(
        name: name,
        inputType: InputType.date,
        resetIcon: null,
        validator: FormBuilderValidators.required(),
        format: DateFormat(S.of(context).date_format_pattern),
        decoration: InputDecoration(
          labelText: S.of(context).date,
          prefixIcon: Icon(Icons.calendar_today),
        ),
      ),
    );
  }
}
