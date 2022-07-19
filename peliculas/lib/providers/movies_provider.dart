import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas/models/models.dart';

class MoviesProvider extends ChangeNotifier {
  final String _apiKey = '2a8fb32f0377e4544ced157b55a716b4';
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'es-ES';

  MoviesProvider() {
    print("MoviesProvider inicialisado");
    getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing',
        {'api_key': _apiKey, 'language': _language, 'page': "1"});

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);

    final nowPlatingResponse = NowPlayingResponse.fromJson(response.body);

    print(nowPlatingResponse.results[1].title);
  }
}
