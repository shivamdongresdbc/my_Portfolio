import 'package:flutter/material.dart';
import 'package:myportfolio/landing_age.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'myportfolio',
      theme: ThemeData.light(),
      home: Myportfolio(),
    );
  }
}



