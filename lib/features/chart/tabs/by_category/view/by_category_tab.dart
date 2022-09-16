import 'package:flutter/material.dart';

import '../../../chart.dart';

class ByCategoryTabPage extends StatelessWidget {
  const ByCategoryTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ByCategoryPieChart(),
            TotalDetails(),
            ByCategoryDataTable(),
          ],
        ),
      ),
    );
  }
}
