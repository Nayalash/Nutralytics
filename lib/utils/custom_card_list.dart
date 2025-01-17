import 'package:flutter/material.dart';

class CustomCardList extends StatelessWidget {
  final String _text;

  const CustomCardList({this._text});
  @override
  Widget build(BuildContext context) {
    return Card(
        color: Colors.deepOrange,
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: ListTile(
          leading: Icon(
            Icons.show_chart,
            color: Colors.white,
          ),
          title: Text(
            _text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ));
  }
}
