import 'package:flutter/material.dart';
import 'package:nutralytics/utils/custom_card_list.dart';

class TrendingScreen extends StatefulWidget {
  @override
  _TrendingScreenState createState() => _TrendingScreenState();
}

class _TrendingScreenState extends State<TrendingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Trending Foods"
        ),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      backgroundColor: Colors.deepPurpleAccent,
      body: SafeArea(
          child: Column(
            children: <Widget>[
              CustomCardList(text: "Apple"),
              CustomCardList(text: "Yogurt"),
              CustomCardList(text: "Nuts"),
              CustomCardList(text: "Bitter Lemon"),
              CustomCardList(text: "Granola"),
              CustomCardList(text: "Sweet Potatoes"),
            ],
          )
      ),
    );
  }
}

