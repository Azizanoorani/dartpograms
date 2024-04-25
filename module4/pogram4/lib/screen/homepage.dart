import 'package:flutter/material.dart';
import 'package:pogram4/screen/homepage.dart';

class AlertDialogs extends StatefulWidget {
  const AlertDialogs({super.key});

  @override
  State<AlertDialogs> createState() => _AlertDialogsState();
}

class _AlertDialogsState extends State<AlertDialogs> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('AlertDialog Sample')),
        body: const Center(
          child: DialogExample(),
        ),
      ),
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const Text('AlertDialog description'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}
class Listname extends StatefulWidget {
  const Listname({super.key});

  @override
  State<Listname> createState() => _ListnameState();
}

class _ListnameState extends State<Listname> {
  List<String> languageList =['Mahuva','Rajula','Ahemdabad'];
  TextEditingController Selectedlanguage = TextEditingController();
  @override
Widget build(BuildContext context) {
    
    return Column(
      children: <Widget>[
        ListTile(
          title: Text('Mahuva'),
          leading: Radio(
            value: "Mahuva",
            groupValue: 'Mahuva',
            onChanged: ( selectedLanguage) {
              setState(() {
              selectedLanguage = languageList as String;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Rajula'),
          leading: new Radio(
            value: "Rajula",
            groupValue:'Rajul',
            onChanged: ( selectedLanguage) {
              setState(() {
              selectedLanguage = languageList as String;
              });
            },
          ),
        ),
        ListTile(
          title: Text('Ahemdabada'),
          leading: Radio(
            value: "Ahemdabada",
            
            onChanged: (selectedLanguage) {
              setState(() {
              selectedLanguage = languageList as String;
              });
            }, groupValue: 'First',
          ),
        ),
      ],
    );
  }
}
