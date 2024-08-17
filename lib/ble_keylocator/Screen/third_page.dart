import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myportfolio/ble_keylocator/Screen/fourth_page.dart';
import 'package:myportfolio/ble_keylocator/Screen/landing_page.dart';
import 'package:myportfolio/ble_keylocator/Widgets/custom_app_bar.dart';
import 'package:myportfolio/ble_keylocator/Widgets/custom_drawer.dart';

class third_page extends StatelessWidget {
  const third_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(heading: 'Connecting`` Device Name'),
      drawer: CustomDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Center(
          child: Container(
            height: 150,
            width: 250,
            padding: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
                border: Border.all(),
                // gradient: LinearGradient(
                //   begin: Alignment.topCenter,
                //   end: Alignment.bottomCenter,
                //   stops: [0.0, 1.0],
                //   colors: [
                //     Colors.black,
                //     Colors.yellow,
                //   ],
                // ),
                color: Colors.white),
            child: Container(
              height: 295,
              width: 395,
              color: Colors.black,
              child: Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Pairing,,,',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.pink),
                        onPressed: () {
                          Get.to(const fourthpage());
                        },
                        child: const Text('Yes'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.pink),
                        onPressed: () {
                          Get.to(const HomePage());
                        },
                        child: const Text('NO'),
                      ),
                    ],
                  )
                ],
              )),
            ),
          ),
        ),
      ),
    );
  }
}
