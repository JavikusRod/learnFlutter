import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  TextStyle textStyle = TextStyle(fontSize: 22.0);
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
                '0',
                style: textStyle,
              ),
            ],
          ),
        ),
      );
}
