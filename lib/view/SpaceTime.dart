import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:myanimerev/model/PlanetData.dart';
import 'package:myanimerev/view/SkyObject.dart';
import 'package:myanimerev/view_model/Colorss.dart';

void main() {
  runApp(SpaceTimePage());
}

class SpaceTimePage extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<SpaceTimePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Space Time"),
            actions: <Widget>[
              IconButton(icon: Icon(Icons.exit_to_app), color: Colors.white, onPressed: () {},)
            ],
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [FirstGradColor,MiddleGradColor, LastGradColor ],
                      begin : FractionalOffset.topRight,
                      end : FractionalOffset.bottomLeft
                  )
              ),
            ),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(text: "Time", ),
                Tab(text: "Sky Objects",)
              ],
            ),
          ),
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: FractionalOffset.topRight,
                    end: FractionalOffset.bottomLeft,
                    colors: [BodyFirstGradColor,BodyMiddleGradColor,BodyMiddleGradColor1,BodyMiddleGradColor2,BodyLastGradColor]
                )
            ),
            child: TabBarView(
              children: <Widget>[
                Center(child: Column()),
                Center(child: Column(
                  children: <Widget>[
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text('Space Objects Galery',textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text('In astronomy, an astronomical object or celestial object is a naturally occurring physical entity, association, or structure that exists in the observable universe. In astronomy, the terms object and body are often used interchangeably. However, an astronomical body or celestial body is a single, tightly bound, contiguous entity, while an astronomical or celestial object is a complex, less cohesively bound structure, which may consist of multiple bodies or even other objects with substructures. ',textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                    RaisedButton(
                      padding: EdgeInsets.all(10),
                      child: Text("View Gallery", style: TextStyle(color: Colors.white, fontSize: 15),),
                      color: Colors.cyanAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                          return SkyObjectPage();
                        }));
                      },
                    ),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}