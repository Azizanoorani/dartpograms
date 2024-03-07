import 'package:flutter/material.dart';
import 'package:pogram4/screens/screen.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BackgroundChangeScreen(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}