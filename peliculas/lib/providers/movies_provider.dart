
import 'package:flutter/material.dart';

class MoviesProvider extends ChangeNotifier{
  MoviesProvider(){
    print("MoviesProvider inicialisado");
    this.getOnDisplayMovies();
  }

  getOnDisplayMovies() async{
    print("getOnDisplayMovies");
  }
}