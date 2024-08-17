import 'package:flutter/material.dart';

void main() {
  runApp(const MyWeatherApp());
}

class MyWeatherApp extends StatelessWidget {
  const MyWeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'weatherapp',
      theme: ThemeData(primaryColor: Colors.blueGrey),
      home: const HomePage(),
    ); // MaterialApp
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: const Text('WeatherApp'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                elevation: 2,
                color: Colors.transparent,
                child: Row(
                  children: [
                    Icon(Icons.water_drop_sharp),
                    Text('Abbey Wood'),
                  ],
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '18`',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 80),
              ),
              Icon(Icons.cloud, size: 80),
            ],
          ),
          Text(
            'Overcast Clouds',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          Text(
            'Update: wed,Aug 18,07:07 PM',
            textAlign: TextAlign.end,
            style: TextStyle(fontWeight: FontWeight.w500),
          ),
          Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Card(
                      child: Row(
                    children: [
                      Card(
                        child: Row(
                          children: [
                            Icon(Icons.water_drop_sharp),
                            Column(
                              children: [
                                Text('Humidity'),
                                Text('72%'),
                              ],
                            )
                          ],
                        ),
                      ),
                      Card(
                        child: Row(
                          children: [
                            Icon(Icons.cloud),
                            Column(
                              children: [
                                Text('Clouds'),
                                Text('90%'),
                              ],
                            )
                          ],
                        ),
                      ),
                      Card(
                        child: Row(
                          children: [
                            Icon(Icons.remove_red_eye),
                            Column(
                              children: [
                                Text('Visbility'),
                                Text('10.00 km'),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ))
                ]),
          ),
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Card(
                  child: Row(children: [
                    Row(
                      children: [
                        Icon(Icons.wind_power_sharp),
                        Column(
                          children: [
                            Text(
                              'Wind',
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '11.16km/h',
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.send),
                        Text(
                          'NE',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ]),
                ),
                Card(
                  child: Row(
                    children: [
                      Icon(Icons.electric_meter_sharp),
                      Column(
                        children: [
                          Text(
                            'Pressure',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '1024hPa',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Text(
            'Load more...',textAlign: TextAlign.left ,
            style: TextStyle(
                fontWeight: FontWeight.w900, fontStyle: FontStyle.italic),
          ),
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.cloud),
                    Column(
                      children: [
                        Text('Birmingham',style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('11.16 Broken Clouds',style: TextStyle(fontWeight: FontWeight.w900),),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Icon(Icons.water_drop_sharp),
                        Text('93%',style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.cloud),
                        Text('75%',style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.cloud),
                    Column(
                      children: [
                        Text('London',style: TextStyle(fontWeight: FontWeight.bold),),
                        Text('17` Broken Clouds',style: TextStyle(fontWeight: FontWeight.w900),),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Icon(Icons.water_drop_sharp),
                        Text('72%',style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.cloud),
                        Text('75%',style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
