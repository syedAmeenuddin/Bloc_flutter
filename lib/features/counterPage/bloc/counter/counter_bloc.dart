import 'package:learnbloc/features/counterPage/bloc/bloc_imports.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(count: 0)) {
    on<CounterIncreamentEvent>(((event, emit) {
      emit(CounterState(count: event.incVal));
    }));
    on<CounterDecreamentEvent>(((event, emit) {
      emit(CounterState(count: state.count - 1));
    }));
  }
}
