part of 'shopping_bloc.dart';

@immutable
sealed class ShoppingEvent {}
class To_add extends  ShoppingEvent {
  final int index;

  To_add({required this.index});
}
class To_remove extends  ShoppingEvent{
  final int index;
  To_remove({required this.index});
} 
class ToggleItemState extends ShoppingEvent {
  final int index;

   ToggleItemState(this.index);


}