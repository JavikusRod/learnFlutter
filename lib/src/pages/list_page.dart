import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  late List<int> _listItems = [];
  ScrollController _scrollController = ScrollController();
  int _lastItem = 0;

  @override
  void initState() {
    super.initState();
    _add10();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _add10();
      }
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Text('List Page'),
      ),
      body: _createList());

  _createList() => ListView.builder(
      controller: _scrollController,
      itemCount: _listItems.length,
      itemBuilder: (BuildContext context, int index) {
        final image = _listItems[index];
        return FadeInImage(
          image: NetworkImage('https://picsum.photos/500/300/?=image=$image'),
          placeholder: AssetImage('assets/jar-loading.gif'),
        );
      });

  void _add10() {
    for (var i = 1; i <= 10; i++) {
      _listItems.add(_lastItem++);
      setState(() {});
    }
  }
}
