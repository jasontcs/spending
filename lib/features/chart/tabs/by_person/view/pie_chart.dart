import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../../../../../app/theme.dart';
import '../../../../../common/common.dart';
import '../../../chart.dart';

class ByPersonPieChart extends StatelessWidget {
  const ByPersonPieChart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = context.select((ChartBloc bloc) => bloc
        .state.peopleWithRecords
        .map((e) => e.whereMonth(bloc.state.month))
        .map((e) => ChartData(e.person.title, e.total))
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