import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spending_repository/spending_repository.dart';

part 'people_state.dart';
part 'people_event.dart';

class PeopleBloc extends Bloc<PeopleEvent, PeopleState> {
  PeopleBloc({required SpendingRepository spendingRepository})
      : _spendingRepository = spendingRepository,
        super(PeopleState()) {
    on<PeopleItemsChanged>(_onItemsChanged);
    _peopleSubscription = _spendingRepository.peopleStream.listen((people) {
      add(PeopleItemsChanged(people));
    });
  }
  final SpendingRepository _spendingRepository;
  late StreamSubscription<List<Person>> _peopleSubscription;

  @override
  Future<void> close() {
    _peopleSubscription.cancel();
    return super.close();
  }

  void _onItemsChanged(
    PeopleItemsChanged event,
    Emitter<PeopleState> emit,
  ) {
    emit(state.copyWith(people: event.people));
  }
}
