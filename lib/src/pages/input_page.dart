import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Inputs'),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: [_createInput()],
        ));
    ;
  }
}

_createInput() => TextField(
    // autofocus: true,
    textCapitalization: TextCapitalization.sentences,
    decoration: InputDecoration(
        label: Text('Stuff'),
        hintText: 'Write stuff',
        counter: Text('qty of letters'),
        suffixIcon: Icon(Icons.title),
        icon: Icon(Icons.import_contacts_sharp),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))));
