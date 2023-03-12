import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';

class Item_list extends Equatable {
  final String name;
  final String id;
  final Image image;

  const Item_list({required this.id, required this.name, required this.image});

  // TODO: implement props
  @override
  List<Object?> get props => [name, id, image];

  static List<Item_list> items = [
    Item_list(id: '1', name: 'veggi', image: Image.network('fer'))
  ];
}
