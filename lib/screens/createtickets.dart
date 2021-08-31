import 'package:flutter/material.dart';
import 'package:tick/rout/routes.dart';

class Createtickets extends StatelessWidget {
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
        labelText: "Name",
        labelStyle: TextStyle(fontSize: 20),
        fillColor: Colors.white,
        filled: true,
      ),
    );
    final box2 = TextField(
      decoration: InputDecoration(
        labelText: "Surname",
        labelStyle: TextStyle(fontSize: 20),
        fillColor: Colors.white,
        filled: true,
      ),
    );
    final box3 = TextField(
      decoration: InputDecoration(
        labelText: "phone",
        labelStyle: TextStyle(fontSize: 20),
        fillColor: Colors.white,
        filled: true,
      ),
    );
    final box4 = TextField(
      decoration: InputDecoration(
        labelText: "Company Name",
        labelStyle: TextStyle(fontSize: 20),
        fillColor: Colors.white,
        filled: true,
      ),
    );
    final box1 = TextField(
      decoration: InputDecoration(
        labelText: "Branch Name",
        labelStyle: TextStyle(fontSize: 20),
        fillColor: Colors.white,
        filled: true,
      ),
    );
    final box5 = TextField(
      decoration: InputDecoration(
        labelText: "City Name",
        labelStyle: TextStyle(fontSize: 20),
        fillColor: Colors.white,
        filled: true,
      ),
    );
    final box6 = TextField(
      decoration: InputDecoration(
        labelText: "GSM company Adress",
        labelStyle: TextStyle(fontSize: 20),
        fillColor: Colors.white,
        filled: true,
      ),
    );
    final box7 = TextField(
      decoration: InputDecoration(
        labelText: "Region",
        labelStyle: TextStyle(fontSize: 20),
        fillColor: Colors.white,
        filled: true,
      ),
    );
    final box8 = TextField(
      decoration: InputDecoration(
        labelText: "EMAIL ADRESS",
        labelStyle: TextStyle(fontSize: 20),
        fillColor: Colors.white,
        filled: true,
      ),
    );
    final box9 = TextField(
      decoration: InputDecoration(
        labelText: "Technichian Adress",
        labelStyle: TextStyle(fontSize: 20),
        fillColor: Colors.white,
        filled: true,
      ),
    );
    final box10 = TextField(
      decoration: InputDecoration(
        labelText: "Problem Description",
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
        padding: EdgeInsets.all(25),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(200),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 0),
              ),
              imag,
              box,
              box2,
              box3,
              box4,
              box5,
              box6,
              box7,
              box8,
              box9,
              box10,
              box1,
              buttons
            ],
          ),
        ),
      ),
    );
  }
}
