import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class SaveButton extends StatelessWidget {
  const SaveButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final form = FormBuilder.of(context);

    return ElevatedButton(
      onPressed: () {
        if (form?.saveAndValidate() ?? false) {
          debugPrint(form?.value.toString());
        } else {
          debugPrint(form?.value.toString());
          debugPrint('validation failed');
        }
      },
      child: const Text(
        'Save',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
