import 'package:flutter/material.dart';
import 'package:myportfolio/customAppbar/customAppbar.dart';
import 'package:myportfolio/customDrawer/customDrawer.dart';
import 'package:myportfolio/widget/projects_in.dart';

class Myportfolio extends StatelessWidget {
  Myportfolio({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(heading: 'My portfolio'),
      drawer: const CustomDrawer(),
      body:  GridView.builder(

            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),

            itemCount: projectsCardHolderList.length,
            itemBuilder: (BuildContext context, int index) {
              return projectsCardHolderList[index];
            }),

    );
  }
}
