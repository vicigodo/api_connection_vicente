import 'package:http/http.dart' as http;

class ServicesReqResApi {
  Future<http.Response?> getReqResPERSONS(int page) async {
    http.Response? myRespone;

    Uri myUriPersons = Uri(
        scheme: 'https',
        host: 'reqres.in',
        path: '/api/users',
        queryParameters: {
          "page": page.toString(),
        });

    try {
      await http.get(myUriPersons).then((http.Response response) {
        myRespone = response;
      });
      return myRespone;
    } catch (e) {
      return myRespone;
    }
  }
}
