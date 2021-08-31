import 'package:flutter/material.dart';
import 'package:tick/rout/routes.dart';

class Mainscreen extends StatefulWidget {
  @override
  _MainscreenViewState createState() => _MainscreenViewState();
}

class _MainscreenViewState extends State<Mainscreen> {
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    final createticketbutton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(20.0),
      color: Colors.blueAccent,
      child: MaterialButton(
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          'NewTicket +',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(Routes.grantcreateticket);
        },
      ),
    );
    final setbutton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(20.0),
      color: Colors.blueAccent,
      child: MaterialButton(
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          'Settings',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(Routes.grantsettings);
        },
      ),
    );
    final viewticketbutton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(20.0),
      color: Colors.blueAccent,
      child: MaterialButton(
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          'Open Tickets',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        onPressed: () {
          Navigator.of(context).pushNamed(Routes.grantMainscreen);
        },
      ),
    );
    final imag = Image.asset(
      "assets/log.png",
      height: mq.size.height / 2.8,
    );
    final buttons = Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          createticketbutton,
          Padding(padding: EdgeInsets.fromLTRB(10, 5, 10, 20)),
          viewticketbutton,
          Padding(padding: EdgeInsets.fromLTRB(10, 5, 10, 20)),
          setbutton
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
            buttons
          ],
        ),
      ),
    );
  }
}
