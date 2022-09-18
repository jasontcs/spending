import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../../../generated/l10n.dart';

class IconField extends StatelessWidget {
  const IconField({
    super.key,
  });

  static String name = 'icon';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: FormBuilderTextField(
        name: name,
        validator: FormBuilderValidators.required(),
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.image),
          labelText: S.of(context).icon,
        ),
      ),
    );
  }
}
