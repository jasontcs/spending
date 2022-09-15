import 'package:flutter/material.dart';

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
    return Scaffold(
      body: Column(
        children: [
          TrendStackedLineChart(),
          Flexible(
            child: RecordsList(records: records),
          ),
        ],
      ),
    );
  }
}
