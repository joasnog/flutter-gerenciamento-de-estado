import 'package:bloc_app/counter/counter.dart';
import 'package:test/test.dart';
import 'package:bloc_test/bloc_test.dart';

void main() {
  group('CounterBloc', () {
    late CounterBloc counterBloc;

    setUp(() {
      counterBloc = CounterBloc();
    });

    tearDown(() => counterBloc.close());

    test('Initial state is 0', () {
      expect(counterBloc.state, 0);
    });

    blocTest(
      'emits [1] when CounterIncrementPressed event is added',
      build: () => counterBloc,
      act: (bloc) => bloc.add(CounterIncrementPressed()),
      expect: () => [1],
    );

    blocTest(
      'emits [-1] when CounterDecrementPressed event is added',
      build: () => counterBloc,
      act: (bloc) => bloc.add(CounterDecrementPressed()),
      expect: () => [-1],
    );
  });
}
