import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class Item_list extends Equatable {
  String itemName;
  String itemID;
  double itemPrice;

  @override
  List<Object?> get props => [itemName,itemID, itemPrice];

  Item_list({
    required this.itemName,
    required this.itemID,
    required this.itemPrice,
  });
  factory Item_list.fromJson(Map<String, dynamic> parsedJson) {
    return Item_list(
      itemName: parsedJson['itemName'],
      itemID: parsedJson['itemID'],
      itemPrice: parsedJson['itemPrice']
    );
  }
}
// static List ItemList(List items) {
//     List parsedItems = [];
//     for (var i = 0; i < items.length; i++) {
//       parsedItems.add(Item.fromJson(items[i]));
//     }
//     return parsedItems;
//   }




//   static List<Item_list> items = [
//     Item_list(id: '1', name: 'veggi', image: Image.network('fer'))
//   ];
// }






// import 'package:flutter/material.dart';
// import 'package:equatable/equatable.dart';

// class Item_list extends Equatable {
//   final String name;
//   final String id;
//   final Image image;

//   const Item_list({required this.id, required this.name, required this.image});

//   // TODO: implement props
//   @override
//   List<Object?> get props => [name, id, image];


