import 'package:flutter/material.dart';

import 'category_screen.dart';

class SingleProduct extends StatefulWidget {
  @override
  _SingleProductState createState() => _SingleProductState();
}

class _SingleProductState extends State<SingleProduct> {
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
                builder: (_) => Category(),
              ),
            )),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_shopping_cart),
            iconSize: 30,
            color: Colors.black,
          )
        ],
        title: Text(
          'Product Title',
          style: TextStyle(color: Colors.black),
          //textAlign: TextAlign.center,
        ),
        elevation: 3.0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: ListView(
          children: <Widget>[
            Image.asset('assets/images/clothes.jpg',height: 300,width: MediaQuery.of(context).size.width*5,),
            ListTile(title: Text('Publication',style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),),trailing: Icon(Icons.arrow_forward_ios),),
            ListTile(
              title: Text('Book Title'),
            ),
            Divider(),
            ListTile(title: Text('Author Name',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),),trailing: Icon(Icons.arrow_forward_ios),),
            ListTile(
              title: Text('Book Author'),
            ),
            Divider(),
            ListTile(title: Text('Book M.R.P',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),),trailing: Icon(Icons.arrow_forward_ios),),
            ListTile(
              title: Text('Book M.R.P Price'),
            ),
            Divider(),
            ListTile(title: Text('Book Discount ',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),),trailing: Icon(Icons.arrow_forward_ios),),
            ListTile(
              title: Text('Discount %'),
            ),
            Divider(),
            ListTile(title: Text('Buy Price',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),),trailing: Icon(Icons.arrow_forward_ios),),
            ListTile(
              title: Text('Book Buy Price'),
            ),
            Divider(),
            ListTile(title: Text('Note',style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
            ),),trailing: Icon(Icons.arrow_forward_ios),),
            ListTile(
              title: Text('Note Description'),
            ),Divider(),
            ListTile(
              title: Text('Additional Details 1'),
            ),Divider(),
            ListTile(
              title: Text('Additional Details 2'),
            )



          ],
        ),
      ),
    );
  }
}
