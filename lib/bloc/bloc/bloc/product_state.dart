part of 'product_bloc.dart';

@immutable
abstract class ProductState {}

class ProductInitial extends ProductState {}

class ProductLoading extends ProductState {}

class ProductLoaded extends ProductState {
  final List<Product> products;
  final List<int> cart;

  ProductLoaded({required this.products, required this.cart});
}

class ProductError extends ProductState {
  final String message;

  ProductError(this.message);
}
