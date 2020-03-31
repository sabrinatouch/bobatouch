import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

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
              'REWARDS',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )
            )
          ),
          new CircularPercentIndicator(
            radius: 300.0,
            lineWidth: 15.0,
            percent: 0.73,
            center: new Icon(
              Icons.local_cafe,
              size: 110.0,
              color: Colors.grey,
              ),
            progressColor: Colors.cyan,
            backgroundColor: Colors.blueGrey,
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Purchases until next reward:',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )
            )
          ),
          Padding(
            padding: EdgeInsets.all(0.0),
            child: Text(
              '5',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )
            )
          ),
          Padding( 
            padding: EdgeInsets.only(
              left: 100, 
              right: 100, 
              top: 10, 
              bottom: 10
              ),
            child: InkWell( 
              onTap: () {},
              child: Container( 
                height: 50.0,
                width: 100.0,
                decoration: BoxDecoration( 
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.cyan,

                ),
                child: Center(
                  child: Text( 
                    "Redeem",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
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