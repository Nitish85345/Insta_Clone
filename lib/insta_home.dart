import 'package:flutter/material.dart';
import 'insta_body.dart';

class InstagramHome extends StatelessWidget {
  
  final topBar = new AppBar(
    backgroundColor: Color(0xfff8faf8),
    centerTitle: true,
    elevation:  1.0,
    leading:Icon(Icons.camera_alt),
    title: SizedBox(
      height : 35.0, child: Image.asset("assets/images/insta_logo.png"),
    ),
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 12.0),
        child: Icon(Icons.send),
      ),
      Text("hello",
      style: TextStyle(
        backgroundColor: Colors.blue,
      ),
      ),
    ],

  );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: InstaBody(),
      bottomNavigationBar: Container(
        height: 50.0,
        color: Colors.white,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home,
                ),
              onPressed: (){},
              ),
              IconButton(
                icon: Icon(
                  Icons.search,
                ),
              onPressed: null,
              ),
              IconButton(
                icon: Icon(
                  Icons.add_box,
                ),
              onPressed: null,
              ),
              IconButton(
                icon: Icon(
                  Icons.favorite,
                ),
              onPressed: null,
              ),
              IconButton(
                icon: Icon(
                  Icons.perm_identity,
                ),
              onPressed: null,
              ),
            ],
          ),
        ),
      ),

    );
  }
}