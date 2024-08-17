import 'package:flutter/material.dart';
import 'package:myportfolio/business_card/second_page.dart';

class Login_Page extends StatelessWidget {
  Login_Page({Key? key}) : super(key: key);

  TextEditingController _loginfield = TextEditingController();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('login_page'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Icon(
                Icons.android_sharp,
                size: 255,
                color: Colors.indigo,
              ),
              TextField(
                controller: _loginfield,
                decoration: const InputDecoration(
                    icon: Icon(Icons.email),
                    suffix: Icon(Icons.email),
                    hintText: 'Email'),
                style: const TextStyle(
                  fontSize: 26,
                ),
                textAlign: TextAlign.center,
              ),
              TextField(
                controller: _password,
                decoration: const InputDecoration(
                    icon: Icon(Icons.password),
                    suffix: Icon(Icons.password),
                    hintText: 'password'),
                style: const TextStyle(
                  fontSize: 26,
                ),
                textAlign: TextAlign.center,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => second_page(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.white30),
                      child: Text('Login',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                            color: Colors.indigo,
                          ))),
                  Text('Forget password ?',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontStyle: FontStyle.normal,
                        color: Colors.indigo,
                      )),
                ],
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white30,
                ),
                child: Text(
                  'Create New Account',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.indigo),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
