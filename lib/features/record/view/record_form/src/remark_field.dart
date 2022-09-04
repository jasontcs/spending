import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../../../generated/l10n.dart';

class RemarkField extends StatelessWidget {
  const RemarkField({Key? key}) : super(key: key);
  static const String name = 'remark';

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: name,
      maxLines: 3,
      decoration: InputDecoration(labelText: S.of(context).remark),
    );
  }
}
