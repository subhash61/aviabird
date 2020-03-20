

import 'package:flutter/material.dart';
import './login_page.dart';

class TenentPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _TenentPageState createState() => _TenentPageState();
}

class _TenentPageState extends State<TenentPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 48.0,
        child: Image.asset('assets/LOGO.png'),
      ),
    );

    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'teamdomains',
      
      decoration: InputDecoration(
          hintText: 'Company Name',
          contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))),
    );
 

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        borderRadius: BorderRadius.circular(32.0),
        shadowColor: Colors.lightBlueAccent.shade100,
        elevation: 5.0,
        child: MaterialButton(
          minWidth: 200.0,
          height: 42.0,
          onPressed: () {
               Navigator.of(context)
                .push(MaterialPageRoute<Null>(builder: (BuildContext context) {
              return LoginPage();
            }));
          },
          color: Colors.lightBlueAccent,
          child: Text(
            'Continue',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
    final forgotLabel = FlatButton(
      child: Text(
        'Dont know your domain ?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(
              height: 8.0,
            ),
           
            SizedBox(
              height: 24.0,
            ),
            loginButton,
            
            forgotLabel
          ],
        ),
      ),
    );
  }
}
