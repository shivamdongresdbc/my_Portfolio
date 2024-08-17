import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({Key? key, required this.heading}) : super(key: key);

  final String heading;
  @override
  Widget build(BuildContext context) {
    return Container(
      child:
      AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.black12,
        title: Text(
          heading,
          textAlign: TextAlign.center,
        ),
      ),
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
