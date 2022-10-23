import 'package:flutter/material.dart';

import '../../../common/common.dart';
import '../../../generated/l10n.dart';
import '../chart.dart';

class TotalDetails extends StatelessWidget {
  const TotalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final total = context.select((ChartBloc bloc) =>
        bloc.state.totalThisMonth / (bloc.state.mainCurrency?.rate ?? 1));
    final average = context.select((ChartBloc bloc) =>
        total /
        DateUtils.getDaysInMonth(
            bloc.state.month.year, bloc.state.month.month));
    final currency = context
        .select((ChartBloc bloc) => bloc.state.mainCurrency?.title ?? '');
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleLarge!,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: Row(
          children: [
            Text(
                '${S.of(context).total}: $currency ${currencyFormat(context, total)}'),
            const Spacer(),
            Text(
                '${S.of(context).average_per_day}: $currency ${currencyFormat(context, average)}'),
          ],
        ),
      ),
    );
  }
}
