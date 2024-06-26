import 'package:flutter/material.dart';

class Gmailscreen extends StatelessWidget {
  const Gmailscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gmail'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=>InboxScreen()));
            }, child: Text('Go to index'),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=>SentScreen()));
            }, child: Text('Go to sent'),
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=>DraftsScreen()));
            }, child: Text('Go to drafts'),
            ),
          ],
        ),
      ),
    );
  }
}

class InboxScreen extends StatelessWidget {
  const InboxScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inbox'),
      ),
      body: ListView(
        children: List.generate(10, (index) => ListTile(
          title: Text('Email $index'),
          subtitle: Text('Sender: sender@example.com'),
          onTap: (){
            print('Tapped on email $index');
          },
        ))
      ),
    );
  }
}

class SentScreen extends StatelessWidget {
  const SentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sent'),
      ),
      body: ListView(
        children: List.generate(10, (index) => ListTile(
          title: Text('Sent Email $index'),
          subtitle: Text('Recipient: Recipient@example.com'),
          onTap: (){
            print('Tapped on sent email $index');
          },
        ))
      ),
    );
  }
}

class DraftsScreen extends StatelessWidget {
  const DraftsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Drafts'),
      ),
      body: ListView(
        children: List.generate(10, (index) => ListTile(
          title: Text('Drafts $index'),
          onTap: (){
            print('Tapped on draft $index');
          },
        ))
      ),
    );
  }
}