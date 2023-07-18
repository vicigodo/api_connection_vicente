import 'dart:convert';

import 'package:http/http.dart' as http;

class ServicesReqResApi {
  Future<void> getReqResService() async {
    // Una persona
    // String urlPerson = 'https://reqres.in/api/users/2';

    // Muchas personas
    // String urlPersons = 'https://reqres.in/api/users?page=2';

    Uri urlPersons = Uri.parse('https://reqres.in/api/users?page=2');

    Uri myUriPersons = Uri(
        scheme: 'https',
        host: 'reqres.in',
        path: '/api/users',
        queryParameters: {
          "page": "2",
        });

    print(urlPersons);

    print(myUriPersons);

    Uri urlPerson = Uri.parse('https://reqres.in/api/users/2');

    Uri myUriPerson = Uri(
      scheme: 'https',
      host: 'reqres.in',
      path: '/api/users/2',
    );

    print(urlPerson);

    print(myUriPerson);

    try {
      await http.get(myUriPerson).then((http.Response response) {
        print(response);
        print(response.body);
        jsonDecode(response.body);
      });
    } catch (e) {
      print(e);
    }
  }
}
