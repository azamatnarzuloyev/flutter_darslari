import 'package:flutter/material.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(
    MaterialApp( 
      home: MyApp()
    )
  );
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
              title:Text("Collage Layout in Flutter"), //appbar title
              backgroundColor: Colors.redAccent //appbar background color
          ),
          body: Container(
            alignment:Alignment.topCenter,
            padding: EdgeInsets.all(15),
             child: StaggeredGridView.count( 
                crossAxisCount: 3, //total cross (Horizontal) axix 3
                staggeredTiles: const <StaggeredTile>[
                    StaggeredTile.count(1, 2),  //(width, height)// width 1 part of total cross axis
                    StaggeredTile.count(1, 1), //(width, height)// width 1 part of total cross axis
                    StaggeredTile.count(1, 1), //(width, height)// width 1 part of total cross axis
                    StaggeredTile.count(2, 1), //(width, height)// width 2 part of total cross axis
                ],
                children:[
                    Container(  //box 1
                       color: Colors.lightGreen,
                       child: Container() //you can add image or other widgets
                    ),

                    Container(  //box2 
                       color: Colors.red,
                       child: Container() //you can add image or other widgets
                    ),

                    Container(  //box 3
                       color: Colors.blue,
                       child: Container() //you can add image or other widgets
                    ),

                    Container( // box 4
                       color: Colors.brown,
                       child: Container() //you can add image or other widgets
                    )

                ]
             )
          )
      );
  }
}