import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../generated/l10n.dart';

class BudgetPage extends StatelessWidget {
  const BudgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).budget)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                CircularPercentIndicator(
                  radius: 60,
                  percent: 0.3,
                  lineWidth: 12.0,
                  circularStrokeCap: CircularStrokeCap.round,
                  center: Text('30%'),
                ),
                Expanded(
                  child: Table(
                    children: [
                      TableRow(children: [Text('Budget'), Text('999')]),
                      TableRow(children: [Text('Used'), Text('600')]),
                      TableRow(children: [Text('Balance'), Text('399')]),
                    ],
                  ),
                ),
              ],
            ),
            ListView.separated(
              itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(child: Text('😋')),
                title: Text('Food'),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LinearPercentIndicator(
                      padding: EdgeInsets.zero,
                      percent: 0.3,
                    ),
                    Text('Balance:--'),
                  ],
                ),
              ),
              separatorBuilder: (context, index) => Divider(),
              itemCount: 5,
              shrinkWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}
