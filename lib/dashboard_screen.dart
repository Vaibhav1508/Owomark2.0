import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:owomark/create_profile.dart';
import 'package:owomark/home_screen.dart';
import 'package:owomark/news_feed.dart';
import 'package:owomark/wallet_screen.dart';

import 'category_screen.dart';
import 'chat_screen.dart';
import 'models/message_model.dart';
import 'orders_screen.dart';

class DashboardScreen extends StatefulWidget {
  @override
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: new Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(
                  'Welcome, Vaibhav Mehta',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                accountEmail: Text(
                  'vaibhav.18@gmail.com',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    'V',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  'Home',
                  style: TextStyle(fontSize: 16),
                ),
                trailing: Icon(Icons.home),
              ),
              ListTile(
                title: Text(
                  'Category',
                  style: TextStyle(fontSize: 16),
                ),
                trailing: Icon(Icons.library_books),
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Category())),
              ),
              ListTile(
                title: Text(
                  'Wallet',
                  style: TextStyle(fontSize: 16),
                ),
                trailing: Icon(Icons.account_balance_wallet),
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => WalletScreen())),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Profile',
                  style: TextStyle(fontSize: 16),
                ),
                trailing: Icon(Icons.person),
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (_) => CreateProfile())),
              ),
              ListTile(
                title: Text(
                  'Messages',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomeScreen())),
                trailing: Icon(Icons.email),
              ),
              ListTile(
                title: Text(
                  'Shopping cart',
                  style: TextStyle(fontSize: 16),
                ),
                trailing: Icon(Icons.shopping_cart),
              ),
              ListTile(
                title: Text(
                  'Orders',
                  style: TextStyle(fontSize: 16),
                ),
                trailing: Icon(Icons.shopping_basket),
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (_) => OrderScreen())),
              ),
              Divider(),
              ListTile(
                title: Text(
                  'Notification',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                trailing: Icon(Icons.notifications),
              ),
              ListTile(
                title: Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                trailing: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
              icon: Icon(Icons.menu),
              iconSize: 30.0,
              color: Colors.black,
              onPressed: () {}),
          title: Text(
            'Owomark',
            style: TextStyle(color: Colors.black),
            textAlign: TextAlign.center,
            //textAlign: TextAlign.center,
          ),
          elevation: 4.0,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.image),
                iconSize: 30.0,
                color: Colors.grey,
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => NewsFeed(),
                      ),
                    )),
            IconButton(
                icon: Icon(Icons.shopping_cart),
                iconSize: 30.0,
                color: Colors.grey,
                onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => HomeScreen(),
                      ),
                    )),
          ],
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Container(
                height: 115,
                child: ListView.builder(
                  itemCount: category.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 10.0),
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ChatScreen(),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage:
                                  AssetImage(category[index].imageUrl),
                            ),
                            SizedBox(
                              height: 6.0,
                            ),
                            Text(
                              category[index].name,
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Books",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("All")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    makeCategory(
                        image: 'assets/images/clothes.jpg', title: 'Clothes'),
                    makeCategory(
                        image: 'assets/images/glass.jpg', title: 'Glass'),
                    makeCategory(
                        image: 'assets/images/clothes.jpg', title: 'Clothes'),
                    makeCategory(
                        image: 'assets/images/glass.jpg', title: 'Glass'),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Best Deals",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("All")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    makeBestCategory(
                        image: 'assets/images/clothes.jpg', title: 'Clothes'),
                    makeBestCategory(
                        image: 'assets/images/glass.jpg', title: 'Glass'),
                    makeBestCategory(
                        image: 'assets/images/clothes.jpg', title: 'Clothes'),
                    makeBestCategory(
                        image: 'assets/images/glass.jpg', title: 'Glass'),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Institutes",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("All")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    makeInstitute(
                        image: 'assets/images/clothes.jpg',
                        title: 'Angle Classes'),
                    makeInstitute(
                        image: 'assets/images/glass.jpg', title: 'Glass'),
                    makeInstitute(
                        image: 'assets/images/clothes.jpg', title: 'Clothes'),
                    makeInstitute(
                        image: 'assets/images/glass.jpg', title: 'Glass'),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Activitiy Events",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("All")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    makeActivity(
                        image: 'assets/images/clothes.jpg',
                        title: 'Treasure Hunt'),
                    makeActivity(
                        image: 'assets/images/glass.jpg', title: 'Cpp Coding'),
                    makeActivity(
                        image: 'assets/images/clothes.jpg', title: 'Pubg'),
                    makeActivity(
                        image: 'assets/images/glass.jpg', title: 'Quiz'),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Paying Guest",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("All")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    makeBestCategory(
                        image: 'assets/images/clothes.jpg', title: 'Clothes'),
                    makeBestCategory(
                        image: 'assets/images/glass.jpg', title: 'Glass'),
                    makeBestCategory(
                        image: 'assets/images/clothes.jpg', title: 'Clothes'),
                    makeBestCategory(
                        image: 'assets/images/glass.jpg', title: 'Glass'),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Projects",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text("All")
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    makeProject(
                        image: 'assets/images/clothes.jpg', title: 'Clothes'),
                    makeProject(
                        image: 'assets/images/glass.jpg', title: 'Glass'),
                    makeProject(
                        image: 'assets/images/clothes.jpg', title: 'Clothes'),
                    makeProject(
                        image: 'assets/images/glass.jpg', title: 'Glass'),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  Widget makeCategory({String image, String title}) {
    return AspectRatio(
      child: Container(
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.2),
                ])),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            )),
      ),
      aspectRatio: 2 / 2.2,
    );
  }

  Widget makeProject({String image, String title}) {
    return AspectRatio(
      child: Container(
        margin: EdgeInsets.only(right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.2),
                ])),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            )),
      ),
      aspectRatio: 2 / 2.2,
    );
  }

  Widget makeBestCategory({String image, String title}) {
    return AspectRatio(
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                  Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.2),
                ])),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            )),
      ),
      aspectRatio: 4 / 2.1,
    );
  }

  Widget makeInstitute({String image, String title}) {
    return AspectRatio(
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ])),
          child: Row(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
      aspectRatio: 5 / 2.1,
    );
  }

  Widget makeActivity({String image, String title}) {
    return AspectRatio(
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ])),
          child: Row(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
      aspectRatio: 4 / 2.1,
    );
  }

  Widget makepg({String image, String title}) {
    return AspectRatio(
      child: Container(
        margin: EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ])),
          child: Row(
            children: <Widget>[
              Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                ),
              ),
              SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
      aspectRatio: 4 / 2.1,
    );
  }
}
