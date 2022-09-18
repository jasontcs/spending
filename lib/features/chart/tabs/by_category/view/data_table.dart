import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import '../../../../../common/common.dart';
import '../../../../../generated/l10n.dart';
import '../../../chart.dart';

class ByCategoryDataTable extends StatelessWidget {
  const ByCategoryDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    final rows =
        context.select((ChartBloc bloc) => bloc.state.categoriesWithRecords
            .map((e) => e.whereMonth(bloc.state.month))
            .where((element) => element.records.isNotEmpty)
            .sorted((a, b) => -a.total.compareTo(b.total))
            .mapIndexed(
              (index, element) => DataRow(
                cells: <DataCell>[
                  DataCell(Text((index + 1).toString())),
                  DataCell(Text(element.category.title)),
                  DataCell(Text(currencyFormat(context, element.total))),
                  DataCell(Text(bloc.state.totalThisMonth == 0
                      ? '-'
                      : percentageFormat(
                          context, element.total / bloc.state.totalThisMonth))),
                ],
              ),
            )
            .toList());
    return DataTable(
      columns: [
        '#',
        S.of(context).category,
        S.of(context).amount,
        S.of(context).ratio,
      ]
          .map(
            (e) => DataColumn(
              label: Expanded(
                child: Text(
                  e,
                  style: const TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
            ),
          )
          .toList(),
      rows: rows,
    );
  }
}
