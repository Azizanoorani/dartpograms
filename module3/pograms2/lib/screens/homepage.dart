import 'package:flutter/material.dart';
 class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
 final TextEditingController number = TextEditingController();
  // final  String  reversedname = reverse(name.text);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            TextField(
                controller: number,
                onChanged: (value) {
                  setState(() {
                    
                  });
                },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  ),
                  hintText: "Enter your Number"
                  )
              ,
        ),
        Text("Revered number${reverse (number.text)}")
          ]
        ),
      ),
    );
  }
  
}
String reverse(String name1) {
   return String.fromCharCodes(name1.runes.toList().reversed);
}


