import 'package:flutter/material.dart';
import 'package:todo_app/UI/todo_item.dart';

class TodoList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
          child: ListView(
            children: <Widget>[
              TodoItem(),
              TodoItem()
            ],
          )
        );
  }
}