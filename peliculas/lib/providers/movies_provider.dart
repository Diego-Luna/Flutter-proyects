import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MoviesProvider extends ChangeNotifier {
  String _apiKey = '2a8fb32f0377e4544ced157b55a716b4';
  String _baseUrl = 'api.themoviedb.org';
  String _language = 'es-ES';

  MoviesProvider() {
    print("MoviesProvider inicialisado");
    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async {
    var url = Uri.https(_baseUrl, '3/movie/now_playing',
        {'api_key': _apiKey, 'language': _language, 'page': "1"});

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);

    final Map<String, dynamic> decodedData = json.decode(response.body);

    print(decodedData);
  }
}
