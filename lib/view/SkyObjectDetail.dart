import 'package:flutter/material.dart';
import 'package:myanimerev/model/PlanetData.dart';
import 'package:myanimerev/view/SkyObject.dart';
import 'package:myanimerev/view_model/Colorss.dart';

class SkyObjectDetail extends StatelessWidget {
  final SkyObjectInfo skyObjectInfo;

  const SkyObjectDetail({Key key, this.skyObjectInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: FractionalOffset.topRight,
                  end: FractionalOffset.bottomLeft,
                  colors: [BodyFirstGradColor,BodyMiddleGradColor,BodyMiddleGradColor1,BodyMiddleGradColor2,BodyLastGradColor]
              )
          ),
          child: Column(
            children: <Widget>[
              SafeArea(
                child: Stack(
                  children: <Widget>[
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 300,),
                                Text(
                                    skyObjectInfo.name,
                                  style: TextStyle(
                                    fontSize: 56,
                                    fontWeight: FontWeight.bold
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Text(
                                  "Sky Objects",
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                Divider(color: Colors.black38,)
                              ],
                            ),
                          ),
                          Text(
                            "Galery", style: TextStyle(
                            fontSize: 20
                          ),
                          ),
                          Container(
                            height: 250,
                            padding: const EdgeInsets.only(left: 32.0),
                            child: ListView.builder(
                                itemCount: skyObjectInfo.imagess.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) {
                                  return Card(
                                    clipBehavior: Clip.antiAlias,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    child: AspectRatio(
                                        aspectRatio: 1,
                                        child: Image.network(
                                          skyObjectInfo.imagess[index],
                                          fit: BoxFit.cover,
                                        )),
                                  );
                                }),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              RaisedButton(
                padding: EdgeInsets.all(10),
                child: Text("Back", style: TextStyle(color: Colors.white, fontSize: 15),),
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
          ),
        ),
      ),
    );
  }
}
