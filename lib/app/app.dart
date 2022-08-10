import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfire_ui/i10n.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'package:go_router/go_router.dart';
import 'package:spending_repository/spending_repository.dart';

import '../features/auth/auth.dart';
import '../features/auth/view/sign_in_page.dart';
import '../features/categories/categories.dart';
import '../features/home/home.dart';
import '../features/people/people.dart';
import '../features/record/record.dart';

class App extends StatelessWidget {
  App({
    super.key,
    required this.spendingRepository,
    required this.firebaseAuth,
  });

  final SpendingRepository spendingRepository;
  final FirebaseAuth firebaseAuth;
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: spendingRepository),
        RepositoryProvider.value(value: firebaseAuth),
      ],
      child: AppBlocs(),
    );
  }
}

class AppBlocs extends StatelessWidget {
  const AppBlocs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SpendingRepository spendingRepository =
        context.read<SpendingRepository>();
    final FirebaseAuth firebaseAuth = context.read<FirebaseAuth>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              AuthBloc(firebaseAuth)..add(AuthLoginRequested()),
        ),
      ],
      child: AppView(),
    );
  }
}

class AppView extends StatelessWidget {
  AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final loggedIn = context.select(
        (AuthBloc authBloc) => authBloc.state.status == AuthStatus.login);
    final _router = GoRouter(
      routes: [
        AppHomePage.route(routes: [
          RecordPage.route(routes: [
            CategoriesPage.route(),
            PeoplePage.route(),
          ]),
        ]),
        SignInPage.route(),
      ],
      redirect: (state) {
        // if the user is not logged in, they need to login
        final loggingIn = state.subloc == '/sign-in';
        if (!loggedIn) return loggingIn ? null : '/sign-in';

        // if the user is logged in but still on the login page, send them to
        // the home page
        if (loggingIn) return '/';

        // no need to redirect at all
        return null;
      },
    );
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      localizationsDelegates: const [
        FormBuilderLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: FormBuilderLocalizations.delegate.supportedLocales,
    );
  }
}
