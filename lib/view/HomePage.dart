import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myanimerev/view/SpaceTime.dart';
import 'package:myanimerev/view_model/Colorss.dart';


class HomePage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: FractionalOffset.topRight,
                  end: FractionalOffset.bottomLeft,
                  colors: [BodyFirstGradColor,BodyMiddleGradColor,BodyMiddleGradColor1,BodyMiddleGradColor2,BodyLastGradColor]
              )
          ),
          child: Column(
            children: <Widget>[
              Flexible(
                flex: 3,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Text("Welcome!!",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white),),
                  ),
                ),
              ),
              Flexible(
                flex: 1,
                child:Center(
                  child: Container(
                    margin: EdgeInsets.all(30),
                    width: 150,
                    height: 40,
                    child: RaisedButton(
                      child: Text("Next", style: TextStyle(color: Colors.white, fontSize: 15),),
                      color: Colors.cyanAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                          return SpaceTimePage();
                        }));
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
