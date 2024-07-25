part of 'product_bloc.dart';

@immutable
abstract class ProductEvent {}

class FetchProducts extends ProductEvent {}

class AddToCart extends ProductEvent {
  final int productId;

  AddToCart({required this.productId});
}

class RemoveFromCart extends ProductEvent {
  final int productId;

  RemoveFromCart({required this.productId});
}
