// lib/main.dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ContohListView());
  }
}

//lib/list_view_screen.dart
class ContohListView extends StatelessWidget {
  const ContohListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView Widget')),
      body: ListView(
        children: <Widget>[
          ListTile(leading: Icon(Icons.people), title: Text('Elisabeth')),
          ListTile(leading: Icon(Icons.people), title: Text('Sofiana')),
          ListTile(leading: Icon(Icons.people), title: Text('Azzahra')),
          ListTile(leading: Icon(Icons.people), title: Text('Afifah')),
          ListTile(leading: Icon(Icons.people), title: Text('Alyesa')),
          ListTile(leading: Icon(Icons.people), title: Text('Asmara')),
          ListTile(leading: Icon(Icons.people), title: Text('April')),
          ListTile(leading: Icon(Icons.people), title: Text('Nabila')),
          ListTile(leading: Icon(Icons.people), title: Text('Adit')),
          ListTile(leading: Icon(Icons.people), title: Text('Safi')),
        ],
      ),
    );
  }
}
