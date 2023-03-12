import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../models/Item_list.dart';

part 'item_event.dart';
part 'item_state.dart';

class ItemBloc extends Bloc<ItemEvent, ItemState> {
  ItemBloc() : super(ItemInitial()) {
    on<LoadItemCounter>((event, emit) async {
      await Future<void>.delayed(const Duration(seconds: 1));
      emit(const ItemLoaded(items: <Item_list>[]));
    });

    on<AddItem>((event, emit) {
      if (state is ItemLoaded) {
        final state = this.state as ItemLoaded;
        emit(ItemLoaded(items: List.from(state.items)..add(event.items)));
      }
    });

    on<RemoveItem>((event, emit) {
      if (state is ItemLoaded) {
        final state = this.state as ItemLoaded;
        emit(ItemLoaded(items: List.from(state.items)..remove(event.items)));
      }
    });
  }
}
