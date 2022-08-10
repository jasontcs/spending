import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:spending_repository/spending_repository.dart';

part 'record_event.dart';
part 'record_state.dart';

class RecordBloc extends Bloc<RecordEvent, RecordState> {
  RecordBloc({required SpendingRepository spendingRepository})
      : _spendingRepository = spendingRepository,
        super(RecordState(formKey: GlobalKey<FormBuilderState>())) {
    on<RecordCategoriesUpdated>(_onCategoriesUpdated);
    on<RecordCurrenciesUpdated>(_onCurrenciesUpdated);
    on<RecordPeopleUpdated>(_onPeopleUpdated);
    on<RecordPageEntered>(_onPageEntered);
    // on<RecordPersonSelected>(_onPersonSelected);

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

  void _onPageEntered(
    RecordPageEntered event,
    Emitter<RecordState> emit,
  ) {
    if (event.recordId != null && event.dateString != null)
      throw Exception('event.recordId != null && event.dateString != null');

    final record = event.recordId != null
        ? _spendingRepository.getRecord(event.recordId!)
        : Record(
            amount: 0,
            currency: _spendingRepository.currencies.first,
            category: _spendingRepository.categories.first,
            person: _spendingRepository.people.first,
            receipts: [],
            remarks: '',
            dateTime: event.dateString != null
                ? DateTime.parse(event.dateString!)
                : DateTime.now(),
          );

    emit(state.copyWith(record: record));

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

  // void _onPersonSelected(
  //   RecordPersonSelected event,
  //   Emitter<RecordState> emit,
  // ) {
  //   final person = _spendingRepository.getPerson(event.person);
  //   if (person != null) {
  //     emit(state.copyWith(
  //         unsavedRecord: state.unsavedRecord?.copyWith(person: person)));
  //   }
  // }
}
