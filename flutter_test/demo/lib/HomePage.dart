import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(30.0),
            child: Text(
              'FEATURED',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              )
            )
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
            child: Container(
              height: 120.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildFeaturedItem('assets/drink1.jpg', 'Item 1'),
                  _buildFeaturedItem('assets/drink2.jpg', 'Item 2'),
                  _buildFeaturedItem('assets/drink3.jpg', 'Item 3'),
                  _buildFeaturedItem('assets/drink1.jpg', 'Item 4'),
                  _buildFeaturedItem('assets/drink2.jpg', 'Item 5'),
                  _buildFeaturedItem('assets/drink3.jpg', 'Item 6'),
                ],
              )
            )
          ),
          Padding(
            padding: EdgeInsets.all(30.0),
              child: Text(
                  'WHAT\'S NEW',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                  )
              )
          )
        ],
      )
    );
  }
}

_buildFeaturedItem(String imgPath, String name) {
  return Padding(
    padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0, right: 10.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              width: 80.0,
              height: 80.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(imgPath)
                )
              )
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.black
              ),
            )
          ],
        )
      ],
    )
  );
}