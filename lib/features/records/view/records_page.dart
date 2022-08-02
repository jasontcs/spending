import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spending_repository/spending_repository.dart';

class RecordsPage extends StatelessWidget {
  const RecordsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Record')),
      body: StreamBuilder(
        stream:
            RepositoryProvider.of<SpendingRepository>(context).recordsStream,
        builder: (context, snapshot) {
          return ListView.builder(
            itemBuilder: (context, index) => ListTile(),
          );
        },
      ),
    );
  }
}
