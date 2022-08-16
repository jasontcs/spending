import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class IdField extends StatelessWidget {
  const IdField({
    Key? key,
  }) : super(key: key);

  static String name = 'id';

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: true,
      maintainState: true,
      child: FormBuilderTextField(
        name: name,
        readOnly: true,
        valueTransformer: (value) => value?.isNotEmpty ?? false ? value : null,
      ),
    );
  }
}
