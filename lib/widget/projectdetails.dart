import 'package:flutter/material.dart';
import 'package:myportfolio/ble_keylocator/Widgets/custom_drawer.dart';
import 'package:myportfolio/customAppbar/customAppbar.dart';

class ProjectInfo extends StatelessWidget {
  const ProjectInfo({
    super.key,
    required this.name,
    required this.description,
    required this.aaaa,
  });
  final String name;
  final String description;
  final Widget aaaa;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const CustomAppbar(heading: 'MY Portfolio'),
        drawer: const CustomDrawer(),
        body: Card(
          margin: EdgeInsets.all(12),
          elevation: 10,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundColor: Colors.blueAccent,
              ),
              Text(
                description,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => aaaa));
                  },
                  child: Text('continue')),
            ],
          ),
        ));
  }
}
