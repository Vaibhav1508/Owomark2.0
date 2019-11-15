import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:owomark/models/cart_items.dart';
import 'package:owomark/payment_method.dart';

import 'api_interface.dart';
import 'dashboard_screen.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  int total=0;
  int mtotal;


  ApiInterface apiInterface = new ApiInterface();

  //Category List
  List<CartItems> cartitem = new List();


  String producturl = 'http://owomark.com/owomarkapp/images/product/';

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
              Expanded(
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 0.0),
        margin: EdgeInsets.only(top: 0.0, bottom: 0.0, right: 0.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0))),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0)),
          child: ListView.builder(
            itemCount: cartitem.length,
            itemBuilder: (BuildContext context, int index) {
              final item = cartitem[index];

              int price = int.parse(item.price);
              int qty = int.parse(item.qty);

              //total = total+(price*qty);

              return GestureDetector(

                child: Container(
                  // width: 300,
                  margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                  padding:
                  EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  decoration: BoxDecoration(
                      color:  Colors.white,
                      border:
                      Border(bottom: BorderSide(color: Colors.black12))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Image.network(producturl+item.imageUrl,height: 80,width: 80,),
                          SizedBox(
                            width: 10.0,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                item.name,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Column(

                                children: <Widget>[
                                  Text(
                                    item.price + ' Rs.',
                                    style: TextStyle(
                                      color: Colors.black87,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  SizedBox(height: 7,),
                                  Text(
                                    item.qty+' Items',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 16.0,
                                    ),
                                  ),

                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[

                          IconButton(
                            icon: Icon(Icons.restore_from_trash,
                              color: Colors.red,),
                          ),

                          IconButton(
                            icon: Icon(Icons.add,color: Colors.blue,),
                          )

                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        )),
    ),

                  ListTile(
                    title: Text('Total (Price with GST)',
                      ),
                    trailing: Text(total.toString()+' Rs',style: TextStyle(
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


  @override
  void initState() {
    super.initState();
    getCart(context);
    total = 0;
  }

  getCart(context) async {
    setState(() {});

    Future<dynamic> response = apiInterface.getCart('168');

    response.then((action) async {

      print(action.toString());
      if (action != null) {
        Map data = jsonDecode(action.toString());
        if (data["status"] == "200") {
          List<dynamic> list = data['result'];
          for (int i = 0; i < list.length; i++) {
            CartItems notificationItem = CartItems.fromMap(list[i]);
            cartitem.add(notificationItem);
          }
          setState(() {
            for(int i=0;i<cartitem.length;i++){
              int qty = int.parse(cartitem[i].qty);
              int price = int.parse(cartitem[i].price);
              mtotal = qty*price;
              total = total+mtotal;
            }
          });
        } else {
          print('error');
        }
      }
    }, onError: (value) {
      print(value);
    });
  }

}
