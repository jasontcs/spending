import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class BudgetField extends StatelessWidget {
  const BudgetField({
    Key? key,
  }) : super(key: key);

  static String name = 'budget';

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      keyboardType: TextInputType.number,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.numeric(),
      ]),
      valueTransformer: (value) => double.tryParse(value ?? ''),
    );
  }
}
