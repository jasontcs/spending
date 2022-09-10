import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spending_repository/spending_repository.dart';

export 'package:flutter_bloc/flutter_bloc.dart';

part 'records_bloc.freezed.dart';
part 'records_event.dart';
part 'records_state.dart';

class RecordsBloc extends Bloc<RecordsEvent, RecordsState> {
  RecordsBloc({required SpendingRepository spendingRepository})
      : _spendingRepository = spendingRepository,
        super(RecordsState()) {
    on<RecordsItemsChanged>(_onItemsChanged);
    on<RecordsCalendarConfigChanged>(_onCalendarConfigChanged);
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

  void _onCalendarConfigChanged(
    RecordsCalendarConfigChanged event,
    Emitter<RecordsState> emit,
  ) {
    RecordsState state = this.state;
    if (event.config.selectedDate != null)
      state = state.copyWith
          .calendarConfig(selectedDate: event.config.selectedDate);
    if (event.config.focusedDay != null)
      state =
          state.copyWith.calendarConfig(focusedDay: event.config.focusedDay);
    emit(state);
  }
}
