
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Widget/business_card_holder.dart';
import 'edit containt.dart';

class second_page extends StatelessWidget {
  second_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'business Card',
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.white30),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Edit_Contant(),
                  ),
                );
              },
              icon: FaIcon(FontAwesomeIcons.penClip),
            ),
          ],
        ),
        body: ListView.builder(
          itemCount: businessCardHolderList.length,
            itemBuilder: (BuildContext context, int index) {
          return businessCardHolderList[index];
        }),

    );
  }
}
