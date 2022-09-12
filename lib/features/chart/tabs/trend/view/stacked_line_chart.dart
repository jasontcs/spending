// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';

// class TrendStackedLineChart extends StatelessWidget {
//   const TrendStackedLineChart({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SfCartesianChart(
//       primaryXAxis: CategoryAxis(),
//       tooltipBehavior: TooltipBehavior(enable: true),
//       series: <ChartSeries>[
//         StackedLineSeries<ChartData, String>(
//             dataSource: chartData,
//             xValueMapper: (ChartData data, _) => data.x,
//             yValueMapper: (ChartData data, _) => data.y1),
//         StackedLineSeries<ChartData, String>(
//             dataSource: chartData,
//             xValueMapper: (ChartData data, _) => data.x,
//             yValueMapper: (ChartData data, _) => data.y2),
//         StackedLineSeries<ChartData, String>(
//             dataSource: chartData,
//             xValueMapper: (ChartData data, _) => data.x,
//             yValueMapper: (ChartData data, _) => data.y3),
//         StackedLineSeries<ChartData, String>(
//             dataSource: chartData,
//             xValueMapper: (ChartData data, _) => data.x,
//             yValueMapper: (ChartData data, _) => data.y4)
//       ],
//     );
//   }
// }

// class ChartData {
//   ChartData(this.x, this.y);
//   final String x;
//   final double? y;
// }
