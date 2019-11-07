import 'package:flutter/material.dart';
import 'package:owomark/models/order_model.dart';
import 'package:owomark/models/transaction_model.dart';

import '../chat_screen.dart';

class Transaction extends StatefulWidget {
  @override
  _TransactionState createState() => _TransactionState();
}

class _TransactionState extends State<Transaction> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
              itemCount: transactions.length,
              itemBuilder: (BuildContext context, int index) {
                final Transactions transaction = transactions[index];

                return GestureDetector(

                  child: Container(
                    // width: 300,
                    margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                    padding:
                    EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    decoration: BoxDecoration(
                        color: transaction.delivered ? Colors.white : Colors.white,
                        border:
                        Border(bottom: BorderSide(color: Colors.black12))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 20.0,
                              backgroundColor: Colors.blue,
                              child: Icon(
                                Icons.check_circle,
                                color: Colors.white,
                                size: 25,
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  transaction.title,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 15.0,
                                ),
                                Container(
                                  width:
                                  MediaQuery.of(context).size.width * 0.50,
                                  child: Text(
                                    transaction.text,
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15.0,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            transaction.delivered ? Text(
                              '+ ' + transaction.price + ' Rs.',
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ):
                            Text(
                              '- ' + transaction.price + ' Rs.',
                              style: TextStyle(
                                color:Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(
                              height: 5.0,
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )),
    );
  }
}
