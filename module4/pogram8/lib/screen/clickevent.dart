import 'package:flutter/material.dart';

class Clickevent extends StatefulWidget {
  const Clickevent({super.key});

  @override
  State<Clickevent> createState() => _Click_event();
}

class _Click_event extends State<Clickevent> {
  DateTime selectedDate = DateTime.now();

  Future<void> _Clickevent(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context, 
      initialDate: selectedDate, 
      firstDate: DateTime(2000), 
      lastDate: DateTime(2101));
      if (picked != null && picked != selectedDate) {
        setState(() {
          selectedDate = picked;
        });
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Date '),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Selected date: ${selectedDate.toLocal()}',
            style: TextStyle(fontSize: 22),),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () => _Clickevent(context), child: Text('Select date'))
          ],
        ),
      ),
    );
  }
}