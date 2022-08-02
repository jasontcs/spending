import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:spending_repository/spending_repository.dart';

import '../features/auth/auth.dart';
import '../features/home/home.dart';

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
    return RepositoryProvider.value(
      value: spendingRepository,
      child: BlocProvider(
        create: (context) => AuthBloc(firebaseAuth),
        child: AppView(),
      ),
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
        GoRoute(
          path: '/',
          builder: (context, state) => AppHomePage(),
        ),
        GoRoute(
          path: SignInPage.routeName,
          builder: (context, state) => SignInPage(),
        ),
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
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}
