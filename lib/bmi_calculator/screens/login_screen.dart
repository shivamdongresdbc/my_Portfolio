import 'package:flutter/material.dart';
import 'package:myportfolio/bmi_calculator/screens/bmi_calculator.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController _phonenumber = TextEditingController();
  TextEditingController _password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loginpage'),
      ),
      body:SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.add_call,
                size: 255,
              ),
              TextField(
                controller: _phonenumber,
                decoration: const InputDecoration(
                  hintText: 'Phone Number',
                ),
                style: const TextStyle(
                  fontSize: 36,
                ),
                keyboardType: TextInputType.emailAddress
              ),
              TextField(
                controller: _password,
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
                style: const TextStyle(
                  fontSize: 36,
                ),
                keyboardType: const TextInputType.numberWithOptions(),
              ),
              ElevatedButton(
                onPressed: () {
                  print(_phonenumber.text);
                  print(_password.text);
                },
                child: const Text(
                  'LogIn',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
              ),
              Text(
                'Forgot password? No yawa. Tap me ',
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BMICalculator(),
                    ),
                  );
                },
                child: const Text('No Account?SingUp'),
                style: ElevatedButton.styleFrom(primary: Colors.amberAccent),
              )
            ],
          ),
        ),
      ),),
    );
  }
}
