import 'dart:convert';

import 'package:api_connection_vicente/modules/api/models/person_model.dart';
import 'package:api_connection_vicente/modules/api/services/reqres_services.dart';
import 'package:http/http.dart' as http;

class ReqresRepository {
  ServicesReqResApi servicesReqResApi = ServicesReqResApi();

  Future<List<PersonModel>> getPersonsPerPage(int page) async {
    List<PersonModel> myPersons = [];

    http.Response? myResponse = await servicesReqResApi.getReqResPERSONS(page);

    final responseBody = jsonDecode(myResponse!.body);
    print(responseBody);
    print(responseBody["data"]);

    final List<dynamic> responseResults = responseBody["data"];

    print(responseResults);

    //Trabajo de Listas
    myPersons =
        responseResults.map((value) => PersonModel.fromJson(value)).toList();

    return myPersons;
  }
   Future<PersonModel> getPerson() async {
    PersonModel myPerson;

    http.Response? myResponse = await servicesReqResApi.getReqResPERSON();

    final responseBody = jsonDecode(myResponse!.body);
    print(responseBody);
    print(responseBody["id"]);

    myPerson = responseBody;
    

    return myPerson;
  }
}
