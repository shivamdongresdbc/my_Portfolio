
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/ble_keylocator/Screen/third_page.dart';
import 'package:myportfolio/ble_keylocator/Widgets/custom_app_bar.dart';
import 'package:myportfolio/ble_keylocator/Widgets/custom_drawer.dart';


class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(heading: 'Avalilable Bluetooth Devices'),
      drawer: CustomDrawer(),
      body: Container(
        color: Colors.black,
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Get.to(const third_page());
            },
            child: Text('First Page'),
          ),
        ),
      ),
    );
  }
}
