import 'package:bloc/bloc.dart';
import 'package:crypto_app/features/home_features/crypto_details/domain/entities/interval_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'interval_event.dart';
part 'interval_state.dart';
part 'interval_bloc.freezed.dart';

class IntervalBloc extends Bloc<IntervalEvent, IntervalState> {
  IntervalBloc() : super(_Data(IntervalEntity.day())) {
    on<_ChangeInterval>(_onChangeInterval);
  }

  // Function to change interval
  void _onChangeInterval(_ChangeInterval event, Emitter<IntervalState> emit) {
    emit(IntervalState.data(event.interval));
  }
}
