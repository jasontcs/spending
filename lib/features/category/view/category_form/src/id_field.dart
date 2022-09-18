import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class IdField extends StatelessWidget {
  const IdField({
    super.key,
    required this.visible,
  });

  static String name = 'id';
  final bool visible;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      maintainState: true,
      child: FormBuilderTextField(
        name: name,
        readOnly: true,
        valueTransformer: (value) => value?.isNotEmpty ?? false ? value : null,
      ),
    );
  }
}
