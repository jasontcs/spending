part of 'chart_bloc.dart';

@freezed
class ChartState with _$ChartState {
  const factory ChartState({
    DateTime? month,
    @Default([]) List<Record> records,
  }) = _ChartState;
}
