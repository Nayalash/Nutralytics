import 'package:flutter/material.dart';
import 'package:nutralytics/screens/input_screen.dart';
import 'package:nutralytics/screens/trending_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                Image.asset('images/logo.png'),
                SizedBox(
                  height: 10,
                ),
                FlatButton(
                    onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => InputScreen()),);
                },
                    child: Image.asset('images/search.png')
                ),
                SizedBox(
                  height: 20,
                ),
                FlatButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TrendingScreen()),);
                    },
                    child: Image.asset('images/trend.png')
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}