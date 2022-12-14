import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../../app_router.dart';
import '../../../generated/l10n.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/month_bar.dart';
import '../budget.dart';

class BudgetPage extends StatelessWidget with AutoRouteWrapper {
  const BudgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    final month = context.select((BudgetBloc bloc) => bloc.state.month);
    final mainCurrency =
        context.select((BudgetBloc bloc) => bloc.state.mainCurrency);
    return Scaffold(
      appBar: SpendingAppBar(
        title: Text(S.of(context).budget),
        bottom: MonthBar(
          focusedMonth: month,
          onPageChanged: (focusedDay) {
            context.read<BudgetBloc>().add(BudgetMonthChanged(focusedDay));
          },
        ),
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor:
                  Theme.of(context).appBarTheme.actionsIconTheme?.color,
            ),
            onPressed: () {
              context.pushRoute(const CurrenciesRoute());
            },
            child: Text(mainCurrency?.title ?? '-'),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: BudgetPercentIndicator(),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: BudgetOverallTable(),
                  ),
                ),
              ],
            ),
          ),
          const Flexible(
            child: BudgetCategoriesList(),
          ),
        ],
      ),
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          BudgetBloc(spendingRepository: context.read<SpendingRepository>()),
      child: this,
    );
  }
}
