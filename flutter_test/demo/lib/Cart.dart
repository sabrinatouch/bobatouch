import 'package:flutter/material.dart';

import 'package:square_in_app_payments/models.dart';
import 'package:square_in_app_payments/in_app_payments.dart';
import 'dart:io' show Platform; // To identify platform for Square UI

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  void _pay() {
    InAppPayments.setSquareApplicationId('sq0idp-3UgsCk2UMvaIAsR4EVWr1g');
    InAppPayments.startCardEntryFlow(
      onCardNonceRequestSuccess: _cardNonceRequestSuccess, // Successfully entered card or
      onCardEntryCancel: _cardEntryCancel // Basically saying that user has canceled payment
    );
  }

  void _cardEntryCancel() {
    // Canceled card entry
  }

  // This function will return card details
  void _cardNonceRequestSuccess(CardDetails result) { 
    print(result.nonce);

    InAppPayments.completeCardEntry(
      onCardEntryComplete: _cardEntryComplete,
    );
  }

  void _cardEntryComplete() {
    // Success
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
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
            color: Colors.blue,
            onPressed: () {},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding( // HEADER
            padding: EdgeInsets.all(30.0),
            child: Text(
              'CART',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )
            )
          ),
          Padding( // "CHECKOUT" BUTTON
            padding: EdgeInsets.only(
              left: 100,
              right: 100,
              top: 10,
              bottom: 10
              ),
            child: InkWell(
              onTap: _pay,
              // onTap: () { // For second navigation
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) =>
              //     Checkout()));
              // },
              child: Container(
                height: 50.0,
                width: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.cyan,
                ),
                child: Center(
                  child: Text("Checkout",
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