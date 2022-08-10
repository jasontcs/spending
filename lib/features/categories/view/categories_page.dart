import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../record/record.dart';
import '../../record/view/record_form/record_form.dart';
import '../categories.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key, this.recordBloc});
  static const String routeName = 'categories';
  static GoRoute route() => GoRoute(
        name: routeName,
        path: 'categories',
        builder: (context, state) {
          final recordBloc = state.extra as RecordBloc?;
          return CategoriesPage(
            recordBloc: recordBloc,
          );
        },
      );

  final RecordBloc? recordBloc;

  @override
  Widget build(BuildContext context) {
    final isFromRecord = recordBloc != null;

    return MultiBlocProvider(
      providers: [
        if (isFromRecord) BlocProvider.value(value: recordBloc!),
        BlocProvider(
          create: (context) => CategoriesBloc(
              spendingRepository: context.read<SpendingRepository>()),
        ),
      ],
      child: CategoriesView(isFromRecord: isFromRecord),
    );
  }
}

class CategoriesView extends StatelessWidget {
  const CategoriesView({Key? key, required this.isFromRecord})
      : super(key: key);

  final bool isFromRecord;

  @override
  Widget build(BuildContext context) {
    final List<Category> categories =
        context.select((CategoriesBloc bloc) => bloc.state.categories);
    final record = isFromRecord
        ? context.select((RecordBloc bloc) => bloc.state.record!)
        : null;

    final categoryField = isFromRecord
        ? context.select((RecordBloc bloc) =>
            bloc.state.formKey?.currentState?.fields[CategoryField.name])
        : null;
    return Scaffold(
      appBar: AppBar(title: Text('Categories')),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return CategoryTile(
            category: category,
            onTap: record != null
                ? () {
                    categoryField?.didChange(category.title);

                    Map<String, String> queryParams = record.id != null
                        ? {RecordPage.recordIdKey: record.id!}
                        : {};
                    context.goNamed(RecordPage.routeName,
                        queryParams: queryParams);
                  }
                : null,
            selected: category.title == categoryField?.value,
          );
        },
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    Key? key,
    required this.category,
    this.onTap,
    this.selected = false,
  }) : super(key: key);

  final Category category;
  final GestureTapCallback? onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(category.title),
      onTap: onTap,
      selected: selected,
    );
  }
}
