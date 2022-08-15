part of 'record_bloc.dart';

enum RecordStatus {
  init,
  fetching,
  idle,
  unsaved,
  posting,
  error,
}

@freezed
class RecordState with _$RecordState {
  const factory RecordState({
    @Default([]) List<Category> categories,
    @Default([]) List<Currency> currencies,
    @Default([]) List<Person> people,
    Record? record,
    GlobalKey<FormBuilderState>? formKey,
    @Default(RecordStatus.init) RecordStatus status,
  }) = _RecordState;
}
