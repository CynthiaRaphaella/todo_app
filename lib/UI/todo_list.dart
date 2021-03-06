import 'package:flutter/material.dart';
import 'package:todo_app/UI/battery_info.dart';
import 'package:todo_app/UI/todo_item.dart';

class TodoList extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(
          child: ListView(
        children: <Widget>[BatteryInfo(), TodoItem(), TodoItem()],
      ));
}
