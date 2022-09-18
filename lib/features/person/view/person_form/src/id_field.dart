import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class IdField extends StatelessWidget {
  const IdField({
    super.key,
  });

  static String name = 'id';

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      readOnly: true,
      valueTransformer: (value) => value?.isNotEmpty ?? false ? value : null,
    );
  }
}
