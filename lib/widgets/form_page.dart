import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class AppFormPage extends StatelessWidget {
  const AppFormPage({
    Key? key,
    this.title,
    this.onDelete,
    required this.isBusy,
    required this.child,
  }) : super(key: key);

  final Widget? title;
  final VoidCallback? onDelete;
  final bool isBusy;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: title,
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            context.popRoute();
          },
        ),
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
        child: Column(
          children: [
            if (isBusy) LinearProgressIndicator(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: child,
            ),
          ],
        ),
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).padding.bottom),
      ),
    );
  }
}
