import 'package:flutter/material.dart';

class InstaStories extends StatelessWidget {

  final topText = Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        'Stories',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      Row(
        children: [
          Icon(Icons.play_arrow),
          Text(
            'Watch All',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ],
  );

  final stories = Expanded( // we can only use Expanded widget inside Row or Column widget
    child: Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              width: 60.0,
              height: 60.0,

              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage('https://upload.wikimedia.org/wikipedia/en/7/7d/Lenna_%28test_image%29.png')
                ),
              ),
              margin: EdgeInsets.symmetric(horizontal: 8.0,),
            ),
            index == 0 ? Positioned(
              right: 10.0,
              child: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                radius: 10.0,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 14.0,
                ),
              ),
            ) : Container()
          ],
        ),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16.0),
      child: Column(
        children: [
          topText,
          stories,
        ],
      ),
      
    );
  }
}