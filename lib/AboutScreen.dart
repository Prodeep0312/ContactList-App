import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
 /* late final String name;
  late final int age;
  AboutScreen(String name, int age)
  {
    this.name=name;
    this.age=age;
  }
  //const AboutScreen({Key? key}) : super(key: key);*/

  @override
  Widget build(BuildContext context) {
    final args=ModalRoute.of(context)!.settings.arguments as Map;
    final name=args['name'];
    final phone=args['phone'];
    final email=args['email'];
    return Scaffold(
      appBar: AppBar(
        title: Text('$name'),

      ),
      body: Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Text('$email'),
            SizedBox(height: 20),
            Text('$phone'),

          ],
        ),
      ),
      floatingActionButton:FloatingActionButton(
        child: Icon(Icons.call),
        onPressed: ()async{

          print('clicked');
          final _url = 'tel:$phone';
          await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';
        },
      ),
    );
  }
}




