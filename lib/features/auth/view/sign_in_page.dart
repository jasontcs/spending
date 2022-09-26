import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../app_router.dart';
import '../../../generated/l10n.dart';
import '../../../widgets/app_bar.dart';
import '../auth.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listenWhen: (previous, current) =>
          previous.status == AuthStatus.logout &&
          current.status == AuthStatus.login,
      listener: (context, state) {
        context.replaceRoute(const AppHomeRoute());
      },
      child: Scaffold(
        appBar: SpendingAppBar(title: Text(S.of(context).sign_in)),
      ),
    );
  }
}
