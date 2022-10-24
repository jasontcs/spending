import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spending_repository/spending_repository.dart';

export 'package:flutter_bloc/flutter_bloc.dart';

part 'people_cubit.freezed.dart';
part 'people_state.dart';

class PeopleCubit extends Cubit<PeopleState> {
  PeopleCubit({
    required SpendingRepository spendingRepository,
    this.selectedId,
  })  : _spendingRepository = spendingRepository,
        super(const PeopleState()) {
    _peopleSubscription = _spendingRepository.peopleStream.listen((people) {
      emit(state.copyWith(
        people: people,
        selected: people.singleWhereOrNull((person) => person.id == selectedId),
      ));
    });
  }
  final String? selectedId;
  final SpendingRepository _spendingRepository;
  late final StreamSubscription<List<Person>> _peopleSubscription;

  @override
  Future<void> close() {
    _peopleSubscription.cancel();
    return super.close();
  }
}
