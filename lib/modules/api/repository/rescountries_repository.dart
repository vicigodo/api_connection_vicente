import 'dart:convert';

import 'package:api_connection_vicente/modules/api/models/country_model.dart';
import 'package:api_connection_vicente/modules/api/services/rescountries_services.dart';
import 'package:http/http.dart' as http;

class ResCoutriesRepository {
  ResCountriesServicesV3 resCountriesServicesV3 = ResCountriesServicesV3();

  Future<List<CountryV3>> getAllCountries() async {
    List<CountryV3> myCountries = [];

    http.Response? myResponse = await resCountriesServicesV3.getContries();

    //Decodificar el body
    final responseBody = jsonDecode(myResponse!.body);

    final List<dynamic> responseResults = responseBody;

    //Iterable de paises

    print(responseBody);

    print(responseResults);

    //Trabajo de Listas

    // myCountries =
    //     responseResults.map((json) => CountryV3.fromJson(json)).toList();

    //Iterable de paises
    myCountries = responseResults.map((e) {
      try {
        return CountryV3.fromJson(e);
      } catch (e) {
        return CountryV3();
      }
    }).toList();

    return myCountries;
  }
}
