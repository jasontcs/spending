import 'package:flutter/material.dart';

import '../../../common/common.dart';
import '../../../generated/l10n.dart';
import '../budget.dart';

class BudgetOverallTable extends StatelessWidget {
  const BudgetOverallTable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mainCurrency =
        context.select((BudgetBloc bloc) => bloc.state.mainCurrency);
    final mainRate = mainCurrency?.rate ?? 1;
    final budget = context.select((BudgetBloc bloc) =>
        bloc.state.categoriesWithRecords.keys.fold<num>(
            0, (previousValue, category) => previousValue + category.budget) /
        mainRate);
    final spent = context
        .select((BudgetBloc bloc) => bloc.state.totalThisMonth / mainRate);

    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleMedium!,
      child: Table(
        children: [
          TableRow(children: [
            Text(S.of(context).budget),
            Text(currencyFormat(context, budget, mainCurrency?.title))
          ]),
          TableRow(children: [
            Text(S.of(context).spent),
            Text(currencyFormat(context, spent, mainCurrency?.title))
          ]),
          TableRow(children: [
            Text(S.of(context).balance),
            Text(currencyFormat(context, budget - spent, mainCurrency?.title))
          ]),
        ],
      ),
    );
  }
}
