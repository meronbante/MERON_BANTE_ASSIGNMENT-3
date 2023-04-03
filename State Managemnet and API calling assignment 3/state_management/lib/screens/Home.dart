import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/screens/itemview.dart';

import '../bloc/item_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemBloc, ItemState>(
      builder: (context, state) {
        if (state is ItemInitial) {
          BlocProvider.of<ItemBloc>(context).add(LoadItemCounter());
        }
        if (state is ItemLoaded) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is ItemSuccess) {
          return Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/second');
                    },
                    icon: const Icon(Icons.history))
              ],
              title: Text('Home'),
              backgroundColor: Colors.amber,
            ),
            body: Container(
              height: 600,
              width: 500,
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: state.items.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Itemview(
                      itemName: state.items[index].itemName,
                      itemID: state.items[index].itemID,
                      itemPrice: state.items[index].itemPrice,
                      itemImage: state.items[index].itemImage,
                    );
                  }),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add),
            ),
          );
        } else {
          return Text('error');
        }
      },
    );
  }
}
