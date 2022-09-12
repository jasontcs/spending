import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ByCategoryPieChart2 extends StatelessWidget {
  const ByCategoryPieChart2({super.key});

  @override
  Widget build(BuildContext context) {
    final datas = [
      PieChartSectionData(
        value: 10,
        title: 'abc',
        color: Colors.red.shade300,
        radius: 110,
      ),
      PieChartSectionData(
        value: 20,
        title: 'abcd',
        color: Colors.blue.shade300,
        radius: 110,
      ),
    ];
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        PieChartData(
          sections: datas,
          sectionsSpace: 0,
          centerSpaceRadius: 0,
          pieTouchData: PieTouchData(
            touchCallback: (event, response) {
              print(event);
              print(response);
            },
          ),
          borderData: FlBorderData(),
        ),
      ),
    );
  }
}
