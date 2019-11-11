import 'package:flutter/material.dart';
import 'package:owomark/models/mybook_model.dart';
import 'package:owomark/models/myinstitute_model.dart';

class MyInstitute extends StatefulWidget {
  @override
  _MyInstituteState createState() => _MyInstituteState();
}

class _MyInstituteState extends State<MyInstitute> {
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
              itemCount: inst.length,
              itemBuilder: (BuildContext context, int index) {


                return GestureDetector(

                  child: Container(
                    // width: 300,
                    margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                    padding:
                    EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
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
                                Icons.book,
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
                                  inst[index].title,
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
                                    inst[index].text,
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
                        Row(
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.restore_from_trash,
                                color: Colors.red,),
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
