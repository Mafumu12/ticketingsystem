import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupViewState createState() => _SignupViewState();
}

class _SignupViewState extends State<Signup> {
  @override
  final _formkey = GlobalKey<FormState>();
  final _controller = TextEditingController();

  bool isSubmitting = false;

  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    final emailField = TextFormField(
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
          hintText: "something@example.com",
          labelText: "Email",
          hintStyle: TextStyle(color: Colors.white)),
    );
    final nameField = TextFormField(
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
          hintText: "e.g john",
          labelText: "Name",
          hintStyle: TextStyle(color: Colors.white)),
    );
    final surnameField = TextFormField(
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
          hintText: "e.g john",
          labelText: "Surname",
          hintStyle: TextStyle(color: Colors.white)),
    );
    final companynameField = TextFormField(
      controller: _controller,
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
          hintText: "e.g microsoft",
          labelText: "Company Name",
          hintStyle: TextStyle(color: Colors.white)),
    );
    final branchField = TextFormField(
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
          hintText: "e.g lef",
          labelText: "BranchName",
          hintStyle: TextStyle(color: Colors.white)),
    );
    final telephoneField = TextFormField(
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
          hintText: "e.g 905488890393",
          labelText: "Telephone",
          hintStyle: TextStyle(color: Colors.white)),
    );
    final cityField = TextFormField(
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
          hintText: "e.g Lefke",
          labelText: "City",
          hintStyle: TextStyle(color: Colors.white)),
    );
    final regionField = TextFormField(
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
          hintText: "e.g st",
          labelText: "Region",
          hintStyle: TextStyle(color: Colors.white)),
    );
    final usernameField = TextFormField(
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
          hintText: "e.g john",
          labelText: "Username",
          hintStyle: TextStyle(color: Colors.white)),
    );
    final passwordField = TextFormField(
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
          hintText: "e.g john",
          labelText: "Password",
          hintStyle: TextStyle(color: Colors.white)),
    );
    final repeatpasswordField = TextFormField(
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
          hintText: "e.g john",
          labelText: "RepeatePassword",
          hintStyle: TextStyle(color: Colors.white)),
    );
    final imag = Image.asset(
      "assets/log.png",
      height: mq.size.height / 2.8,
    );
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
    final fields = Padding(
      padding: EdgeInsets.all(36),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          imag,
          nameField,
          surnameField,
          companynameField,
          branchField,
          telephoneField,
          cityField,
          regionField,
          emailField,
          usernameField,
          passwordField,
          repeatpasswordField,
        ],
      ),
    );

    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Form(
        key: _formkey,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[fields, savebutton],
          ),
        ),
      ),
    );
  }
}
