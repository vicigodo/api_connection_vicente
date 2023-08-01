import 'package:http/http.dart' as http;

class ResCountriesServicesV3 {
  Future<http.Response?> getContries() async {
    // var url = "https://restcountries.com/v3/all";

    http.Response? myResponse;

    var httpsUri = Uri(
      scheme: 'https',
      host: 'restcountries.com',
      path: '/v3/all',
    );

    try {
      await http.get(httpsUri).then((http.Response value) {
        myResponse = value;
      });
      return myResponse;
    } catch (e) {
      return myResponse;
    }
  }
}
