import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CardSwiper extends StatelessWidget {
  late final List<dynamic> list;

  CardSwiper({required this.list});

  @override
  Widget build(BuildContext context) => Container(
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
