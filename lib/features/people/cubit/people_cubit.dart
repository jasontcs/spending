import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:spending_repository/spending_repository.dart';

part 'people_state.dart';
part 'people_cubit.freezed.dart';

class PeopleCubit extends Cubit<PeopleState> {
  PeopleCubit({required SpendingRepository spendingRepository})
      : _spendingRepository = spendingRepository,
        super(PeopleState()) {
    _peopleSubscription = _spendingRepository.peopleStream.listen((people) {
      emit(state.copyWith(people: people));
    });
  }
  final SpendingRepository _spendingRepository;
  late StreamSubscription<List<Person>> _peopleSubscription;

  @override
  Future<void> close() {
    _peopleSubscription.cancel();
    return super.close();
  }
}
