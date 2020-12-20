
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Results {
  String sunrise;
  String sunset;
  String solarNoon;
  String dayLength;

  Results({this.sunrise, this.dayLength, this.sunset, this.solarNoon});

  factory Results.createResult(Map<String, dynamic> object) {
    return Results(
      sunrise: object["sunrise"],
      sunset: object["sunset"],
      solarNoon: object["solar_noon"],
      dayLength: object["day_length"],
    );
  }

  static Future<Results> connectToAPI(String latitude, String Longitude) async{
    String url = "https://api.sunrise-sunset.org/json?lat="+latitude+"&lng="+Longitude+"&date=today";
    var apiResult = await http.get(url);
    var jsonObject = json.decode(apiResult.body);

    var userData = (jsonObject as Map<String, dynamic>)['results'];

    return Results.createResult(userData);
  }
}