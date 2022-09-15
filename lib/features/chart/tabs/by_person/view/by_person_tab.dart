import 'package:flutter/material.dart';

import '../by_person.dart';

class ByPersonTabPage extends StatelessWidget {
  const ByPersonTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ByPersonPieChart(),
            ByPersonDataTable(),
          ],
        ),
      ),
    );
  }
}
