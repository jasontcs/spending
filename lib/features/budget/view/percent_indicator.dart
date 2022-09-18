import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../app/theme.dart';
import '../budget.dart';

class BudgetPercentIndicator extends StatelessWidget {
  const BudgetPercentIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final budget = context.select((BudgetBloc bloc) {
      final total = bloc.state.categoriesWithRecords.keys.fold<num>(
          0, (previousValue, category) => previousValue + category.budget);
      final spent = bloc.state.totalThisMonth;
      return Budget(total: total, used: spent);
    });
    final percentColor = Theme.of(context).extension<AppColor>()!;
    return CircularPercentIndicator(
      radius: 60,
      percent: budget.percentForIndicator,
      lineWidth: 12.0,
      circularStrokeCap: CircularStrokeCap.round,
      center: Text(
        budget.percentString(context) ?? '-',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      backgroundColor: Theme.of(context).dividerColor,
      progressColor:
          budget.isPositive ? percentColor.positive : percentColor.negative,
      reverse: !budget.isPositive,
      animation: true,
    );
  }
}
