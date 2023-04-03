import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:state_management/ApiService.dart';

import '../models/Item_list.dart';

part 'item_event.dart';
part 'item_state.dart';

class ItemBloc extends Bloc<ItemEvent, ItemState> {
  final apiService = ApiServiceProvider();
  ItemBloc() : super(ItemInitial()) {
    List<dynamic>? items;
    Map<int, int> cart_items = {};

    on<LoadItemCounter>((event, emit) async {
      emit(ItemLoaded());
      items = await apiService.fetchActivity();
      cart_items = {for (var item in items!) item.id: 0};
      emit(ItemSuccess(items: items!));
    });

    on<AddItem>((event, emit) {
      emit(ItemInitial());
      for (var item_id in cart_items.keys) {
        if (item_id == event.currentid) {
          cart_items = 
        }
      }
    });

    on<RemoveItem>((event, emit) {});
  }
}
