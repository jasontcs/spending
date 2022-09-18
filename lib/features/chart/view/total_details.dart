import 'package:flutter/material.dart';

import '../../../common/common.dart';
import '../../../generated/l10n.dart';
import '../chart.dart';

class TotalDetails extends StatelessWidget {
  const TotalDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final total = context.select((ChartBloc bloc) => bloc.state.totalThisMonth);
    final average = context.select((ChartBloc bloc) =>
        total /
        DateUtils.getDaysInMonth(
            bloc.state.month.year, bloc.state.month.month));
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.titleLarge!,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        child: Row(
          children: [
            Text('${S.of(context).total}: ${currencyFormat(context, total)}'),
            const Spacer(),
            Text(
                '${S.of(context).average_per_day}: ${currencyFormat(context, average)}'),
          ],
        ),
      ),
    );
  }
}
