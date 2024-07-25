// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'shopping_event.dart';
part 'shopping_state.dart';

class ShoppingBloc extends Bloc<ShoppingEvent, List<int>> {
  ShoppingBloc() : super([]) {
    on<To_add>((event, emit) {
      final items = [...state];
      if (items.contains(event.index)) {
        items.remove(event.index);
      } else {
        items.add(event.index);
      }
      print('items:${items} ');
      emit(items);
    });
    on<To_remove>((event, emit) {
      final items = [...state];
      print(' remove items: $items');
      if (items.contains(event.index)) {
        items.remove(event.index);
      }

      print(' remove itemssss: $items');
      emit(items);
    });
    // on<Roja>((event,emit) => emit(false));    // TODO: implement event handler
  }
}
