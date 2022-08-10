import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class ResetButton extends StatelessWidget {
  const ResetButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = FormBuilder.of(context);

    return OutlinedButton(
      onPressed: () {
        form?.reset();
      },
      // color: Theme.of(context).colorScheme.secondary,
      child: Text(
        'Reset',
        style: TextStyle(color: Theme.of(context).colorScheme.secondary),
      ),
    );
  }
}
