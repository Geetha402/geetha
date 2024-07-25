part of 'increment_bloc.dart';

@immutable
sealed class IncrementEvent {}

class CounterIncrementPressed extends IncrementEvent {}

/// Notifies bloc to decrement state.
class CounterDecrementPressed extends IncrementEvent {}


