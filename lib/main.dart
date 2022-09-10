import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spending_api/spending_api.dart';
import 'package:spending_repository/spending_repository.dart';

import 'app/app.dart';
import 'bloc_observer.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final spendingRepository = SpendingRepositoryImpl(FirebaseSpendingApi());

  BlocOverrides.runZoned(
    () {
      runApp(App(
        spendingRepository: spendingRepository,
        firebaseAuth: FirebaseAuth.instance,
      ));
    },
    blocObserver: AppBlocObserver(),
  );
}
