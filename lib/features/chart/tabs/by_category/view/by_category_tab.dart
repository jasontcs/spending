import 'package:flutter/material.dart';

import '../../../chart.dart';

class ByCategoryTabPage extends StatelessWidget {
  const ByCategoryTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            ByCategoryPieChart(),
            TotalDetails(),
            ByCategoryDataTable(),
          ],
        ),
      ),
    );
  }
}
