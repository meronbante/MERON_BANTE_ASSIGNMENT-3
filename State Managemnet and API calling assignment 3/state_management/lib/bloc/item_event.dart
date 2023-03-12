part of 'item_bloc.dart';

abstract class ItemEvent extends Equatable {
  const ItemEvent();

  @override
  List<Object> get props => [];
}

class LoadItemCounter extends ItemEvent {}

class AddItem extends ItemEvent {
  final Item_list items;

  const AddItem( this.items);
  @override
  List<Object> get props => [items];
}

class RemoveItem extends ItemEvent {
  final Item_list items;

  const RemoveItem( this.items);
  @override
  List<Object> get props => [items];

}
