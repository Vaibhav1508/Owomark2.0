import 'package:flutter/material.dart';

import 'dashboard_screen.dart';

class PaymentMethod extends StatefulWidget {
  @override
  _PaymentMethodState createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
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
            'Payment Method',
            style: TextStyle(color: Colors.black),
            //textAlign: TextAlign.center,
          ),
          elevation: 3.0,
        ),
        body: Container(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text(
                  'Cash On Delivery',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.person_pin,
                    color: Colors.white,
                  ),
                  radius: 25,
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text(
                  'no need of wallet balance',
                  style: TextStyle(fontSize: 18),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Pay from wallet',
                  style: TextStyle(fontSize: 18),
                ),
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(
                    Icons.account_balance_wallet,
                    color: Colors.white,
                  ),
                  radius: 25,
                ),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                title: Text(
                  'your wallet balance',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ));
  }
}
