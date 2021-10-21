import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late String _stuff;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Inputs'),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: [
            _createInput(),
            ListTile(
              title: Text('Stuff written: $_stuff'),
            )
          ],
        ));
  }

  _createInput() => TextField(
      onChanged: (value) {
        setState(() {
          _stuff = value;
        });
      },
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          label: Text('Stuff'),
          hintText: 'Write stuff',
          counter: Text('qty of letters ${_stuff.length}'),
          suffixIcon: Icon(Icons.title),
          icon: Icon(Icons.import_contacts_sharp),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))));
}
