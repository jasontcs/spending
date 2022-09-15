import 'package:collection/collection.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../chart.dart';
import '../../tabs.dart';

class ByCategoryPieChart2 extends StatelessWidget {
  const ByCategoryPieChart2({super.key});

  static const double radius = 110;
  static List<Color> colors = [
    Colors.red.shade300,
    Colors.blue.shade300,
    Colors.yellow.shade300,
  ];

  @override
  Widget build(BuildContext context) {
    final total = context.select((ChartBloc bloc) => bloc.state.totalThisMonth);
    final datas = context
        .select((ChartBloc bloc) => bloc.state.categoriesWithTotalThisMonth);

    // final datas = [
    //   PieChartSectionData(
    //     value: 10,
    //     showTitle: false,
    //     color: Colors.red.shade300,
    //     radius: radius,
    //   ),
    //   PieChartSectionData(
    //     value: 20,
    //     showTitle: false,
    //     color: Colors.blue.shade300,
    //     radius: radius,
    //   ),
    // ];
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 56),
          child: SizedBox.square(
            dimension: radius * 2,
            child: datas.isNotEmpty
                ? PieChart(
                    PieChartData(
                      sections: datas.entries
                          .mapIndexed((index, element) => PieChartSectionData(
                                value: element.value / total,
                                title: element.key.title,
                                radius: radius,
                                color: colors[index],
                              ))
                          .toList(),
                      // startDegreeOffset: 270,
                      sectionsSpace: 0,
                      // centerSpaceRadius: 0,
                      pieTouchData: PieTouchData(
                        touchCallback: (event, response) {
                          print(event);
                          print(response);
                        },
                      ),
                      borderData: FlBorderData(),
                    ),
                  )
                : null,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: datas.entries
              .mapIndexed(
                (index, element) => Indicator(
                  color: colors[index],
                  text: element.key.title,
                  isSquare: true,
                ),
              )
              .toList(),
        )
      ],
    );
  }
}
