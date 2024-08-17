import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Controller/geo_locator_controller.dart';

class LeadingPPage extends StatefulWidget {
  const LeadingPPage({Key? key}) : super(key: key);

  @override
  State<LeadingPPage> createState() => _LeadingPPageState();
}

class _LeadingPPageState extends State<LeadingPPage> {
  GetLocatorController _geoLocatorCout = Get.put(GetLocatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('WeatherApp'),
          backgroundColor: Colors.lightBlueAccent,
          shadowColor: Colors.lightBlueAccent,
        ),
        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.water_drop_sharp,
                      size: 122,
                    ),
                    Column(
                      children: [
                        Container(
                            child: Obx(() => Column(children: [
                                  Text(
                                    'Longitude: ${_geoLocatorCout.longitude.value}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                                  Text(
                                    'Latitude: ${_geoLocatorCout.latitude.value}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24),
                                  ),
                              Text(
                                'Address: ${_geoLocatorCout.address.value}',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24),
                              ),

                                ])))
                      ],
                    ),

                  ],
                ),
              ]),
        ));
  }
}
