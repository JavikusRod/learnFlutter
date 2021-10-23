import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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

  Container _cardSwiper() => Container(
        padding: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 400,
        child: Swiper(
          layout: SwiperLayout.STACK,
          itemWidth: 300,
          itemCount: 4,
          itemBuilder: (BuildContext context, int index) => Image.asset(
            'assets/no-image.jpg',
            fit: BoxFit.fill,
          ),
        ),
      );
}
