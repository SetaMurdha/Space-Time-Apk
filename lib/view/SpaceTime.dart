import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:myanimerev/model/PlanetData.dart';

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
                      colors: [Color(0xff3333ff),Color(0xffe0b3ff), Color(0xff8a00e6) ],
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
                    colors: [Color(0xff80d4ff),Color(0xffbf80ff)]
                )
            ),
            child: TabBarView(
              children: <Widget>[
                Center(child: Container(
                ),),
                Center(child: _buildListView(context)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListView _buildListView(BuildContext context){
    return ListView.builder(
      itemCount: 13,
      itemBuilder: (_, index){
        return ListTile(
          title: Text("The List #$index"),
          subtitle: Text("Uji1"),
          leading: Icon(Icons.thumb_down),
          trailing: Icon(Icons.arrow_back),
          onTap: (){

          },
        );
      },
    );
  }
}