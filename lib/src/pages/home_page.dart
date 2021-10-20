import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Home Page'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
    return ListView(
      children: _listView(),
    );
  }

  List<Widget> _listView() => [
        ListTile(
          title: Text("First"),
        ),
        Divider(),
        ListTile(
          title: Text("Second"),
        ),
        Divider(),
        ListTile(
          title: Text("3rd"),
        ),
        Divider(),
      ];
}
