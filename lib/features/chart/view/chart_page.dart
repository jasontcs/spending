import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).chart)),
    );
  }
}
