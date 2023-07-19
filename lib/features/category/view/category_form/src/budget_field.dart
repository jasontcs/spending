import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../../../common/common.dart';
import '../../../../../generated/l10n.dart';
import '../../../../../widgets/calculator_keyboard.dart';
import '../../../category.dart';

class BudgetField extends StatelessWidget {
  const BudgetField({
    super.key,
  });

  static String name = 'budget';

  @override
  Widget build(BuildContext context) {
    final mainCurrency =
        context.select((CategoryBloc bloc) => bloc.state.mainCurrency);
    return FormBuilderField<num>(
      name: name,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        AppFormBuilderValidators.positiveNum(allowZero: true),
      ]),
      builder: (field) {
        return CalculatorField(
          builder: (context, value, hasFocus) {
            return TextFormField(
              controller: TextEditingController(
                text: currencyFormat(
                    context, field.value ?? 0, mainCurrency?.title),
              ),
              readOnly: true,
              decoration: InputDecoration(
                labelText: S.of(context).budget,
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
