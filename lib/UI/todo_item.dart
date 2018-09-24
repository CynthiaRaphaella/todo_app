import 'package:flutter/material.dart';

class TodoItem extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TodoItemState();
}

class TodoItemState extends State<TodoItem> {
  final int _animationDuration = 500;
  double _opacityLevel = 1.0;
  bool _value = false;
  FontStyle _fontStyle = FontStyle.normal;

  @override
  Widget build(BuildContext context) => AnimatedOpacity(
        duration: Duration(milliseconds: _animationDuration),
        opacity: _opacityLevel,
        child: Card(
          child: Row(
            children: <Widget>[
              Checkbox(
                onChanged: (v) => _changeCheckBox(v),
                value: _value,
              ),
              Text(
                'Texto',
                style: TextStyle(fontStyle: _fontStyle),
              )
            ],
          ),
        ),
      );

  _changeCheckBox(bool newValue) {
    setState(() {
      _value = newValue;
      _changeFontStyle();
      _changeOpacity();
    });
  }

  _changeOpacity() {
    setState(() => _opacityLevel = _opacityLevel == 0.5 ? 1.0 : 0.5);
  }

  _changeFontStyle() {
    setState(() => _fontStyle =
        _fontStyle == FontStyle.normal ? FontStyle.italic : FontStyle.normal);
  }
}
