import 'package:flutter/material.dart';

class MovieSearchDelegate extends SearchDelegate {
  @override
  // TODO: implement searchFieldLabel
  String? get searchFieldLabel => "Buscar pelicula";

  @override
  List<Widget>? buildActions(BuildContext context) {
    // TODO: implement buildActions
    // throw UnimplementedError();
    return [
      IconButton(onPressed: () => query = "", icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    // throw UnimplementedError();
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    // throw UnimplementedError();
    return Text("buildResults");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // TODO: implement buildSuggestions
    // throw UnimplementedError();
    if(query.isEmpty){
      return Container(
        child:  const Center(
          child: Icon(Icons.movie_creation_outlined, color: Colors.black38, size: 100),
        ),
      );
    }

    return Container();
  }
}
