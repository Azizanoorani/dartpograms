import 'package:flutter/material.dart';
 class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
 final TextEditingController abc = TextEditingController();
  // final  String  reversedname = reverse(name.text);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            TextFormField
            (
              controller: abc,
              validator: (value) {
                if(value != null && value.isEmpty){
                    
                }
              },
              decoration: InputDecoration(labelText: "Enter your number"),
        ),
        Text("Hello ${reverse(abc.text)}"),
        Text(abc.text)
          ]
        ),
      ),
    );
  }
  
}
String reverse(String name1) {
  return name1.split('').reversed.join('');
}


