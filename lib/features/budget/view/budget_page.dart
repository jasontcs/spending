import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../../generated/l10n.dart';
import '../budget.dart';

class BudgetPage extends StatelessWidget with AutoRouteWrapper {
  const BudgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).budget)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: BudgetPercentIndicator(),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: BudgetOverallTable(),
                  ),
                ),
              ],
            ),
          ),
          Flexible(
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
