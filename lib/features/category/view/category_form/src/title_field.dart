import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class TitleField extends StatelessWidget {
  const TitleField({
    Key? key,
  }) : super(key: key);

  static String name = 'title';

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      validator: FormBuilderValidators.required(),
    );
  }
}
