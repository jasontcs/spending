import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spending_repository/spending_repository.dart';

import '../record.dart';

part 'record_event.dart';
part 'record_state.dart';
part 'record_bloc.freezed.dart';

class RecordBloc extends Bloc<RecordEvent, RecordState> {
  RecordBloc({required SpendingRepository spendingRepository})
      : _spendingRepository = spendingRepository,
        super(RecordState(formKey: GlobalKey<FormBuilderState>())) {
    on<RecordCategoriesUpdated>(_onCategoriesUpdated);
    on<RecordCurrenciesUpdated>(_onCurrenciesUpdated);
    on<RecordPeopleUpdated>(_onPeopleUpdated);
    on<RecordPageEntered>(_onPageEntered);
    on<RecordFormEditted>(_onFormEditted);
    on<RecordFormSaved>(_onFormSaved);
    on<RecordRemoveRequested>(_onRemoveRequested);

    _categoriesSubscription =
        _spendingRepository.categoriesStream.listen((categories) {
      add(RecordCategoriesUpdated(categories));
    });
    _currenciesSubscription =
        _spendingRepository.currenciesStream.listen((currencies) {
      add(RecordCurrenciesUpdated(currencies));
    });
    _peopleSubscription = _spendingRepository.peopleStream.listen((people) {
      add(RecordPeopleUpdated(people));
    });
  }
  final SpendingRepository _spendingRepository;
  late StreamSubscription<List<Category>> _categoriesSubscription;
  late StreamSubscription<List<Currency>> _currenciesSubscription;
  late StreamSubscription<List<Person>> _peopleSubscription;

  @override
  Future<void> close() {
    _categoriesSubscription.cancel();
    _currenciesSubscription.cancel();
    _peopleSubscription.cancel();
    return super.close();
  }

  void _onCategoriesUpdated(
    RecordCategoriesUpdated event,
    Emitter<RecordState> emit,
  ) {
    emit(state.copyWith(categories: event.categories));
  }

  void _onCurrenciesUpdated(
    RecordCurrenciesUpdated event,
    Emitter<RecordState> emit,
  ) {
    emit(state.copyWith(currencies: event.currencies));
  }

  void _onPeopleUpdated(
    RecordPeopleUpdated event,
    Emitter<RecordState> emit,
  ) {
    emit(state.copyWith(people: event.people));
  }

  Future<void> _onPageEntered(
    RecordPageEntered event,
    Emitter<RecordState> emit,
  ) async {
    if (event.recordId != null && event.dateString != null)
      throw Exception('event.recordId != null && event.dateString != null');

    emit(state.copyWith(status: RecordStatus.fetching));
    final record = event.recordId != null
        ? await _spendingRepository.getRecord(event.recordId!)
        : Record(
            amount: 0,
            currency: (await _spendingRepository.currencies).first,
            category: (await _spendingRepository.categories).first,
            person: (await _spendingRepository.people).first,
            receipts: [],
            remarks: '',
            dateTime: event.dateString != null
                ? DateTime.parse(event.dateString!)
                : DateTime.now(),
          );

    emit(state.copyWith(
      record: record,
      status: RecordStatus.idle,
    ));

    if (event.dateString != null) {
      emit(
        state.copyWith(
          record: state.record!.copyWith(
            dateTime: DateTime.parse(event.dateString!),
          ),
        ),
      );
    }
  }

  void _onFormEditted(
    RecordFormEditted event,
    Emitter<RecordState> emit,
  ) {
    emit(state.copyWith(status: RecordStatus.unsaved));
  }

  Future<void> _onFormSaved(
    RecordFormSaved event,
    Emitter<RecordState> emit,
  ) async {
    final record = event.record;
    emit(state.copyWith(record: record, status: RecordStatus.posting));
    late final Record result;
    if (record.id == null)
      result = await _spendingRepository.addRecord(record);
    else
      result = await _spendingRepository.updateRecord(state.record!, record);
    emit(state.copyWith(record: result, status: RecordStatus.idle));
    emit(state.copyWith(formKey: GlobalKey<FormBuilderState>()));
  }

  Future<void> _onRemoveRequested(
    RecordRemoveRequested event,
    Emitter<RecordState> emit,
  ) async {
    final record = state.record;
    emit(state.copyWith(status: RecordStatus.posting));
    final result = await _spendingRepository.deleteRecord(record!);
    emit(state.copyWith(record: result, status: RecordStatus.idle));
  }
}
