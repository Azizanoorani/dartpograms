import 'package:flutter/material.dart';

class seekbar extends StatefulWidget {
  const seekbar({super.key});

  @override
  State<seekbar> createState() => _seekbarState();
}

class _seekbarState extends State<seekbar> {
  double redcolor = 100.0;
  double yellowcolor=100.0;
  double greycolor=100.0;
  Color? _selectedColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Seek bar example") ,),
      body: Container(
        // color: ,
        child: Column( 
          children: [
            Slider(value: redcolor, onChanged: (value)
            {
              setState(() {
                redcolor = value ;
              });
            },
            //activeColor: Colors.amber,
            //inactiveColor: Colors.black,
            //thumbColor: Colors.black26,
            min: 0.0,
                max: 255.0,
                divisions: 255,
                label: 'Red: $redcolor',
              ),
              SizedBox(height: 60),
              Slider(value: greycolor, onChanged: (value)
            {
              setState(() {
                greycolor= value ;
              });
            },
            //activeColor: Colors.amber,
            //inactiveColor: Colors.black,
            //thumbColor: Colors.black26,
            min: 0.0,
                max: 255.0,
                divisions: 255,
                label: 'Grey: $greycolor',
              ),
              SizedBox(height: 60),
              Slider(value: yellowcolor, onChanged: (value)
            {
              setState(() {
                yellowcolor= value ;
              });
            },
            //activeColor: Colors.amber,
            //inactiveColor: Colors.black,
            //thumbColor: Colors.black26,
            min: 0.0,
                max: 255.0,
                divisions: 255,
                label: 'Yellow: $yellowcolor',
              ),
          ],
        ),
      ),
    );
  }
}