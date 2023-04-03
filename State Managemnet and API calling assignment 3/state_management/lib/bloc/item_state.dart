part of 'item_bloc.dart';

abstract class ItemState extends Equatable {
  const ItemState();

  @override
  List<Object> get props => [];
}

class ItemInitial extends ItemState {}

class ItemLoaded extends ItemState {}

class ItemSuccess extends ItemState {
  final List<dynamic> items;

  const ItemSuccess({required this.items});
  @override
  List<Object> get probs => [items];
}
