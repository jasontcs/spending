import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../chart.dart';

class ByPersonTabPage extends StatelessWidget {
  const ByPersonTabPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
            context.select((ChartBloc bloc) => bloc.state.month.toString())),
      ),
    );
  }
}
