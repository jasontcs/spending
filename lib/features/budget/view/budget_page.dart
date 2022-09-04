import 'package:flutter/material.dart';
import 'package:keyboard_actions/keyboard_actions.dart';

import '../../../generated/l10n.dart';
import '../../../widgets/calculator_keyboard.dart';

class BudgetPage extends StatelessWidget {
  const BudgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).budget)),
      body: CalculatorField(
        builder: (context, value, hasFocus) {
          return TextFormField(
            controller: TextEditingController(text: '\$$value'),
            readOnly: true,
          );
        },
      ),
    );
  }
}
