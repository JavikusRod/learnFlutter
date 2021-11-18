import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:test1/src/models/movie_model.dart';

class CardSwiper extends StatelessWidget {
  late final List<Movie> list;

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
            child: FadeInImage(
              image: NetworkImage(list[index].getPosterImg()),
              placeholder: AssetImage('assets/no-image.jpg'),
              fit: BoxFit.cover,
            )),
      ),
    );
  }
}
