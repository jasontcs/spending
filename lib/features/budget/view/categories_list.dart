import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../app/theme.dart';
import '../../../common/common.dart';
import '../../../generated/l10n.dart';
import '../../../widgets/calculator_keyboard.dart';
import '../budget.dart';

class BudgetCategoriesList extends StatelessWidget {
  const BudgetCategoriesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categoriesWithTotalThisMonth = context
        .select((BudgetBloc bloc) => bloc.state.categoriesWithTotalThisMonth);

    final percentColor = Theme.of(context).extension<AppColor>()!;
    return ListView.separated(
      itemBuilder: (context, index) {
        final category =
            categoriesWithTotalThisMonth.entries.elementAt(index).key;
        final budget = Budget(
          total: category.budget,
          used: categoriesWithTotalThisMonth.entries.elementAt(index).value,
        );

        return ListTile(
          leading: CircleAvatar(child: Text(category.icon)),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(category.title),
              const Spacer(),
              Flexible(
                child: CalculatorField(
                  builder: (context, value, hasFocus) {
                    final text = hasFocus == true
                        ? value
                        : budget.total != 0
                            ? currencyFormat(context, budget.total)
                            : null;
                    return TextField(
                      controller: TextEditingController(text: text),
                      keyboardType: TextInputType.none,
                      textAlign: TextAlign.end,
                      decoration: InputDecoration.collapsed(
                        floatingLabelAlignment: FloatingLabelAlignment.center,
                        hintText: S.of(context).not_set,
                      ).copyWith(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                      ),
                    );
                  },
                  onDone: (value) {
                    if (value >= 0) {
                      context.read<BudgetBloc>().add(
                            BudgetCategoriesBudgetUpdated(
                              category: category,
                              budget: value,
                            ),
                          );
                    }
                  },
                ),
              ),
            ],
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LinearPercentIndicator(
                padding: EdgeInsets.zero,
                percent: budget.percentForIndicator,
                barRadius: const Radius.circular(2.5),
                progressColor: budget.isPositive
                    ? percentColor.positive
                    : percentColor.negative,
                backgroundColor: Theme.of(context).dividerColor,
                animation: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      '${S.of(context).balance}: ${budget.percentString(context) ?? '--'}'),
                  Text(
                      '${S.of(context).spent}: ${currencyFormat(context, budget.used)}')
                ],
              ),
            ],
          ),
        );
      },
      separatorBuilder: (context, index) => const Divider(),
      itemCount: categoriesWithTotalThisMonth.length,
    );
  }
}
