import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geetha/bloc/bloc/increment_bloc.dart';

class Block extends StatelessWidget {
  const Block({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multiple FAB example'),
      ),
      body: Center(
        child: BlocBuilder<IncrementBloc, int>(
          builder: (context, state) {
            return Text(
              'Counter: $state',
              style: const TextStyle(fontSize: 30),
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () =>
                context.read<IncrementBloc>().add(CounterIncrementPressed()),
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () => 
            context.read<IncrementBloc>().add(CounterDecrementPressed()),

            
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
