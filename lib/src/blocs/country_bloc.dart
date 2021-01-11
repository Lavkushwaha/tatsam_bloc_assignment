import '../resources/repository.dart';
import 'package:rxdart/rxdart.dart';
import '../models/country_model.dart';

class CountryBloc {
  final _repository = Repository();
  final _countriesFetcher = PublishSubject<CountryModel>();

  Stream<CountryModel> get allCountries => _countriesFetcher.stream;

  fetchAllCountries() async {
    CountryModel countryModel = await _repository.fetchAllMovies();
    _countriesFetcher.sink.add(countryModel);
  }

  fetchAllCountriesNext(limit) async {
    CountryModel countryModel = await _repository.fetchAllMoviesNext(limit);
    _countriesFetcher.sink.add(countryModel);
  }

  dispose() {
    _countriesFetcher.close();
  }
}

final bloc = CountryBloc();
