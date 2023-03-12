import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
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
            itemBuilder: (BuildContext context, int index) {
              return Container(
                color: Color.fromARGB(255, 239, 214, 125),
                height: 50,
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      child: Text(
                        'item 1',
                        style:
                            TextStyle(fontSize: 25, fontWeight: FontWeight.bold ,fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
