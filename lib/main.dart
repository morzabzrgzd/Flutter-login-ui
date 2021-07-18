import 'package:flutter/material.dart';
import 'package:okey_vila/screens/login_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Okey Villa',
      theme: ThemeData(
        fontFamily: 'Shabnam',
        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    );
  }
}
