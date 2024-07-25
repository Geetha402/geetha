// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'increment_event.dart';
part 'increment_state.dart';

class IncrementBloc extends Bloc<IncrementEvent, int> {
  IncrementBloc() : super(0) {
    on<CounterIncrementPressed>((event, emit) => emit(state + 1));
    on<CounterDecrementPressed>((event, emit) => emit(state - 1));

    // TODO: implement event handler
  }
}
