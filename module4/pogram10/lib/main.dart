import 'package:flutter/material.dart';
import 'package:pogram10/screen/listview.dart';


void main()
{
  runApp(Homepage());
}
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Listview(),
    );
  }
}