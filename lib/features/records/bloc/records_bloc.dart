import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spending_repository/spending_repository.dart';

part 'records_event.dart';
part 'records_state.dart';

class RecordsBloc extends Bloc<RecordsEvent, RecordsState> {
  RecordsBloc({required SpendingRepository spendingRepository})
      : _spendingRepository = spendingRepository,
        super(RecordsState());
  final SpendingRepository _spendingRepository;
}
