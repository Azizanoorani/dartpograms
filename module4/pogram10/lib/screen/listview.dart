import 'package:flutter/material.dart';

class Listview extends StatefulWidget {
  const Listview({super.key});

  @override
  State<Listview> createState() => _ListviewState();
}

class _ListviewState extends State<Listview> {
  List<String> items = ['Item 1','Item 2','Item 3','Item 4'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List view'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context,int index) {
          return ListTile(
            title: Text(items[index]),
            onLongPress: (){
              _showContextMenu(context,index);
            },
          );
        }
        ),
    );
  }


void _showContextMenu(BuildContext context,int index){
  showModalBottomSheet(
    context: context, 
    builder: (BuildContext context){
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              title: Text('Edit'),
              leading: Icon(Icons.edit),
              onTap: (){
                Navigator.pop(context);
                _editItem(index);
              },
            ),
            ListTile(
              title: Text('view'),
              leading: Icon(Icons.visibility),
              onTap: (){
                Navigator.pop(context);
                _viewItem(index);
              },
            ),
            ListTile(
              title: Text('Delete'),
              leading: Icon(Icons.delete),
              onTap: (){
                Navigator.pop(context);
                _deleteItem(index);
              },
            ),
          ],
        ),
      );
    }
    );
}

void _editItem(int index){
  print('Edit item: ${items[index]}');
}
void _viewItem(int index){
  print('View item: ${items[index]}');
}
void _deleteItem(int index){
  setState((){
    items.removeAt(index);
  });
  print('Delete item: ${items[index]}');
}
}