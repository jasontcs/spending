import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spending_repository/spending_repository.dart';

part 'records_event.dart';
part 'records_state.dart';

class RecordsBloc extends Bloc<RecordsEvent, RecordsState> {
  RecordsBloc({required SpendingRepository spendingRepository})
      : _spendingRepository = spendingRepository,
        super(RecordsState()) {
    on<RecordsItemsChanged>(_onItemsChanged);
    _recordsSubscription = _spendingRepository.recordsStream.listen((records) {
      add(RecordsItemsChanged(records));
    });
  }

  final SpendingRepository _spendingRepository;
  late StreamSubscription<List<Record>> _recordsSubscription;

  @override
  Future<void> close() {
    _recordsSubscription.cancel();
    return super.close();
  }

  void _onItemsChanged(
    RecordsItemsChanged event,
    Emitter<RecordsState> emit,
  ) {
    emit(state.copyWith(records: event.records));
  }
}
