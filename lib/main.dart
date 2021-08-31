import 'package:flutter/material.dart';
import 'package:tick/screens/login screen.dart';
import 'package:tick/rout/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ticketing application',
      home: LoginScreen(),
      routes: Routes.define(),
    );
  }
}
