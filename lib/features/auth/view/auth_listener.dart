import 'package:flutter/material.dart';

import '../../../app_router.dart';
import '../auth.dart';

class AuthListener extends StatelessWidget {
  const AuthListener({
    super.key,
    this.child,
    required this.router,
  });
  final Widget? child;
  final AppRouter router;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status == AuthStatus.login) {
          router.replaceAll([const AppHomeRoute()]);
        } else {
          router.replaceAll([const SignInRoute()]);
        }
      },
      child: child,
    );
  }
}
