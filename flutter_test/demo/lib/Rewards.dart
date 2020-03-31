import 'package:flutter/material.dart';

class Rewards extends StatefulWidget {
  @override
  _RewardsState createState() => _RewardsState();
}

class _RewardsState extends State<Rewards> {
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
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )
            )
          ),
          Padding(
            padding: EdgeInsets.only(left: 10.0, top: 10.0, bottom: 10.0),
            child: Container(
              height: 140.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildFeaturedItem('assets/drink1.jpg', 'Earl Grey Tea'),
                  _buildFeaturedItem('assets/drink2.jpg', 'Assam Tea'),
                  _buildFeaturedItem('assets/drink3.jpg', 'Thai Tea'),
                  _buildFeaturedItem('assets/drink1.jpg', 'Coconut'),
                  _buildFeaturedItem('assets/drink2.jpg', 'Matcha'),
                  _buildFeaturedItem('assets/drink3.jpg', 'Strawberry Milk'),
                ],
              )
            )
          ),
          Padding(
            padding: EdgeInsets.all(30.0),
              child: Text(
                  'WHAT\'S NEW',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight:FontWeight.bold,
                    color: Colors.black,
                  )
              )
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, top: 15.0, bottom: 10.0),
            child: Container(
              height: MediaQuery.of(context).size.height - 350.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildWhatsNewItem('assets/drink1.jpg', 'Earl Grey Tea', 'Milk Tea'),
                  _buildWhatsNewItem('assets/drink2.jpg', 'Assam Tea', 'Milk Tea'),
                  _buildWhatsNewItem('assets/drink3.jpg', 'Brown Sugar Milk Tea Boba', 'Ice Cream'),
                  _buildWhatsNewItem('assets/drink1.jpg', 'Thai Tea', 'Milk Tea')
                ],
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
              width: 100.0,
              height: 100.0,
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

_buildWhatsNewItem(String imgPath, String drinkName, String drinkType) {
  return Padding(
    padding: EdgeInsets.all(10.0),
    child: Container(
      width: 225.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 4.0,
            blurRadius: 4.0
          )
        ]
      ),
      child: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 200.0,
                width: 225.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
                  image: DecorationImage(
                    image: AssetImage(imgPath),
                    fit: BoxFit.cover
                  )
                ),
              ),
              SizedBox(height: 25.0),
              Padding(
                padding: EdgeInsets.only(left:10.0),
                child: Text(
                  drinkName,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black
                  )
                )
              ),
              SizedBox(height: 5.0),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  drinkType,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.grey
                  ),
                )
              )
            ],
          )
        ],
      )
    )
  );
}