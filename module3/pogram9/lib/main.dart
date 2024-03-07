import 'package:flutter/material.dart';
import 'package:pogram9/screens/colorsscreen.dart';

void main (){
  runApp(colourchange());
}
class colourchange extends StatelessWidget {
  const colourchange({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: colorsscreen(),
    );
  }
}