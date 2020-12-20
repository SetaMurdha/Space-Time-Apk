import 'package:flutter/material.dart';
import 'package:myanimerev/view/SkyObject.dart';
import 'package:myanimerev/view/SpaceTime.dart';
import 'package:myanimerev/view/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(
      ),
    );
  }
}
