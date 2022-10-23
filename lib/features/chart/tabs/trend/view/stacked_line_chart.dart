import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../../app/theme.dart';
import '../../../../../generated/l10n.dart';
import '../../../chart.dart';

class TrendStackedLineChart extends StatelessWidget {
  const TrendStackedLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    final month = context.select((ChartBloc bloc) => bloc.state.month);
    final rate =
        context.select((ChartBloc bloc) => bloc.state.mainCurrency?.rate ?? 1);
    final categoriesWithRecords =
        context.select((ChartBloc bloc) => bloc.state.categoriesWithRecords);
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
      series: categoriesWithRecords
          .where((element) => element.whereMonth(month).records.isNotEmpty)
          .map((e) => StackedColumnSeries<DateWithRecords, DateTime>(
                name: e.category.title,
                dataSource: e.datesWithRecordsWithMonth(month),
                xValueMapper: (data, _) => data.date,
                yValueMapper: (data, _) =>
                    data.records.fold<num>(
                        0,
                        (previousValue, element) =>
                            previousValue += element.relativeAmount) /
                    rate,
              ))
          .toList(),
      onTooltipRender: (tooltipArgs) {
        final date = categoriesWithRecords
            .elementAt(tooltipArgs.seriesIndex as int)
            .datesWithRecordsWithMonth(month)
            .elementAt(tooltipArgs.pointIndex! as int)
            .date;
        context.read<ChartBloc>().add(ChartTrendBarSelected(date));
      },
      palette: Theme.of(context).extension<AppColor>()!.palette,
    );
  }
}
