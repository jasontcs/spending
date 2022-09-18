import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../../../common/common.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../widgets/calculator_keyboard.dart';

class AmountField extends StatelessWidget {
  const AmountField({super.key});

  static const String name = 'amount';

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<num>(
      name: name,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        AppFormBuilderValidators.positiveNum(allowZero: false),
      ]),
      builder: (field) {
        return CalculatorField(
          builder: (context, value, hasFocus) {
            return TextFormField(
              controller: TextEditingController(
                text: currencyFormat(context, field.value ?? 0),
              ),
              readOnly: true,
              decoration: InputDecoration(
                labelText: S.of(context).amount,
                prefixIcon: const Icon(Icons.attach_money),
                errorText: field.errorText,
              ),
            );
          },
          onDone: (value) {
            field.didChange(value);
          },
        );
      },
    );
  }
}
