import 'package:flutter/material.dart';
import 'package:myportfolio/bmi_calculator/main.dart';
import 'package:myportfolio/business_card/main.dart';
import 'package:myportfolio/instagram/main.dart';
import 'package:myportfolio/latitude_altitude/main.dart';
import 'package:myportfolio/peytm_prototype/main.dart';
import 'package:myportfolio/weather_app/main.dart';
import 'package:myportfolio/widget/projectdetails.dart';

import '../ble_keylocator/main.dart';

List<ProjectsCardHolder> projectsCardHolderList = [
  ProjectsCardHolder(
    name: 'Weather App',
    pages: ProjectInfo(
        name: 'Weather APP...',
        description: 'this will show you the UI/UX of the weather app.',
        aaaa: MyWeatherApp()),
  ),
  ProjectsCardHolder(
      name: 'BLE Keylocator',
      pages: ProjectInfo(
        name: 'BLE Keylocator',
        description: 'this will show you the UI/UX of the BLE KeyLocator app.',
        aaaa: BleLocator(),
      )),
  ProjectsCardHolder(
      name: 'BMI Calculator',
      pages: ProjectInfo(
        name: 'BMI Calculator',
        description: 'this will take values form user and give BMI as Results.',
        aaaa: BmiCalculator(),
      )),
  ProjectsCardHolder(
      name: 'BusinessCard',
      pages: ProjectInfo(
        name: 'BusinessCard',
        description:
            'this APP is made with custom widgets,User can add the data for a while in this app',
        aaaa: Businesscard(),
      )),
  ProjectsCardHolder(
      name: 'Instagram Prototype',
      pages: ProjectInfo(
        name: 'Instagram Prototype',
        description:
            'this APP is made with custom widgets,User can add the data for a while in this app',
        aaaa: Instagramm(),
      )),
  ProjectsCardHolder(
      name: 'Latitude Altitude',
      pages: ProjectInfo(
        name: 'Latitude Altitude',
        description:
            'this APP is made for grtting your latitude_Altitude point,, for kowing your currunt location',
        aaaa: LatitudeAltitude(),
      )),
  ProjectsCardHolder(
      name: 'PeytmPrototype',
      pages: ProjectInfo(
        name: 'PeytmPrototype',
        description:
        'this will show you the UI/UX of the Peytm Prototype app.',
        aaaa: PeytmPrototype(),
      )),
];

class ProjectsCardHolder extends StatelessWidget {
  const ProjectsCardHolder({
    super.key,
    required this.name,
    required this.pages,
  });
  final String name;
  final Widget pages;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(5),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => pages));
          },
          child: Card(
            elevation: 10,
            child: GridTile(
              child: GridTileBar(
                leading: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.blueAccent,
                ),
              ),
              footer: Container(
                padding: EdgeInsets.all(5),
                alignment: Alignment.center,
                child: Text(
                  name,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
