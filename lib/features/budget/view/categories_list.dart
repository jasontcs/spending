import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../common/common.dart';
import '../../../generated/l10n.dart';
import '../budget.dart';

class BudgetCategoriesList extends StatelessWidget {
  const BudgetCategoriesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final categoriesWithTotalThisMonth = context
        .select((BudgetBloc bloc) => bloc.state.categoriesWithTotalThisMonth);
    return ListView.separated(
      itemBuilder: (context, index) {
        final category =
            categoriesWithTotalThisMonth.entries.elementAt(index).key;
        final budget = category.budget == 0 ? null : category.budget;
        final spent =
            categoriesWithTotalThisMonth.entries.elementAt(index).value;

        return ListTile(
          leading: CircleAvatar(child: Text(category.icon)),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(category.title),
              Text(budget != null
                  ? currencyFormat(context, budget)
                  : S.of(context).not_set),
            ],
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LinearPercentIndicator(
                padding: EdgeInsets.zero,
                percent: budget != null ? (budget - spent) / budget : 0,
                barRadius: Radius.circular(2.5),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      '${S.of(context).balance}: ${budget != null ? currencyFormat(context, budget - spent) : '--'}'),
                  Text(
                      '${S.of(context).spent}: ${currencyFormat(context, spent)}')
                ],
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => Divider(),
      itemCount: categoriesWithTotalThisMonth.length,
    );
  }
}
