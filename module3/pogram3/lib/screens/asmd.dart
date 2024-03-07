import 'package:flutter/material.dart';

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  TextEditingController _firstnumber=TextEditingController();
  TextEditingController _secondnumber=TextEditingController();
  String _selected ='';
  String _result='';

  void showproduct(){
    int firstnumber=int.parse(_firstnumber.text);
    int secondnumber =int.parse(_secondnumber.text);
    int result = 0 ;
    
    switch(_selected){
      case 'Addition':
      result= firstnumber + secondnumber;
      break;

      case 'Subtraction':
      result=firstnumber-secondnumber;
      break;
      
      case 'Multipilcation':
      result=firstnumber*secondnumber;
      break;

      case 'Divison':
      result=firstnumber%secondnumber;
      break;
    }
     setState(() {
      _result = 'Result: $result';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        TextField(
              controller: _firstnumber,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  ),
                  hintText: "Enter your First Number"
                  )
            ),
            SizedBox(height: 18),
            TextField(
              controller: _secondnumber,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  ),
                  hintText: "Enter your Second Number"
                  )
            ),
            SizedBox(height: 12),
            Radio(value: 'Addition', groupValue: _selected, onChanged: (value) {
                    setState(() {
                      _selected = value.toString();
                    });
                  },
                ),
                Text('Addition'),
                Radio(value: 'Subtraction', groupValue: _selected, onChanged: (value) {
                    setState(() {
                      _selected = value.toString();
                    });
                  },
                ),
                Text('Subtraction'),
                Radio(value: 'Multipilcation', groupValue: _selected, onChanged: (value) {
                    setState(() {
                      _selected = value.toString();
                    });
                  },
                ),
                Text('Multiplicaton'),
                Radio(value: 'Divison', groupValue: _selected, onChanged: (value) {
                    setState(() {
                      _selected = value.toString();
                    });
                  },
                ),
                Text('Divison'),

                ElevatedButton(onPressed:(){
                 showproduct();
                }, child: Text('Sumbit')),
                Text(_result)
        
      ]),
    
    );
  }
}