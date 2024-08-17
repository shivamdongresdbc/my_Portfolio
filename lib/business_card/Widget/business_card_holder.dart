
import 'package:flutter/material.dart';
import 'package:myportfolio/business_card/Widget/personal_card.dart';

List<BusinessCardHolder> businessCardHolderList = [
  BusinessCardHolder(
    name: 'Saral Jain',
    position: 'CEO ',
    company: 'Rashail Tech Lebs Pvt',
    icon: Icons.supervised_user_circle_sharp,
    page: Personal_Card(
      name: 'Saral jain',
      position: 'CEO',
      company: 'Rashail tech',
      contact: '85161616511',
      email: 'saraljain@gmail.com',
      location: '2nd flor, malwa tower, near bhawarkua,indore.',
      image: 'saral_jain.png',
      twitter: 'https://twitter.com/SaralJain_',
      instagram: 'https://www.instagram.com/saraljain_/',
      linkdin: 'https://www.linkedin.com/in/saral-jain-397948146/',
    ),
  ),
  BusinessCardHolder(
    name: 'Shivam Dongre',
    position: 'CEO',
    company: 'pata-nai.pvt.lmt',
    icon: Icons.person_add_alt_1_sharp,
    page: Personal_Card(
      name: 'Shivam Dongre',
      position: 'CEO',
      company: 'pata-nai.pvt.lmt',
      contact: '8717884877',
      email: 'shivamdongre42@gmail.com',
      location: '2nd flor, malwa tower, near bhawarkua,indore.',
      image: 'shivam_dongre.jpg',
      twitter: 'https://mobile.twitter.com/shivamdongre42',
      instagram: 'https://www.instagram.com/shivamdongre_/',
      linkdin: 'https://in.linkedin.com/in/shivam-dongre-688404179',
    ),
  ),
  BusinessCardHolder(
    name: 'Mark zackerburg',
    position: 'CEO',
    company: 'Facebook',
    icon: Icons.mark_unread_chat_alt_sharp,
    page: Personal_Card(
      name: 'Mark zackerburg',
      position: 'CEO',
      company: 'Facebook ',
      contact: '851616511',
      email: 'Markzackerburg@gmail.com',
      location: '2nd flor, malwa tower, near bhawarkua,indore.',
      image: 'mark_zuckerburg.jpg',
      twitter: 'https://twitter.com/finkd?lang=en',
      instagram: 'https://www.instagram.com/zuck/',
      linkdin: 'https://www.linkedin.com/in/mark-zuckerberg-618bba58',
    ),
  ),
  BusinessCardHolder(
    name: 'Mr. Barat Bhate',
    position: 'CEO',
    company: 'Consulted.Pvt.Lmt',
    icon: Icons.contact_mail_sharp,
    page: Personal_Card(
      name: 'Barat Bhate',
      position: 'CEO',
      company: 'Consulted.Pvt.Lmt',
      contact: '8516161611',
      email: 'bharatbhate@gmail.com',
      location: '2nd flor, malwa tower, near bhawarkua,indore.',
      image: 'bharat_bhate.jpeg',
      twitter: 'https://twitter.com/consultadd?lang=en',
      instagram: 'https://www.instagram.com/bharatb/',
      linkdin:
          'https://in.linkedin.com/company/consultadd-inc?original_referer=https%3A%2F%2Fwww.google.com%2F',
    ),
  ),
  BusinessCardHolder(
    name: 'Tim cock',
    position: 'CEO,',
    company: 'Apple.Pvt.lmt',
    icon: Icons.apple_sharp,
    page: Personal_Card(
      name: 'Tim cock',
      position: 'CEO',
      company: 'Apple.Pvt.lmt',
      contact: '85161616511',
      email: 'timcook22@gmail.com',
      location: '2nd flor, malwa tower, near bhawarkua,indore.',
      image: 'tim_cook.jpg',
      twitter:
          'https://twitter.com/tim_cook?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
      instagram: 'https://www.instagram.com/stevejobsbestfriendtimcook/?hl=en',
      linkdin:
          'https://www.linkedin.com/pulse/profiles-leadership-tim-cook-stephen-deangelis',
    ),
  ),
  BusinessCardHolder(
    name: 'Mr. Black beard',
    position: 'Captain',
    company: 'Queens Annys Revenge',
    icon: Icons.directions_boat_filled_sharp,
    page: Personal_Card(
      name: 'Black beard',
      position: 'Captain',
      company: 'Queens Annys Revenge',
      contact: '85161616511',
      email: 'blackbeard22@gmail.com',
      location: '2nd flor, malwa tower, near bhawarkua,indore.',
      image: 'black_beard.jpg',
      twitter:
          'https://twitter.com/BillGates?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor',
      instagram: 'https://www.instagram.com/thisisbillgates/',
      linkdin: 'https://www.linkedin.com/in/williamhgates',
    ),
  ),
];

class BusinessCardHolder extends StatelessWidget {
  BusinessCardHolder({
    super.key,
    required this.name,
    required this.position,
    required this.company,
    required this.icon,
    required this.page,
  });
  final String name;
  final String position;
  final String company;
  final IconData icon;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(4),
    child:
      ListTile(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      leading: CircleAvatar(
        radius: 24,
        backgroundColor: Colors.yellowAccent,
        child: Icon(Icons.people_alt_rounded, size: 40),
      ),
      title: Text(
        '$name',
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.normal),
      ),
      subtitle: Text(
        '$position,$company',
        style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.italic),
      ),
      trailing:
      IconButton(
        onPressed: () {
        },
        icon: Icon(Icons.delete),
      ),),
    );

  }
}
