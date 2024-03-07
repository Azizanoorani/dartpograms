import 'package:flutter/material.dart';
import 'package:pogram2/screens/numbers.dart';

void main(){
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Numbers(),
    );

  }
}