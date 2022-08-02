import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:spending_api/spending_api.dart';
import 'package:spending_repository/spending_repository.dart';

import 'app/app.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final spendingRepository = ISpendingRepository(FirebaseSpendingApi());
  runApp(App(
    spendingRepository: spendingRepository,
    firebaseAuth: FirebaseAuth.instance,
  ));
}
