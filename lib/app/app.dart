import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterfire_ui/i10n.dart';
import 'package:form_builder_validators/localization/l10n.dart';
import 'package:spending/app/theme.dart';
import 'package:spending_repository/spending_repository.dart';

import '../app_router.dart';
import '../features/auth/auth.dart';
import '../generated/l10n.dart';

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

class AppView extends StatefulWidget {
  AppView({Key? key}) : super(key: key);

  @override
  State<AppView> createState() => _AppViewState();
}

class _AppViewState extends State<AppView> {
  late final AppRouter _appRouter;

  @override
  void initState() {
    final authBloc = BlocProvider.of<AuthBloc>(context, listen: false);
    _appRouter = AppRouter(authGuard: AuthGuard(authBloc.stream));
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
      routerDelegate: _appRouter.delegate(),
      localizationsDelegates: const [
        S.delegate,
        FormBuilderLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      // supportedLocales: FormBuilderLocalizations.delegate.supportedLocales,
      supportedLocales: [
        Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hant')
      ],
    );
  }
}
