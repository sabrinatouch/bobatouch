import 'package:flutter/material.dart';
import 'MyAccount.dart';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: ListView(
        children: <Widget>[
          Padding( // HEADER
            padding: EdgeInsets.all(30.0),
            child: Text(
              'MORE',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )
            )
          ),
          Padding( // IMAGE
            padding: EdgeInsets.only(
              left: 100,
              right: 100,
              top: 10,
              bottom: 10
              ),
            child: Container(
              width: 200.0,
              height: 200.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/drink1.jpg')
                )
              )
            )
          ),
          Padding( // "MY ACCOUNT" BUTTON
            padding: EdgeInsets.only(
              left: 100,
              right: 100,
              top: 10,
              bottom: 10
              ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                  MyAccount()));
              },
              child: Container(
                height: 50.0,
                width: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.blue,
                ),
                child: Center(
                  child: Text("My Account",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
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