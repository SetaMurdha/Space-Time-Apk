import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:myanimerev/model/PlanetData.dart';
import 'package:myanimerev/view/SkyObjectDetail.dart';
import 'package:myanimerev/view/SpaceTime.dart';
import 'package:myanimerev/view_model/Colorss.dart';
class SkyObjectPage extends StatefulWidget {
  @override
  _SkyObjectPageState createState() => _SkyObjectPageState();
}

class _SkyObjectPageState extends State<SkyObjectPage> {
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
          ),
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: FractionalOffset.topRight,
                    end: FractionalOffset.bottomLeft,
                    colors: [BodyFirstGradColor,BodyMiddleGradColor,BodyMiddleGradColor1,BodyMiddleGradColor2,BodyLastGradColor]
                )
            ),
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      children: <Widget>[
                        Text("Sky Objects", style: TextStyle(
                          fontSize: 30,
                          color: const Color(0xffffffff),
                          fontWeight: FontWeight.bold,
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    height: 500,
                    child: Swiper(
                      itemCount: skyObject.length,
                      itemWidth: MediaQuery.of(context).size.width - 2 * 64 ,
                      layout: SwiperLayout.STACK,
                      pagination: SwiperPagination(
                        builder: DotSwiperPaginationBuilder(),
                      ),
                      itemBuilder: (context,index){
                        return InkWell(
                          onTap: (){
                            Navigator.push(context, PageRouteBuilder(pageBuilder: (context, a, b)=>SkyObjectDetail(skyObjectInfo: skyObject[index],)));
                          },

                        child: Stack(
                          children: <Widget>[
                            Column(
                              children: <Widget>[
                                SizedBox(height: 100,),
                                Card(
                                  child: Padding(
                                    padding: const EdgeInsets.all(40.0),
                                    child: Column(
                                      children: <Widget>[
                                        SizedBox(height: 100,),
                                        Text(
                                          skyObject[index].name,
                                          style: TextStyle(
                                            fontSize: 44,
                                            color: const Color(0xfff5e6ff),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Tap to Know More", style: TextStyle(
                                          fontSize: 20,
                                          color: const Color(0xfff5e6ff),
                                        ),
                                        ),
                                        ],
                                    ),
                                  ),
                                  color: Color(0xffad33ff),
                                  elevation: 8,
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
                                )

                              ],
                            ),
                          ],
                        )
                        );
                      },
                    ),
                  ),
                  Container(

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton(
                          padding: EdgeInsets.all(10),
                          child: Text("Back", style: TextStyle(color: Colors.white, fontSize: 15),),
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
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
