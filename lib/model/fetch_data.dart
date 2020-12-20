import 'dart:convert';

import 'package:http/http.dart' as http;
import 'fetch_data.dart';

class Results {
  final String sunrise;
  final String sunset;
  final String solarNoon;
  final String dayLength;

  Results({this.sunrise, this.dayLength, this.sunset, this.solarNoon});

  factory Results.fromJson(Map<String, dynamic> json) {
    return Results(
      sunrise: json["sunrise"] as String,
      sunset: json["sunset"] as String,
      solarNoon: json["solar_noon"] as String,
      dayLength: json["day_length"] as String,
    );
  }

  Future<Results> fetchData() async{
    final response = await http.get("https://api.sunrise-sunset.org/json?lat=-7.776423&lng=113.203712&date=today");

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return Results.fromJson(jsonDecode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}