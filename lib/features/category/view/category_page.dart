import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../../common/common.dart';
import '../../../generated/l10n.dart';
import '../../../widgets/form_page.dart';
import '../../../widgets/form_posting_listener.dart';
import '../category.dart';

class CategoryPage extends StatelessWidget with AutoRouteWrapper {
  const CategoryPage({Key? key, this.id}) : super(key: key);

  @QueryParam('category_id')
  final String? id;

  @override
  Widget build(BuildContext context) {
    return PostingListener.id<CategoryBloc, CategoryState>(
      listenWhen: (previous, current) =>
          previous.status == AppFormStatus.posting &&
          current.status == AppFormStatus.idle,
      idExist: (state) => state.category?.id != null,
      listener: (context, state, type) {
        late final String label;
        if (type == PostingType.created) label = S.of(context).created;
        if (type == PostingType.updated) label = S.of(context).updated;
        if (type == PostingType.deleted) label = S.of(context).deleted;
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(label)));
        context.popRoute();
      },
      child: CategoryView(),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => CategoryBloc(
        spendingRepository: context.read<SpendingRepository>(),
      )..add(CategoryItemLoaded(id)),
      child: this,
    );
  }
}

class CategoryView extends StatelessWidget {
  const CategoryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final title =
        context.select((CategoryBloc bloc) => bloc.state.category?.title);
    final isBusy =
        context.select((CategoryBloc bloc) => bloc.state.status.isBusy);

    return AppFormPage(
      title:
          Text(title?.isNotEmpty == true ? title! : S.of(context).new_category),
      isBusy: isBusy,
      onDelete: () {
        context.read<CategoryBloc>().add(CategoryRemoveRequested());
      },
      child: CategoryForm(),
    );
  }
}
