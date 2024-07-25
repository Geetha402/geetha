import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geetha/bloc/bloc/bloc/shopping_bloc.dart';

class New_scren extends StatelessWidget {
  const New_scren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('My Cart'),
        ),
        body: BlocBuilder<ShoppingBloc, List<int>>(
          builder: (context, state) {
            print('state:${state} ');

            return ListView.builder(
                itemCount: state.length,
                itemBuilder: (context, index) {
                  final productID = state[index] + 1;
                  return ListTile(
                    title: Text('Product $productID'),
                    trailing: IconButton(
                      icon: Icon(Icons.remove_circle,color:Colors.red),
                      onPressed: () {
                        print('ontap');
                        context.read<ShoppingBloc>().add(To_remove(index: state[index]));
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Removed from cart'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      },
                    ),
                  );
                });
            // (child: Text(state.length.toString()));
          },
        ));
  }
}
