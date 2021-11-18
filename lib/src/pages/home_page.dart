import 'package:flutter/material.dart';
import 'package:test1/src/providers/movies.provider.dart';
import 'package:test1/src/widgets/card_swiper.dart';
import 'package:test1/src/widgets/movie_horizontal.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _moviesProvider = MoviesProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' Movie Search'),
        centerTitle: false,
        backgroundColor: Colors.indigoAccent,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [_cardSwiper(), _footer(context)],
      ),
    );
  }

  dynamic _cardSwiper() {
    return FutureBuilder(
        future: _moviesProvider.getNowPlaying(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return CardSwiper(list: snapshot.data);
          } else {
            return SizedBox(
                height: 400, child: Center(child: CircularProgressIndicator()));
          }
        });
  }

  SizedBox _footer(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Text('Populares', style: Theme.of(context).textTheme.subtitle1),
          FutureBuilder(
              future: _moviesProvider.getPopulars(),
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return MovieHorizontal(list: snapshot.data);
                } else {
                  return SizedBox(
                      child: Center(
                          child: Center(
                              child:
                                  Center(child: CircularProgressIndicator()))));
                }
              })
        ],
      ),
    );
  }
}
