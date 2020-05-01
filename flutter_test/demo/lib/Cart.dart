import 'package:square_in_app_payments/models.dart';
import 'package:square_in_app_payments/in_app_payments.dart';
import 'dart:io' show Platform; // To identify platform for Square UI

import 'drink_object.dart';

import 'package:flutter/material.dart'; 
import 'package:flutter/material.dart' as flutter; // To specify using 'Card' since it is also exists in the Square library

class Cart extends StatefulWidget {
  final List<Drink> _cart;

  Cart(this._cart);

  @override
  _CartState createState() => _CartState(this._cart);
}

class _CartState extends State<Cart> {
  _CartState(this._cart);

  List<Drink> _cart;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: ListView.builder(
          itemCount: _cart.length,
          itemBuilder: (context, index) {
            var item = _cart[index];
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
              child: flutter.Card(
                elevation: 4.0,
                child: ListTile(
                  leading: CircleAvatar(backgroundImage: AssetImage(item.pic)),
                  title: Text(item.name),
                  trailing: GestureDetector(
                      child: Icon(
                        Icons.remove_circle,
                        color: Colors.red,
                      ),
                      onTap: () {
                        setState(() {
                          _cart.remove(item);
                        });
                      }),
                ),
              ),
            );
          }),
      floatingActionButton: 
        Padding ( // "CHECKOUT" BUTTON
          padding: EdgeInsets.only(
            top: 20,
            bottom: 20,
            left: 110,
            right: 110,
          ),
          child: InkWell(
            onTap: _pay,
            child: Container(
              height: 50.0,
              width: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Colors.blue,
              ),
              child: Center(
                child: Text("Checkout",
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
    );
  }
}

_pay() async {
  // Sets Square Application ID (from Square dashboard)
  await InAppPayments.setSquareApplicationId('sq0idp-3UgsCk2UMvaIAsR4EVWr1g');
  await InAppPayments.startCardEntryFlow(

      onCardNonceRequestSuccess: _onCardNonceRequestSuccess, // Successfully entered card or
      onCardEntryCancel: _onCardEntryCancel // Basically saying that user has canceled payment
    );
}

void _onCardEntryCancel() {
  // Canceled card entry
}

// This function will return card details
void _onCardNonceRequestSuccess(CardDetails result) { 
  try {
    print('SUCCESS!');
    InAppPayments.completeCardEntry(
      onCardEntryComplete: () => print('yay'));
  } catch (error) {
    print('There are problems');
    InAppPayments.showCardNonceProcessingError(error.message);
  }
}

// Closes card entry form on success
void _onCardEntryComplete() {
  // Success
}