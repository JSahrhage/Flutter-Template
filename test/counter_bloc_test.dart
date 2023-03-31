import 'package:bloc_test/bloc_test.dart';
import 'package:template/application/counter/counter_bloc.dart';
import 'package:test/test.dart';

void main() {
  group('CounterBloc', () {
    late CounterBloc counterBloc;

    setUp(() {
      counterBloc = CounterBloc();
    });

    test('initial state is 42', () {
      expect(counterBloc.state.count, 42);
    });
    blocTest<CounterBloc, CounterState>(
      'emits [const CounterState(count: 43)] when CounterEvent.add() is added',
      build: () => counterBloc,
      act: (bloc) => bloc.add(const CounterEvent.add()),
      expect: () => [const CounterState(count: 43)],
    );

    blocTest<CounterBloc, CounterState>(
      '''emits [const CounterState(count: 40)] when CounterEvent.subtract() is added''',
      build: () => counterBloc,
      act: (bloc) => bloc.add(const CounterEvent.subtract()),
      expect: () => [const CounterState(count: 40)],
    );
  });
}
