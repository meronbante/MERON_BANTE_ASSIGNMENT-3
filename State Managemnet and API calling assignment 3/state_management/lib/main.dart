import 'package:flutter/material.dart';
import 'package:state_management/screens/history.dart';
import 'package:state_management/screens/home.dart';
import 'package:state_management/screens/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const Home(
              
              ),
          '/second': (context) => const History(
             
              ),
          '/third': (context) => const Profile(
              
              )
        });
  }
}
