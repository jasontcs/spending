import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'app_bar.dart';

class AppFormPage extends StatelessWidget {
  const AppFormPage({
    super.key,
    this.title,
    this.onDelete,
    required this.isBusy,
    required this.child,
  });

  final Widget? title;
  final VoidCallback? onDelete;
  final bool isBusy;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SpendingAppBar(
        title: title,
        actions: [
          IconButton(
            onPressed: () {
              onDelete?.call();
            },
            icon: const Icon(Icons.delete),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
        child: Column(
          children: [
            if (isBusy) const LinearProgressIndicator(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}
