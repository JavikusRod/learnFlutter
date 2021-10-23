import 'package:flutter/material.dart';
import 'package:test1/src/widgets/card_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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

  dynamic _cardSwiper() => CardSwiper(list: [1, 2, 3, 4, 5]);
}
