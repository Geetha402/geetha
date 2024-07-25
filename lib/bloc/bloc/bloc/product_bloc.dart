// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:geetha/Shopping/model.dart';
import 'package:geetha/Shopping/product_repository.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'product_event.dart';
part 'product_state.dart';


class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository repository;

  ProductBloc(this.repository) : super(ProductInitial()) {
    on<FetchProducts>(_onFetchProducts);
    on<AddToCart>(_onAddToCart);
    on<RemoveFromCart>(_onRemoveFromCart);
  }

  void _onFetchProducts(FetchProducts event, Emitter<ProductState> emit) async {
    emit(ProductLoading());
    try {
      final products = await repository.fetchProducts();
      emit(ProductLoaded(products: products, cart: []));
    } catch (e) {
      emit(ProductError(e.toString()));
    }
  }

  void _onAddToCart(AddToCart event, Emitter<ProductState> emit) {
    if (state is ProductLoaded) {
      final loadedState = state as ProductLoaded;
      final updatedCart = List<int>.from(loadedState.cart)..add(event.productId);
      emit(ProductLoaded(products: loadedState.products, cart: updatedCart));
    }
  }

  void _onRemoveFromCart(RemoveFromCart event, Emitter<ProductState> emit) {
    if (state is ProductLoaded) {
      final loadedState = state as ProductLoaded;
      final updatedCart = List<int>.from(loadedState.cart)..remove(event.productId);
      emit(ProductLoaded(products: loadedState.products, cart: updatedCart));
    }
  }
}
