import 'package:flutter/material.dart';
import 'package:test1/src/models/movie_model.dart';

class MovieHorizontal extends StatelessWidget {
  final List<Movie> list;

  MovieHorizontal({required this.list});

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
      height: _screenSize.height * 0.3,
      child: PageView(
        pageSnapping: false,
        controller: PageController(initialPage: 1, viewportFraction: 0.35),
        children: _cards(),
      ),
    );
  }

  _cards() {
    return list
        .map(
          (Movie movie) => Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: FadeInImage(
                    placeholder: AssetImage('assets/no-image.jpg'),
                    image: NetworkImage(movie.getPosterImg()),
                    height: 160,
                    fit: BoxFit.cover),
              )
            ],
          ),
        )
        .toList();
  }
}
