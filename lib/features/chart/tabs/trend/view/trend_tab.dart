import 'package:flutter/material.dart';

import '../../../chart.dart';

class TrendTabPage extends StatelessWidget {
  const TrendTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TrendStackedLineChart(),
          ],
        ),
      ),
    );
  }
}
