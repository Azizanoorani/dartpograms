import 'package:flutter/material.dart';
import 'package:pogram13/screen/screens.dart';


class screen extends StatefulWidget {
  const screen({super.key});

  @override
  State<screen> createState() => screenState();
}

class screenState extends State<screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>Screens()), 
            );
          }, 
          child: Text('Go to Second Screen')),
      ),
    );
  }
}