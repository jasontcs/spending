import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../../app_router.dart';
import '../../../generated/l10n.dart';
import '../../../widgets/app_bar.dart';
import '../categories.dart';

class CategoriesPage extends StatelessWidget with AutoRouteWrapper {
  const CategoriesPage({super.key, this.selected});

  @QueryParam()
  final String? selected;

  @override
  Widget build(BuildContext context) {
    return const CategoriesView();
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoriesCubit(
        selectedId: selected,
        spendingRepository: context.read<SpendingRepository>(),
      ),
      child: this,
    );
  }
}

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Category> categories =
        context.select((CategoriesCubit cubit) => cubit.state.categories);
    final Category? selected =
        context.select((CategoriesCubit cubit) => cubit.state.selected);
    return Scaffold(
      appBar: SpendingAppBar(
        title: Text(S.of(context).category),
        actions: [
          IconButton(
            onPressed: () {
              context.pushRoute(CategoryRoute());
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return CategoryTile(
            category: category,
            onTap: () {
              if (selected != null) {
                context.popRoute(category);
              } else {
                context.pushRoute(CategoryRoute(id: category.id));
              }
            },
            selected: category == selected,
          );
        },
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  const CategoryTile({
    super.key,
    required this.category,
    this.onTap,
    this.selected = false,
  });

  final Category category;
  final GestureTapCallback? onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: selected ? Theme.of(context).toggleableActiveColor : null,
      elevation: 2,
      child: InkWell(
        onTap: onTap,
        child: GridTile(
          footer: Center(
              child: Text(
            category.title,
            style: selected
                ? Theme.of(context).primaryTextTheme.bodyText2
                : Theme.of(context).textTheme.bodyText2,
          )),
          child: Center(
              child: Text(
            category.icon,
            style: Theme.of(context).textTheme.titleMedium,
          )),
        ),
      ),
    );
  }
}
