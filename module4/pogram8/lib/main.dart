import 'package:flutter/material.dart';
import 'package:pogram8/screen/clickevent.dart';
void main()
{
  runApp(Homepage());
}
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Clickevent(),
    );
  }
}