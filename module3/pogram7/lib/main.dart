 import 'package:flutter/material.dart';
import 'package:pogram7/screens/checkbox.dart';
void main(){
  runApp(MyApp());
}
 class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: checkboxs(),
    );
  }
}