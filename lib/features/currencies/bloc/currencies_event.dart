part of 'currencies_bloc.dart';

abstract class CurrenciesEvent {}

class _CurrenciesUpdatedEvent extends CurrenciesEvent {
  _CurrenciesUpdatedEvent(this.currencies);

  final List<Currency> currencies;
}

class CurrenciesMainSelectedEvent extends CurrenciesEvent {
  CurrenciesMainSelectedEvent(this.currency);

  final Currency currency;
}
