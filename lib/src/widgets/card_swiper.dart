import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CardSwiper extends StatelessWidget {
  late final List<dynamic> list;

  CardSwiper({required this.list});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: 10),
      child: Swiper(
        layout: SwiperLayout.STACK,
        itemWidth: _screenSize.width * 0.7,
        itemHeight: _screenSize.height * 0.5,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) => ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            'assets/no-image.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
