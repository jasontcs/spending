import 'package:flutter/material.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../../../../app/theme.dart';
import '../../../../../widgets/records_list.dart';
import '../../../chart.dart';

class TrendTabPage extends StatelessWidget {
  const TrendTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final records = context.select((ChartBloc bloc) => bloc.state.records
        .where(
          (record) => DateUtils.isSameDay(
            bloc.state.trendFocusedDate,
            record.dateTime,
          ),
        )
        .toList());
    final categories = context.select((ChartBloc bloc) =>
        bloc.state.categoriesWithRecords.map((e) => e.category).toList());
    final Map<Category, Color?> categoriesColor = {
      for (final element in categories.asMap().entries)
        element.value:
            Theme.of(context).extension<AppColor>()!.palette[element.key]
    };
    return Scaffold(
      body: Column(
        children: [
          const TrendStackedLineChart(),
          Flexible(
            child: RecordsList(
              records: records,
              categoriesColor: categoriesColor,
            ),
          ),
        ],
      ),
    );
  }
}
