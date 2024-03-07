import 'package:flutter/material.dart';
import 'package:pogram13/screens/mainscreen.dart';
void main(){
  runApp(yellowscreen());
}
class yellowscreen extends StatelessWidget {
  const yellowscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: mainscreen(),
    );
  }
}