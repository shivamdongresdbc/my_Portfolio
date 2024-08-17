import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Personal_Card extends StatelessWidget {
  Personal_Card({
    super.key,
    required this.name,
    required this.position,
    required this.company,
    required this.contact,
    required this.email,
    required this.location,
    required this.image,
    required this.twitter,
    required this.linkdin,
    required this.instagram,
  });
  final String name;
  final String position;
  final String company;
  final String contact;
  final String email;
  final String location;
  final String image;
  final String twitter;
  final String linkdin;
  final String instagram;

  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontStyle: FontStyle.normal),
        ),
      ),
      body: Column(
        children: [
          Card(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '$name',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                FaIcon(FontAwesomeIcons.suitcase),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/image/$image',
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Text(
                  '$name,$position',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        _launchUrl(instagram);
                      },
                      icon: Icon(FontAwesomeIcons.instagramSquare),
                      iconSize: 40,
                    ),
                    IconButton(
                      onPressed: () {
                        _launchUrl(twitter);
                      },
                      icon: Icon(FontAwesomeIcons.twitterSquare),
                      iconSize: 40,
                    ),
                    IconButton(
                      onPressed: () {
                        _launchUrl(linkdin);
                      },
                      icon: Icon(FontAwesomeIcons.linkedin),
                      iconSize: 40,
                    ),
                  ],
                ),
                Row(children: [
                  Card(
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.add_call),
                        ),
                        Text(
                          '$contact',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                  )
                ]),
                Row(
                  children: [
                    Card(
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.message)),
                          Text(
                            '$email',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Card(
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.message)),
                          Text(
                            '$location',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
