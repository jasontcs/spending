import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../common/common.dart';
import '../budget.dart';

class BudgetPercentIndicator extends StatelessWidget {
  const BudgetPercentIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final percent = context.select((BudgetBloc bloc) {
      final budget = bloc.state.categoriesWithRecords.keys.fold<num>(
          0, (previousValue, category) => previousValue + category.budget);
      final spent = bloc.state.totalThisMonth;
      return (budget - spent) / budget;
    });
    return CircularPercentIndicator(
      radius: 60,
      percent: percent,
      lineWidth: 12.0,
      circularStrokeCap: CircularStrokeCap.round,
      center: Text(
        percentageFormat(context, percent),
        style: Theme.of(context).textTheme.titleLarge,
      ),
      backgroundColor: Theme.of(context).dividerColor,
    );
  }
}
