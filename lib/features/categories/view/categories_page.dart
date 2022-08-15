import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../record/record.dart';
import '../../record/view/record_form/record_form.dart';
import '../categories.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});
  static const String routeNameWithRecord = 'categoriesWithRecord';
  static const String routeName = 'categories';
  static GoRoute route({bool withRecord = false}) => GoRoute(
        name: withRecord ? routeNameWithRecord : routeName,
        path: 'categories',
        builder: (context, state) {
          final recordBloc = state.extra as RecordBloc?;
          return MultiBlocProvider(
            providers: [
              if (recordBloc != null) BlocProvider.value(value: recordBloc),
              BlocProvider(
                create: (context) => CategoriesBloc(
                    spendingRepository: context.read<SpendingRepository>()),
              ),
            ],
            child: CategoriesPage(),
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    return CategoriesView();
  }
}

class CategoriesView extends StatelessWidget {
  const CategoriesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Category> categories =
        context.select((CategoriesBloc bloc) => bloc.state.categories);
    final record = context.select((RecordBloc? bloc) => bloc?.state.record);

    final selected = context.select((RecordBloc? bloc) => bloc?.state.formKey
        ?.currentState?.fields[CategoryField.name]?.value) as String?;
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
                    context
                        .read<RecordBloc?>()
                        ?.state
                        .formKey
                        ?.currentState
                        ?.fields[CategoryField.name]
                        ?.didChange(category.title);

                    Map<String, String> queryParams = record.id != null
                        ? {RecordPage.recordIdKey: record.id!}
                        : {};
                    context.goNamed(RecordPage.routeName,
                        queryParams: queryParams);
                  }
                : null,
            selected: category.title == selected,
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
    return Card(
      color: selected ? Theme.of(context).primaryColorLight : null,
      child: InkWell(
        onTap: onTap,
        child: GridTile(
          footer: Center(child: Text(category.title)),
          child: Center(child: Text(category.icon)),
        ),
      ),
    );
  }
}
