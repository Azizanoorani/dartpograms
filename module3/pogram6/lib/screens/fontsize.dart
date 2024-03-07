import 'package:flutter/material.dart';
class fontsize extends StatefulWidget {
  const fontsize({super.key});

  @override
  State<fontsize> createState() => _fontsizeState();
}

class _fontsizeState extends State<fontsize> {
  double fontsize=16.0;
  @override
   void changeFontSize(String action){
    setState(() {
      if (action == 'increase'){
        fontsize +=2.0;
      }
      else if (action == 'decrease'){
        fontsize -=2.0;
      }
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Aziza'
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () =>changeFontSize('increase'),
                  child: Text('+'),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () =>changeFontSize('decrease'),
                  child: Text('-'),
                ),
              ],

            )
          ],
      ),
          ]
        )
      )
    );
  }
}