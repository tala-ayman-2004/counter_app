import 'package:counter_app/features/domain/useecases/dec_count.dart';
import 'package:counter_app/features/domain/useecases/inc_count.dart';
import 'package:counter_app/features/domain/useecases/reset_count.dart';
import 'package:counter_app/features/peresentation/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  final IncrementCounter incrementCounter;
  final DecrementCounter decrementCounter;
  final ResetCounter resetCounter;

  CounterCubit(
    this.incrementCounter,
    this.decrementCounter,
    this.resetCounter,
  ) : super(CounterInitial());

  void increment() {
    emit(CounterUpdate(incrementCounter(state.count)));
  }

  void decrement() {
    emit(CounterUpdate(decrementCounter(state.count)));
  }

void reset() {
  emit(CounterUpdate(resetCounter()));
}
}