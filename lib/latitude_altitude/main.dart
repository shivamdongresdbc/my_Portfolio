import 'package:flutter/material.dart';
import 'package:myportfolio/latitude_altitude/screen/leading_screen.dart';

void main() {
  runApp(const LatitudeAltitude());
}

class LatitudeAltitude extends StatelessWidget {
  const LatitudeAltitude({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      title: 'weather_app',
      home: LeadingPPage(),
    );
  }
}
