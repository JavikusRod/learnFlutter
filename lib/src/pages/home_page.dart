import 'package:flutter/material.dart';
import 'package:test1/src/providers/menu_provider.dart';
import 'package:test1/src/utils/icon_string_util.dart';

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
        return ListView(children: _listView(snapshot.data, context));
      },
    );
  }

  List<Widget> _listView(List<dynamic>? data, BuildContext context) {
    //Need o solve the null possibility
    final List<Widget> options = [];
    if (data != null) {
      data.forEach((element) {
        final widgetTemp = ListTile(
          title: Text(element['text']),
          onTap: () {
            Navigator.pushNamed(context, element['route']);
          },
          leading: getIcon(iconName: element['icon']),
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
