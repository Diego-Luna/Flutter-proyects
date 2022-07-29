import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas/models/models.dart';

class MoviesProvider extends ChangeNotifier {
  final String _apiKey = '2a8fb32f0377e4544ced157b55a716b4';
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'es-ES';

  List<Movie> onDisplayMovies = [];
  List<Movie> onPopularMovie = [];

  int _popularPage = 0;

  MoviesProvider() {
    getOnDisplayMovies();
    getPopularMovies();
  }

  Future<String> _getJsonData(String endPoint, [int page = 1]) async {
    var url = Uri.https(_baseUrl, endPoint,
        {'api_key': _apiKey, 'language': _language, 'page': '$page'});

    // Await the http get response, then decode the json-formatted response.
    final response = await http.get(url);

    return response.body;
  }

  getOnDisplayMovies() async {
    final jsonData = await _getJsonData("3/movie/now_playing");
    final nowPlatingResponse = NowPlayingResponse.fromJson(jsonData);

    onDisplayMovies = nowPlatingResponse.results;
    // lo usamos para que se actualisen los widgets necesarios
    notifyListeners();
  }

  getPopularMovies() async {
    _popularPage += 1;
    final jsonData = await _getJsonData("3/movie/popular", _popularPage);
    final popularResponse = PopularResponse.fromJson(jsonData);

    onPopularMovie = [...onPopularMovie, ...popularResponse.results];
    // lo usamos para que se actualisen los widgets necesarios
    notifyListeners();
  }
}
