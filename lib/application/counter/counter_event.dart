part of 'counter_bloc.dart';

@freezed
class CounterEvent with _$CounterEvent {
  const factory CounterEvent.add() = Add;
  const factory CounterEvent.subtract() = Subtract;
}
