import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spending_repository/spending_repository.dart';

import '../../../common/common.dart';

export 'package:flutter_bloc/flutter_bloc.dart';

part 'currencies_bloc.freezed.dart';
part 'currencies_event.dart';
part 'currencies_state.dart';

class CurrenciesBloc extends Bloc<CurrenciesEvent, CurrenciesState> {
  CurrenciesBloc({
    required SpendingRepository spendingRepository,
  })  : _spendingRepository = spendingRepository,
        super(const CurrenciesState()) {
    on<_CurrenciesUpdatedEvent>(_onCurrenciesUpdatedEvent);
    on<CurrenciesMainSelectedEvent>(_onCurrenciesMainSelectedEvent);

    _currenciesSubscription =
        _spendingRepository.currenciesStream.listen((currencies) {
      add(_CurrenciesUpdatedEvent(currencies));
    });
  }
  final SpendingRepository _spendingRepository;
  late final StreamSubscription<List<Currency>> _currenciesSubscription;

  Future<void> _onCurrenciesMainSelectedEvent(
    CurrenciesMainSelectedEvent event,
    Emitter<CurrenciesState> emit,
  ) async {
    emit(state.copyWith(status: AppFormStatus.posting));
    final result = await _spendingRepository.setMainCurrency(event.currency);
    emit(state.copyWith(
        status: result.main ? AppFormStatus.idle : AppFormStatus.error));
  }

  void _onCurrenciesUpdatedEvent(
    _CurrenciesUpdatedEvent event,
    Emitter<CurrenciesState> emit,
  ) {
    emit(state.copyWith(currencies: event.currencies));
  }

  @override
  Future<void> close() {
    _currenciesSubscription.cancel();
    return super.close();
  }
}
