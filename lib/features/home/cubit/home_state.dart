part of 'home_cubit.dart';

enum HomeTab { records, budget, charts, setting }

class HomeState {
  HomeState({this.tab = HomeTab.records});

  final HomeTab tab;
}
