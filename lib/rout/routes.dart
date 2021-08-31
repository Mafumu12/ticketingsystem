import 'package:flutter/material.dart';
import 'package:tick/screens/mainscreen.dart';
import 'package:tick/screens/registration.dart';
import 'package:tick/screens/forgotpassword.dart';
import 'package:tick/screens/createtickets.dart';
import 'package:tick/screens/viewtickets.dart';
import 'package:tick/screens/settings.dart';

class Routes {
  Routes._();
  static const String grantMainscreen = '/grant-Mainscreen';
  static const String grantregistration = '/grant-registration';
  static const String grantforgotpassword = '/grant-forgotpassword';
  static const String grantcreateticket = '/grant-createticket';
  static const String grantviewticket = '/grant-viewticket';
  static const String grantsettings = 'grant-settings';
  static Map<String, WidgetBuilder> define() {
    return {
      grantMainscreen: (context) => Mainscreen(),
      grantregistration: (context) => Signup(),
      grantforgotpassword: (context) => ForgotPasswordScreen(),
      grantcreateticket: (context) => Createtickets(),
      grantviewticket: (context) => Viewtickets(),
      grantsettings: (context) => Settings()
    };
  }
}
