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

  _list() {
    return ListView(children: [],);
  }
}
