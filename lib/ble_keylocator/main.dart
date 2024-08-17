import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/ble_keylocator/Screen/landing_page.dart';

void main() {
  runApp(const BleLocator());
}

class BleLocator extends StatelessWidget {
  const BleLocator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'BLE Home Control',
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}