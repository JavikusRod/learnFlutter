import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List<int> _listItems = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('List Page'),
      ),
      body: _createList());

  _createList() => ListView.builder(
      itemCount: _listItems.length,
      itemBuilder: (BuildContext context, int index) {
        final image = _listItems[index];
        return FadeInImage(
          image: NetworkImage('https://picsum.photos/500/300/?=image=$image'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        );
      });
}
