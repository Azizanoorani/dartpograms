import 'package:flutter/material.dart';
import 'package:pogram9/screen/logoutscreen.dart';

void main()
{
  runApp(Homepage());
}
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:logoutscreen(),
    );
  }
}