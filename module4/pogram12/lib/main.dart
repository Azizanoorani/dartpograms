import 'package:flutter/material.dart';
import 'package:pogram12/screen/homescreen.dart';

void main()
{
  runApp(Homepage());
}
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:HomeScreen(),
    );
  }
}