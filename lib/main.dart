import 'package:flutter/material.dart';
import 'package:todo_app/pages/create_todo_page.dart';
import 'package:todo_app/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'To do',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: <String, WidgetBuilder>{
        CreateTodoPage.route: (BuildContext context) => CreateTodoPage(),
      },
      home: HomePage());
}
