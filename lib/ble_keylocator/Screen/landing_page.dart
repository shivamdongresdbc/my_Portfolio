
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/ble_keylocator/Screen/second_page.dart';
import 'package:myportfolio/ble_keylocator/Widgets/custom_app_bar.dart';
import 'package:myportfolio/ble_keylocator/Widgets/custom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        heading: "BLE Home",
      ),
      drawer: CustomDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'TURN ON YOUR BLUETOOTH',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.pink,
              ),
              onPressed: () {
                Get.to(const SecondPage());
              },
              child: const Text('OK'),
            ),
          ],
        ),
      ),
    );
  }
}
