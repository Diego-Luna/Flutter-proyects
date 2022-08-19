import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peliculas/helpers/debouncer.dart';
import 'package:peliculas/models/models.dart';

class MoviesProvider extends ChangeNotifier {
  final String _apiKey = '2a8fb32f0377e4544ced157b55a716b4';
  final String _baseUrl = 'api.themoviedb.org';
  final String _language = 'es-ES';

  List<Movie> onDisplayMovies = [];
  List<Movie> onPopularMovie = [];

  Map<int, List<Cast>> moviesCast = {};

  int _popularPage = 0;

  final debouncer = Debouncer(duration: const Duration(milliseconds: 500));

  final StreamController<List<Movie>> _suggestionStreamController =
      new StreamController.broadcast();

  Stream<List<Movie>> get suggestionStream =>
      _suggestionStreamController.stream;

  MoviesProvider() {
    getOnDisplayMovies();
    getPopularMovies();
  }

  Future<String> _getJsonData(String endPoint, [int page = 1]) async {
    final url = Uri.https(_baseUrl, endPoint,
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

  Future<List<Cast>> getMovieCast(int movieId) async {
    if (moviesCast.containsKey(movieId)) {
      return moviesCast[movieId]!;
    }

    final jsonData = await _getJsonData("3/movie/${movieId}/credits");
    final creditResponse = CreditsResponse.fromJson(jsonData);

    moviesCast[movieId] = creditResponse.cast;

    return creditResponse.cast;
  }

  Future<List<Movie>> searchMovies(String query) async {
    final url = Uri.https(_baseUrl, '3/search/movie',
        {'api_key': _apiKey, 'language': _language, 'query': query});

    final response = await http.get(url);
    final searchResponse = SearchResponse.fromJson(response.body);

    return searchResponse.results;
  }
}
