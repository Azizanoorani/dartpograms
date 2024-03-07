import 'package:flutter/material.dart';
class checkboxs extends StatefulWidget {
  const checkboxs({super.key});

  @override
  State<checkboxs> createState() => _checkboxState();
}

class _checkboxState extends State<checkboxs> {
  bool isChecked= false;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(children: [
          Checkbox(value: isChecked, onChanged: (value){
            setState(() {
              isChecked=value!;
            });
          }),
          SizedBox(height: 16),
          if(isChecked)
          Text('My Name is Aziza')
        ]),
      ) ,
    );
  }
}