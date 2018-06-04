import 'package:flutter/material.dart';
import 'package:todo_app/UI/todo_list.dart';
import 'package:todo_app/pages/create_todo_page.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("To do!")
        ),
        body: TodoList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _performAddNewTodo(context),
          child: new Icon(Icons.add),
        ),
      );
  }
  _performAddNewTodo(BuildContext context){
    Navigator.pushNamed(context, CreateTodoPage.route);
  }
}