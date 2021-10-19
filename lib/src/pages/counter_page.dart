import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  @override
  createState() => _countPageState();
}

class _countPageState extends State<CounterPage> {
  TextStyle _textStyle = TextStyle(fontSize: 22.0);
  int _count = 0;

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
              style: _textStyle,
            ),
            Text(
              '$_count',
              style: _textStyle,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: _createButtons());

  Widget _createButtons() => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(width: 30.0),
          FloatingActionButton(
              child: Icon(Icons.exposure_zero), onPressed: _reset),
          Expanded(child: SizedBox(width: 30.0)),
          FloatingActionButton(child: Icon(Icons.remove), onPressed: _remove),
          SizedBox(width: 30.0),
          FloatingActionButton(child: Icon(Icons.add), onPressed: _add),
        ],
      );

  void _add() {
    setState(() => _count++);
  }

  void _remove() {
    setState(() => _count--);
  }

  void _reset() {
    setState(() => _count = 0);
  }
}
