import 'package:flutter/material.dart';
import 'package:nutralytics/screens/output_screen.dart';
import 'package:nutralytics/utils/consts.dart';


class InputScreen extends StatefulWidget {
  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  String foodName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 100, left: 50, right: 50, bottom: 10),
          child: Container(
            child: ListView(
              children: <Widget>[

                TextField(
                  style: TextStyle(
                    color: Colors.black,
                  ),

                  decoration: kTextFieldInputDecoration,

                  onChanged: (value) {
                    foodName = value;
                  },
                ),

                SizedBox(
                  height: 150,
                ),

                FlatButton(onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => OutputScreen(foodName: foodName)),
                  );

                },
                    child: Image.asset('images/result.png')),
              ],
            ),
          ),
        ),
      ),
    );
  }

}
