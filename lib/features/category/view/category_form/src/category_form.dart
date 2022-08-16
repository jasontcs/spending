import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../../category.dart';

class CategoryForm extends StatelessWidget {
  const CategoryForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final category = context.select((CategoryBloc bloc) => bloc.state.category);
    return category != null
        ? FormBuilder(
            initialValue: category.toFormData(),
            child: Column(
              children: [
                TitleField(),
                IconField(),
                BudgetField(),
                SaveButton(),
              ],
            ),
          )
        : Material();
  }
}

extension CategoryX on Category {
  Map<String, Object?> toFormData() => {
        IdField.name: id,
        TitleField.name: title,
        BudgetField.name: budget.toString(),
        IconField.name: icon,
      };
}

extension FormDataX on Map<String, dynamic> {
  Category toCategory() => Category(
        id: this[IdField.name] as String?,
        budget: this[BudgetField.name] as double,
        title: this[TitleField.name] as String,
        icon: this[IconField.name] as String,
      );
}
