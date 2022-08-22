import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../../common/common.dart';
import '../../../widgets/form_posting_listener.dart';
import '../../categories/view/categories_page.dart';
import '../category.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  static String routeName = 'category';

  static GoRoute route() => GoRoute(
        name: routeName,
        path: routeName,
        builder: (context, state) {
          final id = state.queryParams[routeName];
          return BlocProvider(
            create: (context) => CategoryBloc(
              spendingRepository: context.read<SpendingRepository>(),
            )..add(CategoryItemLoaded(id)),
            child: CategoryPage(),
          );
        },
      );

  @override
  Widget build(BuildContext context) {
    return PostingListener.id<CategoryBloc, CategoryState>(
      listenWhen: (previous, current) =>
          previous.status == AppFormStatus.posting &&
          current.status == AppFormStatus.idle,
      idExist: (state) => state.category?.id != null,
      listener: (context, state, type) {
        late final String label;
        if (type == PostingType.created) label = 'Created';
        if (type == PostingType.updated) label = 'Updated';
        if (type == PostingType.deleted) label = 'Deleted';
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(label)));
        context.goNamed(CategoriesPage.routeName);
      },
      child: CategoryView(),
    );
  }
}

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title =
        context.select((CategoryBloc bloc) => bloc.state.category?.title);
    return Scaffold(
      appBar: AppBar(
        title: Text(title?.isNotEmpty == true ? title! : '新類別'),
        actions: [
          IconButton(
            onPressed: () {
              context.read<CategoryBloc>().add(CategoryRemoveRequested());
            },
            icon: Icon(Icons.delete),
          )
        ],
      ),
      body: ListView(
        children: [
          CategoryForm(),
        ],
      ),
    );
  }
}
