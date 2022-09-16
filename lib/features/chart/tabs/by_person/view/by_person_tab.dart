import 'package:flutter/material.dart';

import '../../../chart.dart';

class ByPersonTabPage extends StatelessWidget {
  const ByPersonTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            ByPersonPieChart(),
            TotalDetails(),
            ByPersonDataTable(),
          ],
        ),
      ),
    );
  }
}
