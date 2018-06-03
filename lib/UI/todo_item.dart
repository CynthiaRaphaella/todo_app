import 'package:flutter/material.dart';

class TodoItem extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
    return Card(
            child: new Row(
              children: <Widget>[
                Checkbox(
                  onChanged: (a) => print('change'),
                  value: false,
                ),
                Text('texto')
              ],
            ),
          );
  }
}