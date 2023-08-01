import 'package:api_connection_vicente/modules/api/models/person_model.dart';
import 'package:api_connection_vicente/modules/api/repository/reqres_repository.dart';
import 'package:api_connection_vicente/modules/api/repository/rescountries_repository.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            // ServicesReqResApi().getReqResService(2);

            // ReqresRepository myInstace = ReqresRepository();

            // List<PersonModel> myPersonsInPage =
            //     await myInstace.getPersonsPerPage(2);

            // print(myPersonsInPage.first.id);

            ResCoutriesRepository().getAllCountries();
          },
          child: Icon(Icons.add),
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
