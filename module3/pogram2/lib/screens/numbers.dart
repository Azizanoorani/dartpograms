import 'package:flutter/material.dart';

class Numbers extends StatefulWidget {
  const Numbers({super.key});

  @override
  State<Numbers> createState() => _NumbersState();
  
}


class _NumbersState extends State<Numbers> {
  TextEditingController _firstnumber=TextEditingController();
  TextEditingController _secondnumber=TextEditingController();
  void shownumberss(){
    Navigator.push(
      context,
      MaterialPageRoute(builder:(context)=> shownumbers(
      firstnumber :int.parse(_firstnumber.text),
    secondnumber:int.parse(_secondnumber.text))
    )
    );
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
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
            SizedBox(height: 16),
            ElevatedButton(onPressed: shownumberss, child: Text('Show numbers'))
            //Text("Next Numbers between $_firstnumber and  $_secondnumber")
          ],
        
        
        ),
      ),
    );
  }
}
class shownumbers extends StatelessWidget {
  final int firstnumber;
 final int secondnumber;
  shownumbers({required this.firstnumber,required this.secondnumber});
  
 List<int> _generateNumbers() {
    List<int> numbers = [];
    for(int i = firstnumber; i <= secondnumber; i++) {
      numbers.add(i);
    }
    return numbers;
  }

  @override
  Widget build(BuildContext context) {
    List<int> numbers = _generateNumbers();
    return Scaffold(
       body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Numbers between $firstnumber and $secondnumber:',
              style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: numbers
              .map((numbers) => Text(
                numbers.toString(),
                style: TextStyle(fontSize: 16.0),
              ))
              .toList(),
            ),
          ]
        )
       )
    );
  }
}