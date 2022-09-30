import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:spending_repository/spending_repository.dart';
import '../../../../../app_router.dart';
import '../../../../../generated/l10n.dart';

class CategoryField extends StatelessWidget {
  const CategoryField({super.key});

  static const String name = 'category';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: FormBuilderField<Category>(
        name: name,
        builder: (field) => TextFormField(
          controller: TextEditingController(text: field.value?.title),
          readOnly: true,
          onTap: () async {
            final selected = await context.pushRoute<Category>(
                CategoriesRoute(selected: field.value?.id));
            if (selected != null) field.didChange(selected);
          },
          decoration: InputDecoration(
            suffixIcon: const Icon(Icons.arrow_forward_ios),
            labelText: S.of(context).category,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Text(
                field.value?.icon ?? '',
                style: const TextStyle(fontSize: 18),
              ),
            ),
            errorText: field.errorText,
          ),
        ),
        validator: FormBuilderValidators.required(),
      ),
    );
  }
}
