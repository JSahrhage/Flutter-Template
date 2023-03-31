import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter_event.dart';
part 'counter_state.dart';
part 'counter_bloc.freezed.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const Initial(count: 42)) {
    on<CounterEvent>(
      (events, emit) {
        events.map(
          add: (_) => _add(emit),
          subtract: (_) => _subtract(emit),
        );
      },
    );
  }
  void _add(Emitter<CounterState> emit) {
    emit(
      state.copyWith(
        count: state.count + 1,
      ),
    );
  }

  void _subtract(Emitter<CounterState> emit) {
    emit(
      state.copyWith(
        count: state.count - 2,
      ),
    );
  }
}
