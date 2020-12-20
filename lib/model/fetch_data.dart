
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Results {
  final String sunrise;
  final String sunset;
  final String solarNoon;
  final String dayLength;

  Results({this.sunrise, this.dayLength, this.sunset, this.solarNoon});

  factory Results.fromJson(Map<String, dynamic> json) {
    return Results(
      sunrise: json["sunrise"],
      sunset: json["sunset"],
      solarNoon: json["solar_noon"],
      dayLength: json["day_length"],
    );
  }

  Future<List<Results>> fetchDataWaktu(http.Client client) async{
    final response = await client.get("https://api.sunrise-sunset.org/json?lat=-7.776423&lng=113.203712&date=today");
    return compute(parseDataWaktu, response.body);


  }
  List<Results>parseDataWaktu(String responseBody){
    final parsed = jsonDecode(responseBody)['results'].cast<Map<String, dynamic>>();
    return parsed.map<Results>((json) => Results.fromJson(json)).toList();
  }
}