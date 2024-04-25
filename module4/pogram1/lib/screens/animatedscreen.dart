import 'package:flutter/material.dart';

class animatedscreen extends StatefulWidget {
  const animatedscreen({super.key});

  @override
  State<animatedscreen> createState() => _animatedscreenState();
}

class _animatedscreenState extends State<animatedscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Animated"),),
      body: Container(),
    );
  }
}