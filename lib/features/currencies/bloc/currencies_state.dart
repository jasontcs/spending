part of 'currencies_bloc.dart';

@freezed
class CurrenciesState with _$CurrenciesState {
  const factory CurrenciesState({
    @Default(AppFormStatus.init) AppFormStatus status,
    @Default([]) List<Currency> currencies,
  }) = _CurrenciesState;
}
