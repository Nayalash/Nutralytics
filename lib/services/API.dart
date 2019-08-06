import 'dart:convert';
import 'package:http/http.dart' as http;

const String appId = 'e9f1ab88';
const String apiKey = 'b659cb0d52b2650b50cbdbbb01678f07';

Future<dynamic> getData(String foodName) async {

  final response = await http.get(
      'https://api.edamam.com/api/food-database/parser?ingr=$foodName&app_id=$appId&app_key=$apiKey'
  );

  if(response.body == null || response.body.isEmpty) return null;

  return json.decode(response.body);

}
