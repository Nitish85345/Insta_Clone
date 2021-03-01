import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:insta_clone/insta_stories.dart';

class InstaList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 5, // always keep +1
      itemBuilder: (context, index) => index == 0 ? SizedBox(
        child:InstaStories(),
        height: deviceSize.height* 0.2,
      ): 
      
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
            // 1st Row
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 40.0,
                            width: 40.0,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: new DecorationImage(
                                  fit: BoxFit.fill,
                                  image: new NetworkImage("https://upload.wikimedia.org/wikipedia/en/7/7d/Lenna_%28test_image%29.png")),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Liza roy',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ]
                ),
                IconButton(
                  icon: Icon(Icons.more_vert), 
                  onPressed: null
                )
              ],
            ),
          ),

          // 2nd Row
          Flexible(
                  fit: FlexFit.loose,
                  child: new Image.network(
                    "https://upload.wikimedia.org/wikipedia/en/7/7d/Lenna_%28test_image%29.png",
                    fit: BoxFit.cover,
                  ),
          ),
          
          // 3rd Row
          Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(FontAwesomeIcons.heart),
                          onPressed: (){},
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        Icon(
                          FontAwesomeIcons.comment,
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        Icon(FontAwesomeIcons.paperPlane),
                      ],
                    ),
                    new Icon(FontAwesomeIcons.bookmark)
                  ],
                ),
          ),

          // 4th Row
          Padding(
            padding: EdgeInsets.fromLTRB(16.0, 0, 0, 0),
            child: Text(
              'Liked by Nitish Kumar, nk and 123,456 others',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          //5th Row
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 0.0, 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                new Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage("https://upload.wikimedia.org/wikipedia/en/7/7d/Lenna_%28test_image%29.png")),
                  ),
                ),
                new SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: new TextField(
                    decoration: new InputDecoration(
                      border: InputBorder.none,
                      hintText: "Add a comment...",
                    ),
                  ),
                ),
              ],
            ),
          ),

          // 6th Row
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              '1 Day Ago',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
      ],
      ),
    );
  }
}