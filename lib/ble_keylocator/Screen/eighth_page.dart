import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/ble_keylocator/Screen/fourth_page.dart';
import 'package:myportfolio/ble_keylocator/Screen/landing_page.dart';


import '../../customDrawer/customDrawer.dart';
import '../Widgets/custom_app_bar.dart';

class eighthpage extends StatelessWidget {
  const eighthpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(heading: 'Device Connected'),
      drawer: CustomDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center ,
        children: [

          Text('Device Name Connected',
              style: TextStyle(
                color: Colors.white30,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              )),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.white38),
            onPressed: () {
              Get.to(const fourthpage());
            },
            child: const Text('Light UP'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.white30),
            onPressed: () {
              Get.to(const fourthpage());
            },
            child: Text('Buzz'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.white30),
            onPressed: () {
              Get.to(const fourthpage());
            },
            child: Text('Both'),
          ),
          ElevatedButton(
            style:ElevatedButton.styleFrom(primary: Colors.white30),
            onPressed: () {
              Get.to(const fourthpage());
            },
            child: Text('someExtraFeature'),
          ),
          ElevatedButton(
            style:ElevatedButton.styleFrom(primary: Colors.white30),
            onPressed: () {
              Get.to(const HomePage());
            },
            child: Text('homepage'),
          ),
        ],
      ),

    );
  }
}
