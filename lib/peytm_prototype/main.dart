import 'package:flutter/material.dart';

void main() {
  runApp(const PeytmPrototype());
}

class PeytmPrototype extends StatelessWidget {
  const PeytmPrototype({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Paytm',
      theme: ThemeData.light(),
      home: HomePage(),
    );
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
      appBar: AppBar(
        title: const Text('Paytm_prototype'),
        backgroundColor: Colors.indigoAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(padding: EdgeInsets.all(10),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.indigo,
                  ),
                  Text(
                    'Hello,',
                    style: TextStyle(
                        fontSize: 24,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'janth,',
                    style: TextStyle(
                        fontSize: 24,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w300),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.more_vert),
                ],
              )
            ],
          ),),
          Padding(padding: EdgeInsets.all(10),
          child:Text(
            'My wallet',
            style: TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold),
          ),),
      Center(
          child:Card(
                  elevation: 15,
                  margin: EdgeInsets.all(10),
                  child: Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.indigoAccent,
                                Colors.transparent,
                              ]),
                          border: Border.all(color: Colors.black, width: 5),
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        children: [
                          Text(
                            'Total Balance',
                            style: TextStyle(
                                fontSize: 24,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '6,354 MLR',
                            style: TextStyle(
                                fontSize: 50,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Eq: \$10,000',
                            style: TextStyle(
                                fontSize: 24,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.bold),
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text(
                                '+ Top up',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      )))),
        Padding(padding: EdgeInsets.all(10),
            child:Text(
            'Operations',
            style: TextStyle(
                fontSize: 26,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold),
          ),),
        Padding(padding: EdgeInsets.all(10),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Column(
                children: [
                  Card(
                    elevation: 8,
                    child: Icon(
                      Icons.transfer_within_a_station_sharp,
                      size: 50,
                    ),
                  ),
                  Text('Transfer',style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),),
                ],
              ),
              Column(
                children: [
                  Card(
                    elevation: 8,
                    child: Icon(
                      Icons.add_call,
                      size: 50,
                    ),
                  ),
                  Text('Airtime',style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),),
                ],
              ),
              Column(
                children: [
                  Card(
                    elevation: 8,
                    child: Icon(
                      Icons.payment_sharp,
                      size: 50,
                    ),
                  ),
                  Text('Transfer',style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),),
                ],
              ),
              Column(
                children: [
                  Card(
                    elevation: 8,
                    child: Icon(
                      Icons.qr_code_2_sharp,
                      size: 50,
                    ),
                  ),
                  Text('Qr Pay',style: TextStyle(
                  fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold),),
                ],
              ),
            ],
          ),),
          Padding(padding: EdgeInsets.all(10),
            child:Text(
            'Transactions',
            style: TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.bold),
          ),),
        Padding(padding: EdgeInsets.all(10),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.hd)),
                  Column(
                    children: [
                      Text(
                        'Flight Ticket',
                        style: TextStyle(
                            fontSize: 24,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '23 Feb 2020',
                        style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Card(
                    child: Text(
                      '-20 MLR',
                      style: TextStyle(
                          fontSize: 24,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),),
        ]),
      ),
    );
  }
}
