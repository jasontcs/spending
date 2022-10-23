part of 'currencies_cubit.dart';

@freezed
class CurrenciesState with _$CurrenciesState {
  const factory CurrenciesState({
    @Default([]) List<Currency> currencies,
  }) = _CurrenciesState;
}
