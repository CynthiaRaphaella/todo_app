import 'package:flutter/material.dart';

class CreateTodoPage extends StatelessWidget {
  static const String route = '/create';

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text("Create to do!")),
      );
}
