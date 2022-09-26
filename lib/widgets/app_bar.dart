import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class SpendingAppBar extends StatelessWidget with PreferredSizeWidget {
  const SpendingAppBar({
    super.key,
    this.title,
    this.bottom,
    this.actions,
    this.isTransparent = false,
  });
  final Widget? title;
  final PreferredSizeWidget? bottom;
  final List<Widget>? actions;
  final bool isTransparent;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const AutoLeadingButton(),
      title: title,
      bottom: bottom,
      actions: actions,
      backgroundColor: isTransparent ? Colors.transparent : null,
    );
  }

  @override
  Size get preferredSize => bottom != null
      ? Size.fromHeight(
          AppBar().preferredSize.height + bottom!.preferredSize.height)
      : AppBar().preferredSize;
}
