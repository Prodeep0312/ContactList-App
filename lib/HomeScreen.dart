import 'package:flutter/material.dart';
import './AboutScreen.dart';
class HomeScreen extends StatelessWidget {
  final List<Map> users=[

    { "name":"Rajesh Sharma","phone":9876336569,"email":'raj@gmail.com'},
    {"name":"Shreyash chopra","phone":9999005954,"email":'srych@gmail.com'},

  ];
 // const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact App'),

      ),
      body: ListView.builder(itemBuilder: (context,index){

        return Card(
          child: ListTile(
            onTap: (){
         Navigator.pushNamed(context, '/about',arguments: users[index]);
            },
            leading: Icon(Icons.person),
            title: Text(users[index]['name']),),
          elevation: 3,
        );

      },
      itemCount: users.length,
      )
    );
  }
}

