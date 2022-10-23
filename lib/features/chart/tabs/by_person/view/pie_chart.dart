import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../../app/theme.dart';
import '../../../chart.dart';

class ByPersonPieChart extends StatelessWidget {
  const ByPersonPieChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = context.select((ChartBloc bloc) => bloc
        .state.peopleWithRecords
        .map((e) => e.whereMonth(bloc.state.month))
        .where((element) => element.records.isNotEmpty)
        .map((e) => ChartData(
            e.person.title, e.total / (bloc.state.mainCurrency?.rate ?? 1)))
        .toList());
    return SfCircularChart(
      legend: Legend(
        isVisible: true,
        position: LegendPosition.right,
      ),
      tooltipBehavior: TooltipBehavior(
        enable: true,
      ),
      series: <CircularSeries>[
        PieSeries<ChartData, String>(
          dataSource: chartData,
          pointColorMapper: (ChartData data, _) => data.color,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
        )
      ],
      palette: Theme.of(context).extension<AppColor>()!.palette,
    );
  }
}
