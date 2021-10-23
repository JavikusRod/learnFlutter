import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Movie Search'),
        centerTitle: false,
        backgroundColor: Colors.indigoAccent,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Container(
        child: Column(
          children: [_cardSwiper()],
        ),
      ),
    );
  }

  Container _cardSwiper() => Container();
}
