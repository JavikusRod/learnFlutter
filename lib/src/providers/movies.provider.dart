import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:test1/src/models/movie_model.dart';

class MoviesProvider {
  final String _apiKey = 'e426d7de02a167f5d84f9deda65d48c5';
  final String _url = 'api.themoviedb.org';
  final String _language = 'en-EN';

  Future<List<Movie>> getNowPlaying() async {
    final url = Uri.https(_url, '3/movie/now_playing',
        {'api_key': _apiKey, 'language': _language});

    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    final movies = Movies.fromJsonList(decodedData['results']);
    return movies.items;
  }
}
