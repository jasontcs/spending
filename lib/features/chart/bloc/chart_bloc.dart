import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spending_repository/spending_repository.dart';
part 'chart_state.dart';
part 'chart_event.dart';
part 'chart_bloc.freezed.dart';

class ChartBloc extends Bloc<ChartEvent, ChartState> {
  ChartBloc({required SpendingRepository spendingRepository})
      : _spendingRepository = spendingRepository,
        super(ChartState()) {
    on<ChartMonthChanged>(_onMonthChanged);
    on<ChartRecordsChanged>(_onRecordsChanged);
    _recordsSubscription = _spendingRepository.recordsStream.listen((records) {
      add(ChartRecordsChanged(records));
    });
  }
  final SpendingRepository _spendingRepository;
  late StreamSubscription<List<Record>> _recordsSubscription;

  void _onMonthChanged(
    ChartMonthChanged event,
    Emitter<ChartState> emit,
  ) async {
    emit(state.copyWith(month: event.month));
  }

  void _onRecordsChanged(
    ChartRecordsChanged event,
    Emitter<ChartState> emit,
  ) async {
    emit(state.copyWith(records: event.records));
  }

  @override
  Future<void> close() {
    _recordsSubscription.cancel();
    return super.close();
  }
}
