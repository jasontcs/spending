import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../../app_router.dart';
import '../../../generated/l10n.dart';
import '../../../widgets/month_bar.dart';
import '../chart.dart';

class ChartPage extends StatelessWidget with AutoRouteWrapper {
  const ChartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
      routes: [
        ByCategoryTabRoute(),
        TrendTabRoute(),
        ByPersonTabRoute(),
      ],
      homeIndex: 1,
      builder: (context, child, tabController) {
        final month = context.select((ChartBloc bloc) => bloc.state.month);
        return Scaffold(
          appBar: AppBar(
            title: Text(S.of(context).chart),
            bottom: MonthBar(
              focusedMonth: month,
              onPageChanged: (focusedDay) {
                context.read<ChartBloc>().add(ChartMonthChanged(focusedDay));
              },
            ),
          ),
          body: child,
          floatingActionButton: Transform.translate(
            offset: const Offset(0, -16),
            child: TabPageSelector(controller: tabController),
          ),
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
