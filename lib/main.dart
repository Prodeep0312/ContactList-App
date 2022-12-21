
import 'package:contact/AboutScreen.dart';
import 'package:flutter/material.dart';
import './HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(

            textTheme: TextTheme(bodyText2: TextStyle(fontSize: 30.0)),
            primarySwatch: Colors.amber),

            initialRoute: '/',
            routes: {
              '/':(context)=>HomeScreen(),
              '/about':(context)=>AboutScreen(),
            },


    );
  }
}

