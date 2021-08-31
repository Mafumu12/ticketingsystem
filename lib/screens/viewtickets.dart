import 'package:flutter/material.dart';
import 'package:tick/rout/routes.dart';

class Viewtickets extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);
    final imag = Image.asset(
      "assets/log.png",
      height: mq.size.height / 2.8,
    );

    final box = TextField(
      decoration: InputDecoration(
        labelText: "Username",
        labelStyle: TextStyle(fontSize: 20),
        fillColor: Colors.white,
        filled: true,
      ),
    );
    final box2 = TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        labelStyle: TextStyle(fontSize: 20),
        fillColor: Colors.white,
        filled: true,
      ),
    );
    final loginbutton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(20.0),
      color: Colors.blueAccent,
      child: MaterialButton(
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          'save',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(Routes.grantMainscreen);
        },
      ),
    );

    final buttons = Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          loginbutton,
          Padding(padding: EdgeInsets.fromLTRB(10, 5, 10, 20)),
        ]);
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: imag,
            ),
            box,
            box2,
            buttons
          ],
        ),
      ),
    );
  }
}
