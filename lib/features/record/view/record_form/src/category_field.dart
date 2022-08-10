import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:go_router/go_router.dart';
import 'package:collection/collection.dart';
import '../../../../categories/categories.dart';
import '../../../record.dart';

class CategoryField extends StatelessWidget {
  const CategoryField({Key? key}) : super(key: key);

  static const String name = 'category';

  @override
  Widget build(BuildContext context) {
    final categories =
        context.select((RecordBloc bloc) => bloc.state.categories);
    return FormBuilderTextField(
      name: name,
      onTap: () {
        context.goNamed(
          CategoriesPage.routeName,
          queryParams: {
            RecordPage.recordIdKey: context.read<RecordBloc>().state.record!.id!
          },
          extra: context.read<RecordBloc>(),
        );
      },
      readOnly: true,
      valueTransformer: (value) =>
          categories.singleWhereOrNull((category) => category.title == value),
    );
  }
}
