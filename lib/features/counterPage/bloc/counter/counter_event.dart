class CounterEvent {}

class CounterIncreamentEvent extends CounterEvent {
  final int incVal;

  CounterIncreamentEvent({required this.incVal});
}

class CounterDecreamentEvent extends CounterEvent {}
