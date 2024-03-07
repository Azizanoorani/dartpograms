 import 'package:flutter/material.dart';
import 'package:pogram8/screens/Images.dart';
void main(){
  runApp(MyApp());
}
 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Images(),
    );
  }
}