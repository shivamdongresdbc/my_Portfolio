import 'package:flutter/material.dart';
import 'package:myportfolio/business_card/login_screen.dart';

void main() {
  runApp(const Businesscard());
}

class Businesscard extends StatelessWidget {
  const Businesscard({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Business card',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BusinessCard(),
    );
  }
}

class BusinessCard extends StatefulWidget {
  const BusinessCard({Key? key}) : super(key: key);

  @override
  State<BusinessCard> createState() => _BusinessCardState();
}

class _BusinessCardState extends State<BusinessCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: const Text('BusinessCard'),
        ),
      ),
      body:  Card(
          elevation: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.red,
                    child: Image.asset(
                      'assets/image/shivam_dongre.jpg',
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Shivam Dongre',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal),
                      ),
                      Text(
                        'SGSITS indore',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.normal),
                      )
                    ],
                  )
                ],
              ),
    Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'gscs20ME11@sgsitsindore.in',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    '+918717884877',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Text(
                    'Vallabh Nagar Indore.452001',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Login_Page(),
                    ),
                  );
                },
                child: Text('Go'),
              ),
            ],
          ),
        ),
    );
  }
}
