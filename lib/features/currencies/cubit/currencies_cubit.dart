import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spending_repository/spending_repository.dart';

export 'package:flutter_bloc/flutter_bloc.dart';

part 'currencies_cubit.freezed.dart';
part 'currencies_state.dart';

class CurrenciesCubit extends Cubit<CurrenciesState> {
  CurrenciesCubit({
    required SpendingRepository spendingRepository,
    this.selectedId,
  })  : _spendingRepository = spendingRepository,
        super(const CurrenciesState()) {
    _currenciesSubscription =
        _spendingRepository.currenciesStream.listen((currencies) {
      emit(state.copyWith(
        currencies: currencies,
      ));
    });
  }
  final String? selectedId;
  final SpendingRepository _spendingRepository;
  late StreamSubscription<List<Currency>> _currenciesSubscription;

  @override
  Future<void> close() {
    _currenciesSubscription.cancel();
    return super.close();
  }
}
