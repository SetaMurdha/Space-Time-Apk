import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myanimerev/model/fetch_data.dart';
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
  Results user = null;
  TextEditingController controller = TextEditingController(text: "-7.776423");
  TextEditingController controller1 = TextEditingController(text: "113.203712");
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
                Center(child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('UTC Time',textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
                    Text ("Places Latitude : "+controller.text+"\nPlaces Longitude : "+controller1.text+"",style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold)),
                    Text((user != null)?
                    "Sunrise \t\t\t\t\t\t\t: "+user.sunrise + "\n"+
                        "Sunset \t\t\t\t\t\t\t\t: "+user.sunset + "\n"+
                        "Solar Noon\t\t: "+user.solarNoon + "\n"+
                        "Day Length\t\t: "+user.dayLength +" hours":
                    "No data",textAlign: TextAlign.left,
                        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                    Container(margin: EdgeInsets.all(20),
                        child: TextField
                          (
                          controller: controller,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
                            hintText: "Latitude"
                          ),
                        )),
                    Container(margin: EdgeInsets.all(20),
                        child: TextField(controller: controller1,decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
                            hintText: "Longitude"
                        ),)),
                    RaisedButton(
                      padding: EdgeInsets.all(10),
                      child: Text("Get Data", style: TextStyle(color: Colors.white, fontSize: 15),),
                      color: Colors.cyanAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      onPressed: (){
                        Results.connectToAPI(controller.text,controller1.text).then((value) {
                          user = value;
                          setState(() {

                          });
                        });

                      },
                    )
                  ],
                ),),
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