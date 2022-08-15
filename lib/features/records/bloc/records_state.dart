part of 'records_bloc.dart';

@freezed
class RecordsState with _$RecordsState {
  const factory RecordsState({@Default([]) List<Record> records}) =
      _RecordsState;
}
