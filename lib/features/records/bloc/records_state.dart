part of 'records_bloc.dart';

@freezed
class RecordsState with _$RecordsState {
  const factory RecordsState({
    @Default([]) List<Record> records,
    @Default(TableCalendarConfig()) TableCalendarConfig calendarConfig,
  }) = _RecordsState;
}

@freezed
class TableCalendarConfig with _$TableCalendarConfig {
  const factory TableCalendarConfig({
    DateTime? focusedDay,
    DateTime? selectedDate,
  }) = _TableCalendarConfig;
}
