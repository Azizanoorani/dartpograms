import'package:flutter/material.dart';
//import 'package:pogram9/main.dart';

class colorsscreen extends StatefulWidget {
  const colorsscreen({super.key});

  @override
  State<colorsscreen> createState() => _colorsscreenState();
}

class _colorsscreenState extends State<colorsscreen> {
  
  Color _selectedColor = Colors.white;
    
  void _changeColor(Color color) {
    setState(() {
      color = _selectedColor;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _selectedColor,
      body: Center(
        child: Column(
          children:<Widget> [
            RadioListTile(
              title: Text('black'),
              value: Colors.black,
              groupValue: _selectedColor,
              onChanged:(Color? value){
                setState(() {
                  _selectedColor = value!;
                });
              }),
            RadioListTile(
              title:Text ('purple'),
              value: Colors.purple,
              groupValue: _selectedColor,
              onChanged:(Color? value){
                setState(() {
                  _selectedColor = value!;
                });
              }),
            RadioListTile(
              title: Text('indigo'),
              value: Colors.indigo,
              groupValue: _selectedColor,
             onChanged:(Color? value){
                setState(() {
                  _selectedColor = value!;
                });
              }),
            RadioListTile(
              title: Text('pink'),
              value: Colors.pink,
              groupValue: _selectedColor,
             onChanged:(Color? value){
                setState(() {
                  _selectedColor = value!;
                });
              }),
            
          ],
        ),
      ),
    );
  }
}