import 'package:flutter/material.dart';
import './login_page.dart';
import './tenent_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      
      ),
      home: TenentPage(),
    );
  }
}


