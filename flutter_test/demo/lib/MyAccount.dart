import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[350],
        title: const Text('BOBA TOUCH',
          style: TextStyle(
              fontFamily: 'Sunset Boulevard',
              color:Colors.black,
            fontSize: 40,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Colors.black,
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding( // HEADER
            padding: EdgeInsets.all(30.0),
            child: Text(
              'MY ACCOUNT',
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
                  image: AssetImage('assets/userimage.jpg')
                  //image: NetworkImage("${user?photoUrl}") 
                )
              ),
            )
          ),
          Padding ( // USER'S NAME
            padding: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 0.0,
              bottom: 0.0
            ),
            child: Text(
              'HERMIONE G.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )
            )
          ),
          Padding (
            padding: EdgeInsets.only(
              left: 40.0,
              right: 0.0,
              top: 40.0,
              bottom: 0.0
            ),
            child: Text(
              'E-MAIL:',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.black,
              )
            ),
          ),
          Padding (
            padding: EdgeInsets.only(
              left: 60.0,
              right: 0.0,
              top: 0.0,
              bottom: 0.0
            ),
            child: Text(
              'someuseremail@email.com',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )
            )
          ),
          Padding (
            padding: EdgeInsets.only(
              left: 40.0,
              right: 0.0,
              top: 10.0,
              bottom: 0.0
            ),
            child: Text(
              'PASSWORD:',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.black,
              )
            ),
          ),
          Padding (
            padding: EdgeInsets.only(
              left: 60.0,
              right: 0.0,
              top: 0.0,
              bottom: 0.0
            ),
            child: Text(
              '*******password',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )
            )
          ),
          Padding (
            padding: EdgeInsets.only(
              left: 40.0,
              right: 0.0,
              top: 10.0,
              bottom: 0.0
            ),
            child: Text(
              'PAYMENT INFORMATION:',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 15.0,
                color: Colors.black,
              )
            ),
          ),
          Padding (
            padding: EdgeInsets.only(
              left: 60.0,
              right: 0.0,
              top: 0.0,
              bottom: 0.0
            ),
            child: Text(
              '****-****-****-1234',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )
            )
          ),
        ],
      ),
    );
  }
}