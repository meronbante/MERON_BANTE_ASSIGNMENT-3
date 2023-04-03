import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class Item_list extends Equatable {
  String itemName;
  int itemID;
  num itemPrice;
  String itemImage;

  @override
  List<Object?> get props => [itemName, itemID, itemPrice, itemImage];

  Item_list({
    required this.itemName,
    required this.itemID,
    required this.itemPrice,
    required this.itemImage,
  });
  factory Item_list.fromJson(Map<String, dynamic> parsedJson) {
    return Item_list(
        itemName: parsedJson['title'],
        itemID: parsedJson['id'],
        itemPrice: parsedJson['price'],
        itemImage: parsedJson['image']);
  }
  static List returnItemlist(List items) {
    List itemlist = [];
    for (var i = 0; i < items.length; i++) {
      itemlist.add(Item_list.fromJson(items[i]));
    }
    return itemlist;
  }
}
