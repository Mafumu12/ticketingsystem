import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    final _controller = TextEditingController();

    bool isSubmitting = true;
    final imag = Image.asset(
      "assets/log.png",
      height: mq.size.height / 2.8,
    );
    final buttons = Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(10, 5, 10, 20)),
        ]);
    final savebutton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(20.0),
      color: Colors.blueAccent,
      child: MaterialButton(
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          'Save',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20.0, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        onPressed: () {},
      ),
    );
    final box = TextField(
      decoration: InputDecoration(
        labelText: "Report Problem",
        labelStyle: TextStyle(fontSize: 20),
        fillColor: Colors.white,
        filled: true,
      ),
    );

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
            buttons,
            box,
            savebutton
          ],
        ),
      ),
    );
  }
}
