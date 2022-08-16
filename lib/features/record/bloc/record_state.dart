part of 'record_bloc.dart';

@freezed
class RecordState with _$RecordState {
  const factory RecordState({
    @Default([]) List<Category> categories,
    @Default([]) List<Currency> currencies,
    @Default([]) List<Person> people,
    Record? record,
    GlobalKey<FormBuilderState>? formKey,
    @Default(AppFormStatus.init) AppFormStatus status,
  }) = _RecordState;
}
