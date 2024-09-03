import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geetha/bloc/bloc/bloc/shopping_bloc.dart';
import 'package:geetha/bloc/bloc/bloc/product_bloc.dart';

class Mycart extends StatelessWidget {
  const Mycart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Cart'),
      ),
      body: BlocBuilder<ShoppingBloc, List<int>>(
        builder: (context, cartState) {
          return BlocBuilder<ProductBloc, ProductState>(
            builder: (context, productState) {
              if (productState is ProductLoaded) {
                final cartProducts = productState.products
                    .where((product) => cartState.contains(product.id))
                    .toList();
                return ListView.builder(
                  itemCount: cartProducts.length,
                  itemBuilder: (context, index) {
                    final product = cartProducts[index];
                    return ListTile(
                      leading: Image.network(product.image),
                      title: Text(product.title),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ID: ${product.id}'),
                          Text('\$${product.price.toString()}'),
                          const SizedBox(height: 5),
                          Text(product.description, maxLines: 2, overflow: TextOverflow.ellipsis),
                        ],
                      ),
                      trailing: IconButton(
                        icon: const Icon(Icons.remove_shopping_cart),
                        onPressed: () {
                          context.read<ShoppingBloc>().add(To_remove(index: product.id));
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Removed from cart'),
                              duration: Duration(seconds: 2),
                            ),
                          );
                        },
                      ),
                    );
                  },
                );
              } else if (productState is ProductLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (productState is ProductError) {
                return Center(child: Text(productState.message));
              } else {
                return const Center(child: Text('No items in the cart'));
              }
            },
          );
        },
      ),
    );
  }
}
