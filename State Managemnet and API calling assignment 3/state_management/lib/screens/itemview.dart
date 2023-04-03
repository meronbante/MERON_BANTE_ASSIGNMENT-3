import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Itemview extends StatelessWidget {
  String itemName;
  int itemID;
  num itemPrice;
  String itemImage;

  Itemview({
    super.key,
    required this.itemName,
    required this.itemID,
    required this.itemPrice,
    required this.itemImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Image.network(this.itemImage),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  this.itemName,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text('$itemPrice',
                    style: TextStyle(fontStyle: FontStyle.italic),)
              ],
            ),
          ),
          IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '');
                    },
                    icon: const Icon(Icons.shopping_cart))  
        ],
      ),
    );
  }
}
