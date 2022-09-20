import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/i10n.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'package:spending_repository/spending_repository.dart';

import '../app_router.dart';
import '../features/auth/auth.dart';
import '../generated/l10n.dart';
import 'theme.dart';

class App extends StatelessWidget {
  const App({
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
      child: const AppBlocs(),
    );
  }
}

class AppBlocs extends StatelessWidget {
  const AppBlocs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final FirebaseAuth firebaseAuth = context.read<FirebaseAuth>();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              AuthBloc(firebaseAuth)..add(AuthLoginRequested()),
        ),
      ],
      child: const AppView(),
    );
  }
}

class AppView extends StatefulWidget {
  const AppView({super.key});

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  late final AppRouter _appRouter;

  @override
  void initState() {
    _appRouter =
        AppRouter(authGuard: AuthGuard(context.read<AuthBloc>().stream));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      onGenerateTitle: (context) => S.of(context).app_title,
      theme: kAppTheme,
      darkTheme: kAppDarkTheme,
      // themeMode: ThemeMode.dark,
      routeInformationProvider: _appRouter.routeInfoProvider(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: AutoRouterDelegate(_appRouter),
      localizationsDelegates: const [
        S.delegate,
        FormBuilderLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      // supportedLocales: FormBuilderLocalizations.delegate.supportedLocales,
      supportedLocales: const [
        Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant'),
        Locale.fromSubtags(languageCode: 'zh', scriptCode: 'HK')
      ],
    );
  }
}
