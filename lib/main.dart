import 'package:api_connection_vicente/modules/api/services/reqres_services.dart';
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
          onPressed: () {
            ServicesReqResApi().getReqResService();
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
