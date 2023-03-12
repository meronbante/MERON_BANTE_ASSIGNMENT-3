import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/third');
          }, icon: const Icon(Icons.perm_identity_rounded))
        ],
        title: Text('History page'),
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
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
      
    );
  }
}
