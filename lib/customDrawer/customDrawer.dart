import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Card(
            child: DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.0, 1.0],
                      colors: [Colors.green, Colors.redAccent])),
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.black12,
                    radius: 30,
                  ),
                  Text(
                    'Shivam Dongre',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'M.Tech Computer ENGG',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'SGSITS,Indore',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Flutter UI Developer at Platforuma | Getx Trainee |Low Energy Bluetooth Trainee',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
              ),
              Text(
                'Technical Skills',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
              Text('Java Core, HTML, CSS, ',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 25,
                      color: Colors.black54)),
              Text(
                'Strengths ,,,',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 30),
              ),
              Text(
                  'Enthusiasm, Trustworthiness, Creativity, Discipline, Patience, Respectfulness',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                      color: Colors.black54)),
              Text(
                'Hobbies ,,,',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 26,
                ),
              ),
              Text('Coding, Travelling, Bike Riding, Parties, Nature, Minding My Business',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 22,
                      color: Colors.black54)),
            ],
          )
        ],
      ),
    );
  }
}
