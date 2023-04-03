part of 'item_bloc.dart';

abstract class ItemEvent extends Equatable {
  const ItemEvent();

  @override
  List<Object> get props => [];
}

class LoadItemCounter extends ItemEvent {
  const LoadItemCounter();

  @override
  List<Object> get props => [];
}

class AddItem extends ItemEvent {
  final int currentid;


  const AddItem( {required this.currentid} );
  @override
  List<Object> get props => [];
}

class RemoveItem extends ItemEvent {
 final int currentid;

  const RemoveItem( {required this.currentid} );
  @override
  List<Object> get props => [];

}
