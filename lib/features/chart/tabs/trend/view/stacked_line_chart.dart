import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:spending_repository/spending_repository.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../../generated/l10n.dart';
import '../../../chart.dart';

class TrendStackedLineChart extends StatelessWidget {
  const TrendStackedLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    final month = context.select((ChartBloc bloc) => bloc.state.month);
    final datas = context.select(
      (ChartBloc bloc) => bloc.state.categoriesWithRecordsThisMonth.map(
        (key, value) {
          final days = List.generate(
              DateUtils.getDaysInMonth(month.year, month.month),
              (index) => DateTime(month.year, month.month, 1 + index));
          final daysMap =
              Map.fromEntries(days.map((e) => MapEntry(e, <Record>[])));

          return MapEntry(
            key,
            daysMap
              ..addAll(value.groupListsBy(
                  (record) => DateUtils.dateOnly(record.dateTime))),
          );
        },
      ),
    );
    return SfCartesianChart(
      primaryXAxis: DateTimeAxis(
        minimum: DateTime(month.year, month.month, 1),
        maximum: DateTime(month.year, month.month + 1, 0),
      ),
      primaryYAxis: NumericAxis(
        numberFormat: NumberFormat.simpleCurrency(
          locale: S.of(context).locale,
          decimalDigits: 0,
        ),
      ),
      legend: Legend(
        isVisible: true,
        position: LegendPosition.bottom,
      ),
      tooltipBehavior: TooltipBehavior(
        enable: true,
        shouldAlwaysShow: true,
      ),
      series: datas.entries
          .map((e) =>
              StackedColumnSeries<MapEntry<DateTime, List<Record>>, DateTime>(
                name: e.key.title,
                dataSource: e.value.entries.toList(),
                xValueMapper: (data, _) => data.key,
                yValueMapper: (data, _) => data.value.fold<num>(
                    0,
                    (previousValue, element) =>
                        previousValue += element.amount),
              ))
          .toList(),
      onTooltipRender: (tooltipArgs) {
        final date = datas.entries
            .elementAt(tooltipArgs.seriesIndex as int)
            .value
            .entries
            .elementAt(tooltipArgs.pointIndex! as int)
            .key;

        context.read<ChartBloc>().add(ChartTrendBarSelected(date));
      },
    );
  }
}
