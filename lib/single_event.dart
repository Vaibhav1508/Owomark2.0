import 'dart:convert';

import 'package:flutter/material.dart';

import 'api_interface.dart';
import 'dashboard_screen.dart';
import 'models/event_item.dart';

class SingleEvent extends StatefulWidget {
  final String event_id;

  SingleEvent({Key key, this.event_id}) : super(key: key);

  @override
  _SingleEventState createState() => _SingleEventState();
}

class _SingleEventState extends State<SingleEvent> {
  ApiInterface apiInterface = new ApiInterface();

  //Event List
  List<EventItem> events = new List();

  String eventurl = 'http://owomark.com/owomarkapp/images/events/';

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
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add_circle),
            iconSize: 30,
            color: Colors.black,
          )
        ],
        title: Text(
          'Event Title',
          style: TextStyle(color: Colors.black),
          //textAlign: TextAlign.center,
        ),
        elevation: 3.0,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView.builder(
            itemCount: events.length,
            itemBuilder: (BuildContext context, int index) {
              final item = events[index];

              return SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Image.network(
                      eventurl + item.imageUrl,
                      height: 200,
                      width: MediaQuery.of(context).size.width * 5,
                    ),
                    ListTile(
                      title: Text(
                        'Event Title',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      title: Text(item.name),
                    ),
                    Divider(),
                    ListTile(
                      title: Text(
                        'Event Timing',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      title: Text(item.time),
                    ),
                    Divider(),
                    ListTile(
                      title: Text(
                        'Event Location',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      title: Text(item.location),
                    ),
                    Divider(),
                    ListTile(
                      title: Text(
                        'Event Price ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ),
                    ListTile(
                      title: Text(item.price + ' Rs'),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Additional Details 1'),
                    ),
                    Divider(),
                    ListTile(
                      title: Text('Additional Details 2'),
                    )
                  ],
                ),
              );
            }),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    getEvents(context);
  }

  getEvents(context) async {
    setState(() {});

    Future<dynamic> response = apiInterface.getSingleEvent(widget.event_id);

    response.then((action) async {
      print(action.toString());
      if (action != null) {
        Map data = jsonDecode(action.toString());
        if (data["status"] == "200") {
          List<dynamic> list = data['result'];
          for (int i = 0; i < list.length; i++) {
            EventItem notificationItem = EventItem.fromMap(list[i]);
            events.add(notificationItem);
          }
          setState(() {});
        } else {
          print('error');
        }
      }
    }, onError: (value) {
      print(value);
    });
  }
}
