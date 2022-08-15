part of 'home_cubit.dart';

enum HomeTab { records, budget, charts, setting }

@freezed
class HomeState with _$HomeState {
  const factory HomeState({@Default(HomeTab.records) HomeTab tab}) = _HomeState;
}
