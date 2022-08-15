import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class AmountField extends StatelessWidget {
  const AmountField({Key? key}) : super(key: key);

  static const String name = 'amount';

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      keyboardType: TextInputType.number,
      valueTransformer: (value) => double.tryParse(value ?? ''),
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.numeric(),
      ]),
    );
  }
}
