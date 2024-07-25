part of 'shopping_bloc.dart';

@immutable
class ShoppingState {
  final List<bool> itemStates;

  const ShoppingState(this.itemStates);
  


  factory ShoppingState.initial() {
    return ShoppingState(List<bool>.generate(10, (index) => false));
  }

  ShoppingState copyWith({List<bool>? itemStates}) {
    return ShoppingState(itemStates ?? this.itemStates);
  }
}
