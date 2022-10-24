import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../../app_router.dart';
import '../../../generated/l10n.dart';
import '../../../widgets/app_bar.dart';
import '../../../widgets/month_bar.dart';
import '../chart.dart';

class ChartPage extends StatelessWidget with AutoRouteWrapper {
  const ChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: const [
        ByCategoryTabRoute(),
        TrendTabRoute(),
        ByPersonTabRoute(),
      ],
      homeIndex: 1,
      builder: (context, child, tabController) {
        final month = context.select((ChartBloc bloc) => bloc.state.month);
        final hasRecord = context.select((ChartBloc bloc) => bloc.state.records
            .where((record) => DateUtils.isSameMonth(record.dateTime, month))
            .isNotEmpty);
        final mainCurrency =
            context.select((ChartBloc bloc) => bloc.state.mainCurrency);
        return Scaffold(
          appBar: SpendingAppBar(
            title: Text(S.of(context).chart),
            bottom: MonthBar(
              focusedMonth: month,
              onPageChanged: (focusedDay) {
                context.read<ChartBloc>().add(ChartMonthChanged(focusedDay));
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
          body: hasRecord
              ? child
              : Center(
                  child: Text(S.of(context).no_records),
                ),
          floatingActionButton: hasRecord
              ? Transform.translate(
                  offset: const Offset(0, -16),
                  child: TabPageSelector(controller: tabController),
                )
              : null,
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
        );
      },
    );
  }

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ChartBloc(spendingRepository: context.read<SpendingRepository>()),
      child: this,
    );
  }
}
