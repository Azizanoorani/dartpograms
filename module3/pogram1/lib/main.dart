import 'package:flutter/material.dart';
import 'package:pogram1/screens/homepage.dart';

void main(){
  runApp(Home_page());
}

class Home_page extends StatelessWidget {
  const Home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homepage()
    );
    
  }
}