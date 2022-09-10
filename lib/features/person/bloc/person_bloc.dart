import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spending_repository/spending_repository.dart';
import 'package:collection/collection.dart';
export 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/common.dart';

part 'person_state.dart';
part 'person_event.dart';
part 'person_bloc.freezed.dart';

class PersonBloc extends Bloc<PersonEvent, PersonState> {
  PersonBloc({
    required SpendingRepository spendingRepository,
  })  : _spendingRepository = spendingRepository,
        super(PersonState()) {
    on<PersonItemLoaded>(_onItemLoaded);
    on<PersonFormEdited>(_onFormEdited);
    on<PersonFormSaved>(_onFormSaved);
    on<PersonRemoveRequested>(_onRemoveRequested);
  }
  final SpendingRepository _spendingRepository;

  Future<void> _onItemLoaded(
    PersonItemLoaded event,
    Emitter<PersonState> emit,
  ) async {
    if (event.cid != null) {
      emit(state.copyWith(status: AppFormStatus.fetching));
      final result = await _spendingRepository.getPerson(event.cid!);
      emit(state.copyWith(person: result, status: AppFormStatus.idle));
    } else {
      emit(state.copyWith(
        person: Person(
          title: '',
        ),
        status: AppFormStatus.idle,
      ));
    }
  }

  void _onFormEdited(
    PersonFormEdited event,
    Emitter<PersonState> emit,
  ) {
    emit(state.copyWith(status: AppFormStatus.unsaved));
  }

  Future<void> _onFormSaved(
    PersonFormSaved event,
    Emitter<PersonState> emit,
  ) async {
    emit(state.copyWith(status: AppFormStatus.posting));
    if (event.person.id == null) {
      final result = await _spendingRepository.addPerson(event.person);
      emit(state.copyWith(person: result, status: AppFormStatus.idle));
    } else {
      final result =
          await _spendingRepository.updatePerson(state.person!, event.person);
      emit(state.copyWith(person: result, status: AppFormStatus.idle));
    }
  }

  Future<void> _onRemoveRequested(
    PersonRemoveRequested event,
    Emitter<PersonState> emit,
  ) async {
    emit(state.copyWith(status: AppFormStatus.posting));
    final result = await _spendingRepository.deletePerson(state.person!);
    emit(state.copyWith(person: result, status: AppFormStatus.idle));
  }
}
