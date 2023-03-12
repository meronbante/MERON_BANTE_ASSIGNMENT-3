part of 'item_bloc.dart';

abstract class ItemState extends Equatable {
  const ItemState();

  @override
  List<Object> get props => [];
}

class ItemInitial extends ItemState {}

class ItemLoaded extends ItemState {
  final List<Item_list> items;

  const ItemLoaded({required this.items});
  @override
  List<Object> get probs => [items];
}
