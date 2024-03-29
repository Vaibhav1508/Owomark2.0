import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Container(
          padding: new EdgeInsets.all(20.0),
          child: new Form(
            child: new ListView(
              children: <Widget>[
                new Container(
                    padding: new EdgeInsets.all(20.0),
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/glass.jpg'),
                          radius: 50,
                        )
                      ],
                    )),
                new Padding(
                  padding: EdgeInsets.only(left: 0.0),
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                new Container(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: new TextFormField(
                        keyboardType: TextInputType
                            .text, // Use email input type for emails.
                        decoration: new InputDecoration(
                          hintText: 'Your Name',
                          labelText: 'Enter Your First Name',
                          icon: new Icon(Icons.person_outline),
                        ))),
                new Container(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: new TextFormField(
                        keyboardType: TextInputType
                            .text, // Use email input type for emails.
                        decoration: new InputDecoration(
                          hintText: 'Your Sur Name',
                          labelText: 'Enter Your Last Name',
                          icon: new Icon(Icons.person),
                        ))),
                new Container(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: new TextFormField(
                        keyboardType: TextInputType
                            .emailAddress, // Use email input type for emails.
                        decoration: new InputDecoration(
                            hintText: 'you@example.com',
                            labelText: 'E-mail Address',
                            icon: new Icon(Icons.email)))),
                new Container(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: new TextFormField(
                        keyboardType: TextInputType
                            .phone, // Use number input type for emails.
                        decoration: new InputDecoration(
                            hintText: 'Enter Mobile Number',
                            labelText: 'Mobile Number',
                            icon: new Icon(Icons.phone)))),
                new Container(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: new TextFormField(
                        keyboardType: TextInputType
                            .phone, // Use number input type for emails.
                        decoration: new InputDecoration(
                            hintText: 'Enter City Name',
                            labelText: 'City',
                            icon: new Icon(Icons.location_city)))),
                new Container(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: new TextFormField(
                        keyboardType: TextInputType
                            .phone, // Use number input type for emails.
                        decoration: new InputDecoration(
                            hintText: 'Enter Pin Code',
                            labelText: 'Pin Codek',
                            icon: new Icon(Icons.location_on)))),
                new Container(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: new TextFormField(
                      obscureText: true, // Use secure text for passwords.
                      decoration: new InputDecoration(
                          hintText: 'Password',
                          labelText: 'Enter your password',
                          icon: new Icon(Icons.lock))),
                ),
                new Container(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: new TextFormField(
                      obscureText: true, // Use secure text for passwords.
                      decoration: new InputDecoration(
                          hintText: 'Confirm Password',
                          labelText: 'Enter your confirm password',
                          icon: new Icon(Icons.lock))),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    new Container(
                      height: 50.0,
                      width: 210.0,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 40.0),
                      child: new RaisedButton(
                        child: new Text(
                          'Register',
                          style:
                              new TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        onPressed: () => () {},
                        color: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }
}
