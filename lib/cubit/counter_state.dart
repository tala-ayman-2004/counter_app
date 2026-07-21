sealed class CounterState {
  final int count;

  CounterState(this.count);
}

class CounterInitial extends CounterState {
  CounterInitial() : super(0);
}

class CounterUpdate extends CounterState {
  CounterUpdate(super.count);
}
