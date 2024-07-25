import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geetha/Shopping/my_cart.dart';
import 'package:geetha/Shopping/product_repository.dart';
import 'package:geetha/bloc/bloc/bloc/product_bloc.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductBloc(ProductRepository())..add(FetchProducts()),        

      // create: (context) => SubjectBloc(),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Fake Store Products'),
          actions: [
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                if (state is ProductLoaded) {
                  return Stack(
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => BlocProvider.value(
                                value: BlocProvider.of<ProductBloc>(context),
                                child: const Mycart(),
                              ),
                            ),
                          );
                        },
                        icon: const Icon(Icons.shopping_cart),
                      ),
                      if (state.cart.isNotEmpty)
                        Positioned(
                          right: 8,
                          top: 8,
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.red,
                            child: Text(
                              state.cart.length.toString(),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                    ],
                  );
                } else {
                  return IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.shopping_cart),
                  );
                }
              },
            ),
          ],
        ),
        body: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            if (state is ProductLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ProductLoaded) {
              return RefreshIndicator(
                onRefresh: () async{
                  BlocProvider.of<ProductBloc>(context).add(FetchProducts());
                  
                },
                child: ListView.builder(
                  itemCount: state.products.length,
                  itemBuilder: (context, index) {
                    final product = state.products[index];
                    final isInCart = state.cart.contains(product.id);
                    return ListTile(
                      leading: Image.network(product.image),
                      title: Text(product.title),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('ID: ${product.id}'),
                          Text('\$${product.price.toString()}'),
                          Text(product.category),
                          const SizedBox(height: 5),
                          Text(product.description,
                              maxLines: 2, overflow: TextOverflow.ellipsis),
                        ],
                      ),
                      trailing: IconButton(
                        icon: isInCart
                            ? const Icon(Icons.remove_shopping_cart)
                            : const Icon(Icons.add_shopping_cart),
                        onPressed: () {
                          if (isInCart) {
                            context
                                .read<ProductBloc>()
                                .add(RemoveFromCart(productId: product.id));
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Removed from cart'),
                                duration: Duration(seconds: 2),
                              ),
                            );
                          } else {
                            context
                                .read<ProductBloc>()
                                .add(AddToCart(productId: product.id));
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Added to cart'),
                                duration: Duration(seconds: 2),
                              ),
                            );
                          }
                        },
                      ),
                    );
                  },
                ),
              );
            } else if (state is ProductError) {
              return Center(child: Text(state.message));
            } else {
              return const Center(
                  child: Text('Press the button to fetch products'));
            }
          },
        ),
      ),
    );
  }
}
