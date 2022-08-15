import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class DateField extends StatelessWidget {
  const DateField({Key? key}) : super(key: key);

  static const String name = 'date';
  @override
  Widget build(BuildContext context) {
    return FormBuilderDateTimePicker(
      name: name,
      inputType: InputType.date,
      resetIcon: null,
      validator: FormBuilderValidators.required(),
    );
  }
}
