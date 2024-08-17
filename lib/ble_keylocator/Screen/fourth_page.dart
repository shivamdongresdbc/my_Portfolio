
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/ble_keylocator/Screen/eighth_page.dart';
import 'package:myportfolio/ble_keylocator/Screen/fifth_page.dart';
import 'package:myportfolio/ble_keylocator/Screen/seventh_page.dart';
import 'package:myportfolio/ble_keylocator/Screen/sixth_page.dart';
import 'package:myportfolio/ble_keylocator/Widgets/custom_app_bar.dart';
import 'package:myportfolio/ble_keylocator/Widgets/custom_drawer.dart';


class fourthpage extends StatelessWidget {
  const fourthpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(heading: 'Device Connected'),
      drawer: CustomDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
              Get.to(const fifthpage());
            },
            child: const Text('Light UP'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.white30),
            onPressed: () {
              Get.to(const sixthpage());
            },
            child: Text('Buzz'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.white30),
            onPressed: () {
              Get.to(const seventhpage());
            },
            child: Text('Both'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.white30),
            onPressed: () {
              Get.to(const eighthpage());
            },
            child: Text('someExtraFeature'),
          ),
        ],
      ),
    );
  }
}
