import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:myanimerev/view/SpaceTime.dart';


class HomePage extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.adb, color: Colors.white,),
          title: Text("Homepage", style: TextStyle(color: Colors.white),),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.exit_to_app), color: Colors.white, onPressed: () {},)
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Color(0xff4dc3ff),Color(0xff00ff80), Color(0xd633ff) ],
                    begin : FractionalOffset.topRight,
                    end : FractionalOffset.bottomLeft
                )
            ),
          ),
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: FractionalOffset.topRight,
                  end: FractionalOffset.bottomLeft,
                  colors: [Color(0xff80d4ff),Color(0xffbf80ff)]
              )
          ),
          child: Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Text("Welcome!!",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),),
                  ),
                ),
              ),
              Flexible(
                flex: 2,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Image.network("https://images2.alphacoders.com/563/thumb-1920-56300.jpg"),
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
