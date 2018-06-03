import 'package:flutter/material.dart';

class TodoItem extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => new TodoItemState();
}

class TodoItemState extends State<TodoItem>{

  bool value = false;
  
  @override
  Widget build(BuildContext context){
    return Card(
            child: new Row(
              children: <Widget>[
                Checkbox(
                  onChanged: (a) => changeCheckBox(a),
                  value: value,
                ),
                Text('texto')
              ],
            ),
          );
  }

  void changeCheckBox(bool newValue){
    setState(() {
      value = newValue;
    });
  }
}