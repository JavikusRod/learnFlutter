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
      // initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        print('Builder');
        return ListView(children: _listView(snapshot.data));
      },
    );
  }

  List<Widget> _listView(List<dynamic>? data) {
    //Need o solve the null possibility
    final List<Widget> options = [];
    if (data != null) {
      data.forEach((element) {
        final widgetTemp = ListTile(
          title: Text(element['text']),
          onTap: () {},
          leading: Icon(
            Icons.account_circle,
            color: Colors.blue,
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
            color: Colors.red,
          ),
        );
        options
          ..add(widgetTemp)
          ..add(Divider());
      });
      return options;
    }
    return options;
  }
}
