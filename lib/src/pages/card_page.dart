// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Cards'),
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            _cardType1(),
            _cardType1(),
          ],
        ),
      );

  Card _cardType1() => Card(
        child: Column(
          children: [
            ListTile(
              title: Text('FirsTile Card'),
              subtitle: Text(
                  'lorem ipsum lorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum'),
              leading: Icon(
                Icons.photo_album,
                color: Colors.red,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('Ok'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('Cancel'),
                ),
              ],
            )
          ],
        ),
        color: Colors.white30,
        elevation: 2.0,
      );
}
