import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, '/');
          }, icon: const Icon(Icons.home))
        ],
        title: Text('Profile'),
        backgroundColor: Colors.amber,
      ),
      body: Container(
        width: 500,
        height: 500,
        margin: EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 90,
              backgroundColor: Colors.amberAccent,
            ),
            SizedBox(height: 10,),
            Text(
              'name',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5,),
            Text(
              'phone number',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            
          ],
        ),
      ),
    );
  }
}

