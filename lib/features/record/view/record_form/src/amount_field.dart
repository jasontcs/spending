import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:spending_repository/spending_repository.dart';
import 'package:intl/intl.dart';

import '../../../../../common/common.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../widgets/calculator_keyboard.dart';

class AmountField extends StatelessWidget {
  const AmountField({Key? key}) : super(key: key);

  static const String name = 'amount';

  @override
  Widget build(BuildContext context) {
    return FormBuilderField<num>(
      name: name,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
      ]),
      builder: (field) {
        return CalculatorField(
          initialValue: field.value.toString(),
          builder: (context, value, hasFocus) {
            return TextFormField(
              controller: TextEditingController(
                text: currencyFormat(context, field.value ?? 0),
              ),
              readOnly: true,
              decoration: InputDecoration(
                labelText: S.of(context).amount,
                prefixIcon: Icon(Icons.attach_money),
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
