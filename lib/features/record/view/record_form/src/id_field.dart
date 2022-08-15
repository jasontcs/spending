import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class RecordIdField extends StatelessWidget {
  const RecordIdField({Key? key}) : super(key: key);
  static const String name = 'id';

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: true,
      child: FormBuilderTextField(
        name: name,
        readOnly: true,
        valueTransformer: (value) => value?.isNotEmpty ?? false ? value : null,
      ),
    );
  }
}
