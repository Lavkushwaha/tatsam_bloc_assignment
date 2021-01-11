import 'dart:async';
import 'package:http/http.dart' show Client;
import 'dart:convert';
import '../models/country_model.dart';

class CountryApiProvider {
  Client client = Client();

  //https://api.first.org/data/v1/countries?limit=100

  Future<CountryModel> fetchMovieList() async {
    print("entered");
    final response =
        await client.get("https://api.first.org/data/v1/countries?limit=10");
    print(response.body.toString());
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return CountryModel.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }

  Future<CountryModel> fetchMovieListNext(limit) async {
    print("entered");
    final response = await client
        .get("https://api.first.org/data/v1/countries?limit=$limit");
    print(response.body.toString());
    if (response.statusCode == 200) {
      // If the call to the server was successful, parse the JSON
      return CountryModel.fromJson(json.decode(response.body));
    } else {
      // If that call was not successful, throw an error.
      throw Exception('Failed to load post');
    }
  }
}
