import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() => _countPageState();
}

class _countPageState extends State<CounterPage> {
  TextStyle textStyle = TextStyle(fontSize: 22.0);
  int count = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: const Text('Javier testing flutter'),
        centerTitle: true,
        elevation: 4,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Numero de clics',
              style: textStyle,
            ),
            Text(
              '$count',
              style: textStyle,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Learning flutter');
        },
      ));
}
