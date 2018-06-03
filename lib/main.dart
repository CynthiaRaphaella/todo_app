import 'package:flutter/material.dart';
import 'package:todo_app/UI/todo_list.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'To do',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("To do!")
        ),
        body: TodoList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => print('a'),
          child: new Icon(Icons.add),
        ),
      )
    );
  }
}
