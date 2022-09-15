import 'package:flutter/material.dart';

import '../../../common/common.dart';
import '../../../generated/l10n.dart';
import '../budget.dart';

class BudgetOverallTable extends StatelessWidget {
  const BudgetOverallTable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final budget = context.select((BudgetBloc bloc) =>
        bloc.state.categoriesWithRecords.keys.fold<num>(
            0, (previousValue, category) => previousValue + category.budget));
    final spent =
        context.select((BudgetBloc bloc) => bloc.state.totalThisMonth);

    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleMedium!,
      child: Table(
        children: [
          TableRow(children: [
            Text(S.of(context).budget),
            Text(currencyFormat(context, budget))
          ]),
          TableRow(children: [
            Text(S.of(context).spent),
            Text(currencyFormat(context, spent))
          ]),
          TableRow(children: [
            Text(S.of(context).balance),
            Text(currencyFormat(context, budget - spent))
          ]),
        ],
      ),
    );
  }
}
