import 'package:flutter/material.dart';
import 'package:pogram12/screens/login.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:loginpage() ,
    );
  }
}