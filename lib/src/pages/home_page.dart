import 'package:flutter/material.dart';
import 'package:test1/src/providers/menu_provider.dart';

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
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        print('Builder');
        return ListView(children: _listView());
      },
    );
  }

  List<Widget> _listView() => [
        ListTile(
          title: Text("First Parranda"),
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
