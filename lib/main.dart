import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spending_api/spending_api.dart';
import 'package:spending_logger/spending_logger.dart';
import 'package:spending_repository/spending_repository.dart';

import 'app/app.dart';
import 'app_router.dart';
import 'bloc_observer.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SpendingLogger.setup();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final spendingRepository = SpendingRepositoryImpl(FirebaseSpendingApi());
  final appRouterWrapper = AppRouterWrapper();
  Bloc.observer = AppBlocObserver();
  runApp(App(
    spendingRepository: spendingRepository,
    firebaseAuth: FirebaseAuth.instance,
    appRouterWrapper: appRouterWrapper,
  ));
}
