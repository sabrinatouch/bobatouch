import 'package:flutter/material.dart';

import 'package:square_in_app_payments/models.dart';
import 'package:square_in_app_payments/in_app_payments.dart';
import 'dart:io' show Platform; // To identify platform for Square UI

import 'main.dart';
//import 'package:http/http.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  void _pay() async {
    try {
      await InAppPayments.setSquareApplicationId('sq0idp-3UgsCk2UMvaIAsR4EVWr1g');
      for( var i = 1 ; i <= 4; i++ ) {
        Future.delayed(Duration(seconds: i), () => print(i));
      }
      await InAppPayments.startCardEntryFlow(
          onCardNonceRequestSuccess: _cardNonceRequestSuccess,
          // Successfully entered card or
          onCardEntryCancel: _cardEntryCancel // Basically saying that user has canceled payment

      );
    } catch (ex){
      InAppPayments.showCardNonceProcessingError(ex.toString());
    }
  }

//  Future<http.Response> sendNonce(String nonce) {
//    return http.post(
//      'https://square-test-42.herokuapp.com/chargeForCookie',
//      headers: <String, String>{
//        'Content-Type': 'application/json; charset=UTF-8',
//      },
//      body: jsonEncode(<String, String>{
//        'nonce': nonce,
//      }),
//    );
//  }

  void _cardEntryCancel() {
    // Canceled card entry
    MyStatefulWidget();
  }

  // This function will return card details
  void _cardNonceRequestSuccess(CardDetails result) {
    //print(sendNonce(result.nonce));
    try {
      // take payment with the card nonce details
      // you can take a charge
      // await chargeCard(result);

      // payment finished successfully
      // you must call this method to close card entry
      for( var i = 5; i <= 8; i++ ) {
        Future.delayed(Duration(seconds: i), () => print(i));
      }
      InAppPayments.completeCardEntry(
          onCardEntryComplete: _onCardEntryComplete);
    } catch (ex) {
      // payment failed to complete due to error
      // notify card entry to show processing error
      InAppPayments.showCardNonceProcessingError(ex.toString());
    }
  }

  void _onCardEntryComplete() {
    // Success
    MyStatefulWidget();
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