import 'package:flutter/material.dart';
import 'package:owomark/payment_method.dart';
import 'package:owomark/widgets/cart_item.dart';

import 'dashboard_screen.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 30.0,
            color: Colors.black,
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => DashboardScreen(),
              ),
            )),
        title: Text(
          'Shopping Cart',
          style: TextStyle(color: Colors.black),
          //textAlign: TextAlign.center,
        ),
        elevation: 3.0,
      ),
      body: Column(
        children: <Widget>[
          //CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: Column(
                children: <Widget>[
                  CartItem(),

                  ListTile(
                    title: Text('Total (Price with GST)',
                      ),
                    trailing: Text('533 Rs',style: TextStyle(
                      fontSize: 20,
                      color: Colors.black87,
                      fontWeight: FontWeight.bold
                    )),
                  ),
      RaisedButton(

          color: Colors.blue,
          padding: EdgeInsets.all(
            10.0,
          ),
          shape: RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(5.0),
              side: BorderSide(color: Colors.blue)),
          highlightColor: Colors.black,
          child: new Text(
            'Checkout',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: ()=> Navigator.push(context,MaterialPageRoute(
            builder: (_)=>PaymentMethod()
          ))),
                  SizedBox(height: 10,)
                 ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
