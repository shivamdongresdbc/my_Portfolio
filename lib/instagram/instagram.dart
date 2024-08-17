import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:myportfolio/instagram/bnb_controller.dart';

class InstagramLandingPage extends StatefulWidget {
  const InstagramLandingPage({Key? key}) : super(key: key);

  @override
  State<InstagramLandingPage> createState() => _InstagramLandingPageState();
}

class _InstagramLandingPageState extends State<InstagramLandingPage> {

  final BNBController bnbCont = Get.put(BNBController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Card(
            child: Text('Instagram'),
          ),
        ),
      ),
      body: Obx(() => IndexedStack(
    index: bnbCont.curruntIndex.value,
    children: [
    Center(
    child: Card(
    child: Icon(Icons.add),
    ),
    ),
    Center(
    child: Card(
    child: Icon(Icons.account_circle),
    ),
    ),
    Center(
    child: Card(
    child: Icon(Icons.add_call),
    ),
    )
    ],
    ),),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (val) {
          bnbCont.changeIndex(val);
        },
        currentIndex: bnbCont.curruntIndex.value,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'favourate'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'setting'),
        ],
      ),
    );
  }
}
