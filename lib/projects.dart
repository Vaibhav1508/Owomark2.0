import 'package:flutter/material.dart';

import 'dashboard_screen.dart';

class Projects extends StatefulWidget {
  @override
  _ProjectsState createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
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
          'Projects',
          style: TextStyle(color: Colors.black),
          //textAlign: TextAlign.center,
        ),
        elevation: 3.0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        height: double.infinity,

        child: GridView.count(crossAxisCount: 2,
            scrollDirection: Axis.vertical,
            children: List.generate(6, (index){
              return  makeBestCategory(
                  image: 'assets/images/clothes.jpg', title: 'Clothes');
            })),
      ),

    );
  }
}


Widget makeBestCategory({String image, String title}) {
  return Column(

    children: <Widget>[
      Container(

        height: 100,
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
                    fontSize: 16),
              ),
            )),
      ),
      ListTile(
        title: Text('200 Rs',style: TextStyle(
            fontSize: 18,
            //color: Colors.green,
            fontWeight: FontWeight.bold
        ),),
        trailing: Icon(Icons.arrow_forward_ios,),
      ),

    ],
  );
}
