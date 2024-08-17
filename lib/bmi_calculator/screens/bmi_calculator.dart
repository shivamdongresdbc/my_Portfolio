import 'package:flutter/material.dart';

class BMICalculator extends StatefulWidget {
  const BMICalculator({Key? key}) : super(key: key);

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  TextEditingController _heightCont = TextEditingController();
  TextEditingController _weightCont = TextEditingController();

  double bmi = 0;
  var _message;
  void bmiCalculate(double h, double w) {
    double height = h / 100;
    double weight = w;
    bmi = weight / (height * height);
    if (bmi! < 18.5) {
      _message = "You are underweight";
    } else if (bmi ! < 25) {
      _message = 'You body is fine';
    } else if (bmi ! < 30) {
      _message = 'You are overweight';
    } else {
      _message = 'You are obese';
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: const [
              Expanded(
                child: Card(
                  child: Icon(
                    Icons.female,
                    size: 120,
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Icon(
                    Icons.male,
                    size: 120,
                  ),
                ),
              ),
            ],
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Your Height in CM',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                TextField(
                  controller: _heightCont,
                  decoration: const InputDecoration(
                    hintText: 'Height (Cm)',
                    suffix: Text('Cm'),
                  ),
                  style: const TextStyle(
                    fontSize: 48,
                  ),
                  textAlign: TextAlign.center,
                  keyboardType: const TextInputType.numberWithOptions(),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Your Weight in KG',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                TextField(
                  controller: _weightCont,
                  decoration: const InputDecoration(
                    hintText: 'Weight (Kg)',
                    suffix: Text('Kg'),
                  ),
                  style: const TextStyle(
                    fontSize: 48,
                  ),
                  textAlign: TextAlign.center,
                  keyboardType: const TextInputType.numberWithOptions(),
                ),
              ],
            ),
          ),
          const Center(
            child: Text(
              'Your BMI is',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
          ),
          Center(
            child: Text(
              '${bmi.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 80,
              ),
            ),
          ),
          Center(
            child: Text('$_message',style: TextStyle(fontSize: 35),),
          ),
          ElevatedButton(
            onPressed: () {
              print(_heightCont.text);
              print(_weightCont.text);
              bmiCalculate(
                double.parse(_heightCont.text),
                double.parse(_weightCont.text),
              );
            },
            child: const Text(
              'Calculate',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}