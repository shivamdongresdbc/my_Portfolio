import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key, required this.heading}) : super(key: key);

  final String heading;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          title: Center(
              child: Text(
            heading,
            textAlign: TextAlign.center,
          ))),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0, 1.0],
          colors: [
            Colors.black,
            Colors.yellow,
          ],
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size(900, 56);
}
