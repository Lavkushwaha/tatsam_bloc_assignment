import 'dart:async';
import 'country_api_provider.dart';
import '../models/country_model.dart';

class Repository {
  final moviesApiProvider = CountryApiProvider();

  Future<CountryModel> fetchAllMovies() => moviesApiProvider.fetchMovieList();
  Future<CountryModel> fetchAllMoviesNext(limit) =>
      moviesApiProvider.fetchMovieListNext(limit);
}
