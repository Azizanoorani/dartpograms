import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              padding: EdgeInsets.all(6),
              child: Column(
                children: [
                  // 1st Row
                  _buildRowWithSingleContainer( Color.fromRGBO(24, 67, 54, 1)),
            
                  // 2nd Row
                  _buildRowWithTwoContainers(Colors.pink, Colors.pink),
            
                  // 3rd Row
                  _buildRowWithTwoContainers(Colors.pink, Colors.pink),
            
                  // 4th Row
                  _buildRowWithThreeContainers(Colors.deepPurpleAccent, Colors.deepOrangeAccent, Colors.deepPurpleAccent),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRowWithSingleContainer(Color color) {
    return Container(
      height: 150,
      color: color,
      margin: EdgeInsets.symmetric(vertical: 8),
    );
  }

  Widget _buildRowWithTwoContainers(Color color1, Color color2) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 660,
          height: 125,
          color: color1,
          margin: EdgeInsets.symmetric(vertical: 8),
        ),
        Container(
          width: 660,
          height: 125,
          color: color2,
          margin: EdgeInsets.symmetric(vertical: 8),
        ),
      ],
    );
  }

  Widget _buildRowWithThreeContainers(Color color1, Color color2, Color color3) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 435,
          height: 125,
          color: color1,
          margin: EdgeInsets.symmetric(vertical: 8),
        ),
        Container(
          width: 435,
          height: 125,
          color: color2,
          margin: EdgeInsets.symmetric(vertical: 8),
        ),
        Container(
          width: 435,
          height: 125,
          color: color3,
          margin: EdgeInsets.symmetric(vertical: 8),
        ),
     ],
    );
  }
}