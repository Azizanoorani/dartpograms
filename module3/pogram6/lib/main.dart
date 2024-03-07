 import 'package:flutter/material.dart';
import 'package:pogram6/screens/fontsize.dart';
void main(){
  runApp(sizeexchange());
}
 class sizeexchange extends StatelessWidget {
  const sizeexchange({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: fontsize(),
    );
  }
}